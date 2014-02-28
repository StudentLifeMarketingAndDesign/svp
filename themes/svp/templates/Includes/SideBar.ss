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
<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FUISVP&amp;width=550px&amp;height=558&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=242901859120617" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:558px;" allowTransparency="true"></iframe>

<h2>Stay Connected!</h2><br />
<a href="http://www.facebook.com/pages/Student-Video-Productions/70726581690?ref=ts"><img src="$ThemeDir/images/social-media/Facebook.png" border="0" alt="facebook"/></a> 
<a href="http://vimeo.com/user5440997"><img src="$ThemeDir/images/social-media/Vimeo.png" border="0" alt="vimeo"/></a>
<a href="http://www.youtube.com/user/UISVP"><img src="$ThemeDir/images/social-media/Youtube.png" border="0" alt="youtube"/></a>
<a href="http://twitter.com/UiowaSVP"><img src="$ThemeDir/images/social-media/Twitter.png" border="0" alt="twitter"/></a> 
</div>