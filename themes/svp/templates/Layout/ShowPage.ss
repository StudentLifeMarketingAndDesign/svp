<% if Children %>
<div id="video-container">
	<div id="video_center">
		<% if LatestEpisode %>
		<% control LatestEpisode %>
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
		<% end_control %>
		<% end_if %>
	</div>
</div>
<% end_if %>

<h1 id="page-image">
$Title
</h1>

<!-- take from lecture, function currentEpisode -->
<!-- also function nextEpisodes -->
 <div id="content-wrapper2">
 <div id="content-wrapper">
  <div id="maintext">
  <div class="innertube">
    
  <!--<h2>
  	<% control Children %>
	<% if First %>
		Current Episode: $Title</h2>
		<% if Ep %>Episode #$Ep<% end_if %>, Airdate: $Airdate
	<% end_if %>
	<% end_control %>
  </h2>-->
  <br />
  
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
	<% if LatestEpisode %>
	<h2>Latest Episode</h2>
	<% control LatestEpisode %>
      <div>
		  <% include VideoBox %>
      </div>
      <% end_control %>
	<% end_if %>
	<% if RecentEpisodes %>
	<h2>Recent Episodes</h2>
      <% control RecentEpisodes %>
      <div>
		  <% include VideoBox %>
      </div>
      <% end_control %>
    <div class="clear"></div>
	<% end_if %>
    </div>
  </div>
</div>
<div class="clear"></div>
<div id="all_episodes">
<% if Episodes %>
<h2>All Episodes</h2>
<% control Episodes %>
<div class="one_episode">
  <div class="one_thumb" stlye="">
    <% if ThumbURL %>
	  <a href="$Link"><img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="230" alt="$Title" /></a><br />
	<% else %>
	  <div class="" style="background: #333; border: 1px solid #FFF; height: 129px; padding-bottom: 10px; width: 228px;">
	    <div class="" style="font-size: 12px; margin: 60px 0px 0px 0px; text-align: center;">
		  <a href="$Link">$Title</a>
		</div>
	  </div>
	<% end_if %>
  </div>
  <span class="title">$Title</span><br />
  <span class="airdate"><% if Airdate %>$Airdate.format(l), $Airdate.format(F j), $Airdate.format(Y)<% end_if %></span><br />
  <span class="season"><% if Season %>Season: $Season - <% end_if %></span>
  <span class="episodenumber"><% if Ep %>Episode: $Ep<% end_if %></span><br />
  <!--<span class="description">$Content.Summary(6)</span>-->
</div>
<% end_control %>
<% else %>
<i>No episodes available.</i>
<% end_if %>
</div>


