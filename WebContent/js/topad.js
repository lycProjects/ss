var isFirst = true;    
function TopAd() {
	var strTopAd = "";
	if (true) {
		strTopAd = "<div id=adimage style='max-width:1050px !important;margin:0 auto !important'\>"
				+ "<div id=adBig style='max-width:100% !important;margin:0 auto !important'><a href='index.html' "
				+ "target=_blank><img title=YUANXIN width='1050px'"
				+ "src='images/15165.png'" + "border=0></A></div>";
		strTopAd += "</div></div>";
	}
	return strTopAd;
}
document.write(TopAd());
$(function() {
	setTimeout("showImage();", 2500);
});
function showImage() {
	$("#adBig").slideUp(2000, function() {
	});
}
