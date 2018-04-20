<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta content="no-cache" http-equiv="pragma">
<meta content="0" http-equiv="expires">
<meta content="telephone=no, address=no" name="format-detection">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<title>关于一卡通</title>
<script src="../js/common/flex.js?v=1.0"></script>
<link href="../css/common/public.css?v=1.0" rel="stylesheet">
<link href="../css/common/style.css?v=1.0" rel="stylesheet">
<script src="../js/common/jquery.js?v=1.0"></script>
<script src="../js/card/jquery_qrCode.js"></script>

</head>
<body>
<section>
	<div class="ercode1">
		<p class="code_name">分享二维码给好友</p>
		<div id="qrcode"></div>
	</div>
</section>
<script>
//二维码
// if( $('#qrcode').length > 0 ) {
//     $('#qrcode').qrcode({
//         render : "table",
//         width:"3.12rem",
//         height:"3.12rem",
//         foreground : "#000",
//         background : "#FFF",
//         text : '${qrCode}'
//     });
// }
//二维码
if( $('#qrcode').length > 0 ) {
    $('#qrcode').qrcode( "${qrCode}");
}
</script>
</body>
</html>