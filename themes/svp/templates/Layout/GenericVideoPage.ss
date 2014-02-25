<div id="video-container">
	<div id="video_center">
		<% if VimeoURL %>
			<iframe src="http://player.vimeo.com/video/$VimeoURL" width="720" height="405" frameborder="0"></iframe>
		<% else %>
			<% if YoutubeURL %>
				<!--<iframe title="YouTube video player" class="youtube-player" type="text/html" width="640" height="390" src="http://www.youtube.com/embed/$YoutubeURL" frameborder="0" allowFullScreen></iframe>-->
				<div id="youtube">
				<object width="640" height="385"><param name="wmode" value="transparent"><param name="movie" value="http://www.youtube.com/v/$YoutubeURL?fs=1&hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed wmode="transparent" src="http://www.youtube.com/v/$YoutubeURL?fs=1&hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="640" height="385"></embed></object>
				</div>
			<% else %>
				<br /><br /><br /><br />
				Video Not Currently Available
				<br /><br /><br /><br />
			<% end_if %>
		<% end_if %>
	</div>
</div>

<h1 id="page-image">
$Title
<!-- Parent.title -->
</h1>

<!-- take from lecture, function currentEpisode -->
<!-- also function nextEpisodes -->
 <div id="content-wrapper2">
 <div id="content-wrapper">
  <div id="maintext">
  <div class="innertube">
  
  $Content
  
  <br />
  <br />
  <!-- AddThis Button BEGIN -->
  <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
  <a class="addthis_button_preferred_1"></a>
  <a class="addthis_button_preferred_2"></a>
  <a class="addthis_button_preferred_3"></a>
  <a class="addthis_button_preferred_4"></a>
  <a class="addthis_button_compact"></a>
  </div>
  <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=xa-4d4c844259a011e7"></script>
  <!-- AddThis Button END -->
  
  
  </div>
</div></div>
  <div id="episode-sidebar">
    <div id="recentepisodes">
	
    </div>
  </div>
</div>