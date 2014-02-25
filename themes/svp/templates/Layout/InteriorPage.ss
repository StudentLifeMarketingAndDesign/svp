<div class="container">
	<h2>$Title</h2>
	<div id="content-wrapper2">
		<div id="content-wrapper">
			<div id="maintext2">
				<% if YoutubeURL %>
				<div style="border: 0px solid; float: right; width: 560px;">
					<object width="560" height="349"><param name="wmode" value="transparent"><param name="movie" value="http://www.youtube.com/v/$YoutubeURL?fs=1&hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/$YoutubeURL?fs=1&hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="349"></embed></object>
				</div>
				<% end_if %>
				$Content
			</div>
		</div>
		<!--sidebar-->
		<% include SideBar %>
	</div>
</div> <!-- end container -->