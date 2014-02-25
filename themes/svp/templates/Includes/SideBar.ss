<div id="page-sidebar">
<div id="sidebar_links">
<div class="call_goldline"></div>
<% control Page(Members) %>
    <!--<h2>$Title</h2>-->
	<ul>
	<% control Children %>
	  <li><h2>$Title</h2><ul class="in">
	    <% control Children %>
		
			<% if LinkOrCurrent = current %>
				<li><span class="current">$Title</span></li>
			<% else %>
				<li><a href="$Link">$Title</a></li>
			<% end_if %>
	    
	    <% end_control %>
		</ul>
	  </li>
	<% end_control %>
	</ul>
<% end_control %>
</div>

<div class="call_goldline"></div>
<h2>From The Blog</h2>
<% control RssBlogPosts(1,http://blog.studentlife.uiowa.edu/svp/feed/) %>
<div class="blog_title"><strong><a href="$Link">$Title</a></strong></div>
<div class="blog_date">$Date.format(m)/$Date.format(d)/$Date.format(Y)</div>
<div class="blog_text">$Description <a href="$Link">Read more</a></div>
<% end_control %>
<br /><br />

<h2>Stay Connected!</h2><br />
<a href="http://www.facebook.com/pages/Student-Video-Productions/70726581690?ref=ts"><img src="$ThemeDir/images/social-media/Facebook.png" border="0" alt="facebook"/></a> 
<a href="http://vimeo.com/user5440997"><img src="$ThemeDir/images/social-media/Vimeo.png" border="0" alt="vimeo"/></a>
<a href="http://www.youtube.com/user/UISVP"><img src="$ThemeDir/images/social-media/Youtube.png" border="0" alt="youtube"/></a>
<a href="http://twitter.com/UiowaSVP"><img src="$ThemeDir/images/social-media/Twitter.png" border="0" alt="twitter"/></a> 
</div>