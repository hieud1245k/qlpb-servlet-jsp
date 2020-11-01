<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
	<head>
		<meta charset="utf-8">
		<style type="text/css">
			body {
				background-color:DarkSlateBlue;
				color:DarkGray;
			}
			#xd {
				display:inline;
			}
			#x1 {
				margin-left: 80px;
			}
			#clockDiv {
				float: right;
				margin-right: 60px;
			}
		</style>
		<script language='javascript'>
			var myVar=setInterval(function(){Clock()},1000);
			function Clock() {
				a=new Date();
				w=Array("Chủ Nhật","Thứ hai","Thứ ba","Thứ tư","Thứ năm","Thứ sáu","Thứ bảy");
				var a=w[a.getDay()],
				w=new Date,
				d=w.getDate();
				m=w.getMonth()+1;
				y=w.getFullYear();
				h=w.getHours();
				mi=w.getMinutes();
				se=w.getSeconds();
				if(10>d){d="0"+d}
				if(10>m){m="0"+m}
				if(10>h){h="0"+h}
				if(10>mi){mi="0"+mi}
				if(10>se){se="0"+se}
				document.getElementById("clockDiv").innerHTML="Hôm nay: "+a+", "+d+" / "+m+" / "+y+" - "+h+":"+mi+":"+se+"";
			}
		</script>
	</head>
	<body>
	<div id=xd>
		<span id=x1>2019 Copyright TTT. Web Design by HIEU NGUYEN.,Ltd</span>
		<span id="clockDiv"></span>
	</div>
	</body>
</html>	