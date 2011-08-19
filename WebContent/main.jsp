<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script language="javascript" src="./js/elbeanio-jquery.tagsphere-c62e76bdd7be/ext/jquery.mousewheel.min.js"></script>
<script language="javascript" src="./js/elbeanio-jquery.tagsphere-c62e76bdd7be/jquery.tagsphere.js"></script>
<script language="javascript" src="./js/elbeanio-jquery.tagsphere-c62e76bdd7be/jquery.tagsphere.min.js"></script>
<script type="text/javascript" src="./js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="./js/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<link rel="stylesheet" type="text/css" href="./js/jquery.fancybox-1.3.4/style.css" type="text/css" media="screen" />

<script type="text/javascript" src="./js/jquery.mb.maskedGallery.1.9.2/inc/mbMaskedGallery.js"></script>
<script type="text/javascript" src="./js/jquery.mb.maskedGallery.1.9.2/inc/jquery.metadata.js"></script>
<script language="javascript" type="text/javascript">
    $(function(){
      $("#g1").mbMaskGallery({
           type:"normal",
           galleryMask:"./js/jquery.mb.maskedGallery.1.9.2/mask/photo.png",
           galleryUrl:"",
           galleryColor:"black",
           galleryLoader:"./js/jquery.mb.maskedGallery.1.9.2/loader/loader_black.gif",
           loaderOpacity:.3,
           loader:true,
           fadeTime: 500,
           slideTimer: 1000,
           changeOnClick:false,
       });
    });
</script>

<script language="javascript" type="text/javascript">
    $(function(){
        $('#tags').tagcloud();
    });
</script>

<script type="text/javascript">
		$(document).ready(function() {
			$("a#example5").click(function() {
				$.fancybox({
						'padding'		: 0,
						'autoScale'		: false,
						'transitionIn'	: 'none',
						'transitionOut'	: 'none',
						'title'			: this.title,
						'width'		: 680,
						'height'		: 495,
						'href'			: this.href.replace(new RegExp("watch\\?v=", "i"), 'v/'),
						'type'			: 'swf',
						'swf'			: {
						   	 'wmode'		: 'transparent',
							'allowfullscreen'	: 'true'
						}
					});
				return false;
			});
		});
</script>





</head>
<body>

<!-- testing TESTING -->
<body>
	<form>
		<div id="tags" style="width:500px;height:500px;">
			<ul>
				<s:iterator value="tags">
				 	<li>
				 	<s:url var="fancyUrl" action="fancy" namespace="/struts">
				 		<s:param name="clusterLoc">
				 			<s:property value="clusterLoc"/>
				 		</s:param>
				 	</s:url>
				 	<a href="javascript:displayFancyBoxJS('${fancyUrl}')" rel="10"><s:property value="info"/></a></li>
				 </s:iterator>
			</ul>
		</div>
		
		
		<a title="HERE IS THE TITLE ^o^v" id="example5" href="http://www.youtube.com/watch?v=071KqJu7WVo&feature=player_embedded#at=41">
			<img src="http://farm3.static.flickr.com/2502/5767667841_d23dc43103_t.jpg" alt="example5" id="5767667841">
		</a>
		<img src="http://iantearle.com/expanse/uploads/1309279305_iskip_iskip.png" title="iSkip" alt="iSkip" id="mousemove"/>
		
		<div id="g1" class="galleryCont">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/3.jpg" >
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/2.jpg" class="{url:'test.html'}">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/5.jpg"  class="{script:'alert(\'PIPPO\')'}">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/4.jpg">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/6.jpg">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/7.jpg">
		    <img src="./js/jquery.mb.maskedGallery.1.9.2/images/8.jpg">
 		</div>
	</form>
</body>
</html>