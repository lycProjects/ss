package com.Sansu.util;

import java.io.StringReader;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.search.highlight.SimpleSpanFragmenter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import com.Sansu.model.News;

/**
 * Lucene 为mysql数据库表 简历完整索引
 *
 */
public class LuceneUtil {
	/*
	 * Connection conn = null; // lucene 连接mysql数据库 private final String URL =
	 * "jdbc:mysql://localhost:3306/db_news";
	 * 
	 * public LuceneUtil() { try { Class.forName("com.mysql.jdbc.Driver"); conn
	 * = DriverManager.getConnection(URL, "root", "root"); } catch
	 * (ClassNotFoundException e) { e.printStackTrace(); } catch (SQLException
	 * e) { e.printStackTrace(); } }
	 * 
	 * public Connection getConnection() { return this.conn; }// 获取数据库连接
	 * 
	 * public void close() { try { this.conn.close(); } catch (SQLException e) {
	 * e.printStackTrace(); } }// 关闭数据库连接
	 */
	public static List<News> luseach(Connection conn, String s_parameter)
			throws Exception {
		IndexWriter writer = null;
		
		String sql = "select * from t_news";
		// 把lucene的索引文件保存到机器的磁盘
		Directory dirWrite = FSDirectory.open(Paths.get("/usr/myjavaluceneIndex"));
		/* 不使用默认分词器(分词英文)
		 * lucene分析器 使用lucene默认的暂停词(分析器) Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_4_10_4); // 初始化写入配置 IndexWriterConfig
		 * iwc = new IndexWriterConfig(Version.LUCENE_4_10_4,analyzer);
		 */
		SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();//实例中文分词器
		IndexWriterConfig iwc = new IndexWriterConfig(analyzer);
		iwc.setOpenMode(OpenMode.CREATE);
		// 创建模式 OpenMode.CREATE_OR_APPEND 添加模式
		// 如果是CREATE ,每次都会重新创建这个索引，清空以前的数据，如果是append 每次都会追加，之前的不删除
		// 在日常的需求索引添加中，一般都是 APPEND 持续添加模式
		writer = new IndexWriter(dirWrite, iwc);
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	//	System.out.println("rs:"+rs.getString("content"));
		while (rs.next()) {
			Document doc = new Document();
			// 该表所需字段建立索引newsId title content author
			doc.add(new TextField("newsId", rs.getString("newsId"),Field.Store.YES));
			
			System.out.println("title:"+rs.getString("title"));
			doc.add(new TextField("title", rs.getString("title"),Field.Store.YES));
			System.out.println("test1"+rs.getString("content"));
			doc.add(new TextField("content", StringUtil.Html2Text(rs.getString("content")), Field.Store.YES));
			doc.add(new TextField("author", rs.getString("author"),Field.Store.YES));
			doc.add(new TextField("publishDate", rs.getString("publishDate"),Field.Store.YES));
			writer.addDocument(doc);
			/* System.out.println(rs.getString("newsId")); */
		}
		rs.close(); // 关闭记录集
		conn.close(); // 关闭数据库连接
		// writer.optimize(); //索引优化
		writer.close(); // 关闭读写器

		// 索引查询,通过如下2个字段进行 or 查询
		Directory dir = FSDirectory.open(Paths.get("/usr/myjavaluceneIndex"));
		IndexReader reader = DirectoryReader.open(dir);
		IndexSearcher searcher = new IndexSearcher(reader);
		SmartChineseAnalyzer analyzer1 = new SmartChineseAnalyzer();
		QueryParser parser = new QueryParser("content", analyzer1);
		/*
		 * String q = "安全"; Query query=parser.parse(q);
		 */
		String[] queries = { s_parameter + "~", s_parameter + "~" };
		String[] fields = { "title", "content" };
		BooleanClause.Occur[] clauses = { BooleanClause.Occur.SHOULD,
				BooleanClause.Occur.SHOULD };
		Query query = MultiFieldQueryParser.parse(queries, fields, clauses,
				analyzer);
		
		//long start = System.currentTimeMillis();
		TopDocs hits = searcher.search(query, 100);
		//long end = System.currentTimeMillis();
		/*System.out.println("匹配  " + s_parameter + " ，总共花费" + (end - start)
				+ "毫秒" + "查询到" + hits.totalHits + "个记录");
		*/
		QueryScorer scorer = new QueryScorer(query);
		Fragmenter fragmenter = new SimpleSpanFragmenter(scorer);
		SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter(
				"<font color='#FF6700'>", "</font>");
		Highlighter highlighter = new Highlighter(simpleHTMLFormatter, scorer);
		highlighter.setTextFragmenter(fragmenter);
		List<News> newsList = new ArrayList<News>();
		for (ScoreDoc scoreDoc : hits.scoreDocs) {
			News news = new News();
			Document doc = searcher.doc(scoreDoc.doc);
			/*System.out.println(doc.get("newsId"));*/
			// System.out.println(doc.get("title"));
			// System.out.println(doc.get("content"));
			news.setNewsId(Integer.parseInt(doc.get("newsId")));// 将索引信息存到对象中
			String title = doc.get("title");
			/**
			 * 符合条件的高亮
			 */
			if (title != null) {
				TokenStream tokenStream = analyzer1.tokenStream("title",
						new StringReader(title));
				String highLightText = highlighter.getBestFragment(tokenStream,
						title);
				if (highLightText == null) {
					/*System.out.println(title);*/
					news.setTitle(title);
				} else {
					news.setTitle(highLightText);
					/*System.out.println(highLightText);*/
				}
				// System.out.println(title);
			}
			String content = doc.get("content");
			if (content != null) {
				TokenStream tokenStream = analyzer.tokenStream("content",
						new StringReader(content));
				String highLightText = highlighter.getBestFragment(tokenStream,
						content);
				if (highLightText == null) {
					/*System.out.println(content);*/
					news.setContent(content+"......");
				} else {
					/*System.out.println(highLightText);*/
					news.setContent(highLightText+"......");
				}
			}
			news.setAuthor(doc.get("author"));
			//System.out.println("时间"+doc.get("publishDate").substring(0,doc.get("publishDate").length()-2)); 不截取的话，读取的是：2016-09-11 16:47:55.0
			news.setPublishDate(DateUtil.formatString(doc.get("publishDate").substring(0,doc.get("publishDate").length()-2), "yyyy-MM-dd hh:mm:ss"));
			newsList.add(news);// 返回List
		}
	
		reader.close();
		return newsList;
	}
}