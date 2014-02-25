<div id="video-container">
<div id="video_center">
<div id="coin_center">
<div id='coin-slider'>
	<% control ChildrenOf(home-feature) %>
	<a href="$NewURL" alt="" />
		<% if ImgURL %>
		<img src="$ImgURL" alt="$Title" />
		<% else %>
		<img src="$FeatureImage.FeaturePicture.URL" alt="$Title" />
		<% end_if %>
		
		<!-- <% if Title %><span>$Title</span><% end_if %> -->
		
	</a>
	<% end_control %>
	
</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#coin-slider').coinslider({ delay: 5000 });
	});
</script>
</div></div>


<h1 id="page-image">
Student Video Productions
</h1>


 <div id="content-wrapper2">
 <div id="content-wrapper">
 <div id="maintext2">
    
$Content
<br />
<div id="homeblog">
<h2>From The Blog</h2>
<% control RssBlogPosts(1,http://blog.studentlife.uiowa.edu/svp/feed/) %>
<div class="blog_title"><strong><a href="$Link">$Title</a></strong></div>
<div class="blog_date">$Date.format(m)/$Date.format(d)/$Date.format(Y)</div>
<div class="blog_text">$Description <a href="$Link">Read more</a></div>
<% end_control %>
</div>

</div></div>

<div id="episode-sidebar">
<div id="social_links">
<div id="social_links_inner">
<h2>Featured Episode</h2>
<% control LinkTo %>
  <div>
	  <% if ThumbURL %>
		<div class="episodebox" style="">
		  <a href="$Link">
			<img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" height="169" alt="$Title" />
		  </a>
		</div>
	  <% else %>
		<div class="episodebox">
		  <div class="fix" style="height: 1px;"></div>
		  <div class="episodebox_emptyinner">
			<a href="$Link">
			$Title<br />
			<% if Ep %>
			Episode #$Ep
			<% end_if %>
			</a>
		  </div>
		</div>
	  <% end_if %>
  </div>
  <% end_control %>
  <br /><br /><br />
<h2>Stay Connected!</h2>
<br />
<a href="http://www.facebook.com/pages/Student-Video-Productions/70726581690?ref=ts"><img src="$ThemeDir/images/social-media/Facebook.png" border="0" alt="facebook"/></a> 
<a href="http://vimeo.com/user5440997"><img src="$ThemeDir/images/social-media/Vimeo.png" border="0" alt="vimeo"/></a>
<a href="http://www.youtube.com/user/UISVP"><img src="$ThemeDir/images/social-media/Youtube.png" border="0" alt="youtube"/></a>
<a href="http://twitter.com/UiowaSVP"><img src="$ThemeDir/images/social-media/Twitter.png" border="0" alt="twitter"/></a>
<br /><br />

</div></div>
</div></div>