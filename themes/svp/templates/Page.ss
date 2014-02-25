<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title - Student Video Productions</title>
<% base_tag %>
<script type="text/javascript" src="$ThemeDir/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="$ThemeDir/js/coin-slider.min.js"></script>
<link rel="stylesheet" href="$ThemeDir/css/coin-slider-styles.css" type="text/css" />

<link href="$ThemeDir/css/helper.css" media="screen" rel="stylesheet" type="text/css" />
<link href="$ThemeDir/css/dropdown.linear.columnar.css" media="screen" rel="stylesheet" type="text/css" />
<link href="$ThemeDir/css/default.advanced.css" media="screen" rel="stylesheet" type="text/css" />
<link href="$ThemeDir/css/styles.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="mainwrap">
<div class="fix1"></div>

<div id="header" class="innertube">
<div id="navigation" class="innertube">
<div id="svplogo">
	<a href="http://svp.uiowa.edu"><img src="$ThemeDir/images/svplogo.png" alt="Student Video Productions" border="0" /></a>
</div>
<div id="links">
	<div id="uilogo">
	<a href="http://www.uiowa.edu"><img src="$ThemeDir/images/uilogo2.png" border="0" alt="The University of Iowa" /></a>
	</div>
<br /><br />
<ul id="nav" class="dropdown dropdown-linear dropdown-columnar">
	<% control Menu(1) %>
	<% if Children %>
		<li class="dir">$Title
		<ul>
		<% control Children %>
	  		<li class="dir">$Title
				<ul>
				<% control Children %>
				<li><a href="$Link">$Title</a></li>
				<% end_control %>
				</ul>
			</li>
		<% end_control %>
		</ul>
	<% else %>
		<li><a href="$Link">$Title</a>
	<% end_if %>
	</li>
	<% end_control %>

</ul>

</div></div></div>

<div class="clear"></div>
<div id="main_content">


$Layout

<div id="form" style="width: 300px; margin: 0px auto;">
$Form
</div>
</div>
<div class="clear"><br /></div>
</div>
<div id="footer">
  <div id="footer_shows">
  <h3>Shows</h3>
  <ul>
    <% control ChildrenOf(show) %>
    <li><a href="$Link">$Title</a></li>
    <% end_control %>
  </ul>
  </div>
  <div id="footer_archives">
  <h3>Archives</h3>
  <% control ChildrenOf(archives) %>
    <div><a href="$Link">$Title</a></div>
    <% end_control %>
  </div>
  <div id="footer_logos">
  <img src="$ThemeDir/images/logo_tagline.png" alt="UI SVP" />
  <p><a href="http://www.facebook.com/pages/Student-Video-Productions/70726581690?ref=ts"><img src="$ThemeDir/images/facebook.png" border="0" alt="Facebook" /></a> <a href="http://www.youtube.com/user/UISVP"><img src="$ThemeDir/images/youtube.png" border="0" alt="YouTube" /></a></p>
  </div>
  <div class="clear"></div>
  <div id="contact">
  <% if CurrentMember %><p><a href="$EditURL" id="editpost" title="Edit this page">Edit this page</a></p><% end_if %>
  Office: 260A IMU<br />
  Phone:(319) 335-3280<br />
  Weekly meetings at 8PM<br />
  (Indiana Room at the IMU)<br />
  © The University of Iowa. All rights reserved.
  </div>
</div>


</body>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</html>
