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
<style type="text/css">
#eplist {
  ;
  margin: 0px auto;
}
#eplist ul {
  display: inline-block;
  margin: 0px;
  padding: 0px;
  list-style-type: none;
}
#eplist .episode {
  float: left;
  height: 110px;
  width: 210px;
}
#eplist .episodein {
  border: 1px solid;
  float: left;
  font-size: 12px;
  height: 100px;
  margin: 5px;
  text-align: left;
  width: 200px;
}
#episode_$ID {
  background: #f9d837;
}
#breadcrumbs {
  font-size: 13px;
  color: #666;
  margin: 2px auto 0px auto;
  width: 980px;
}
#breadcrumbs a {
  color: #666;
}
</style>
<div id="breadcrumbs">
<a href="/">Home</a> > <% control Parent %><a href="$Link">$Title</a><% end_control %> > <a href="$Link">$Title</a>
</div>


<div id="eplist">
<ul>
<% if ShownEpisodes %>
<% control ShownEpisodes %>
<li class="episode" id="episode_$ID">
<span class="episodein">
	<a href="$Link">
	<% if ThumbURL %>
		<img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="200" height="100" alt="$Title" />
	<% else %>
		<br /><br />
		$Title<br />
		$Airdate
	<% end_if %>
	</a>
	$Title<br />
	$Airdate
</span>
</li>
<% end_control %>
<% end_if %>
</ul>

</div>
<div class="clear"></div>
<br /><br />
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
    
  <h2><% control Parent %>$Title<% end_control %><% if Ep %>: Episode #$Ep<% end_if %></h2>
  <br />
  
  <% if Producer %>
  <h3>Produced by: $Producer</h3>
  <% end_if %>
  <% if Airdate %><small>$Airdate.format(F j), $Airdate.format(Y)</small><% end_if %>
  
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
  	<!--
    <div id="recentepisodes">
	<% if RecentEpisodes %>
    <h2>Recent Episodes</h2>
    <% control Parent %>
      <% control RecentEpisodes %>
      <div>
		  <% if ThumbURL %>
		    <div class="episodebox" style="">
		      <a href="$Link">
			    <img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" height="150" alt="$Title" />
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
			<div style="padding: 10px;"></div>
		    <!--img src="$ThemeDir/images/ethumb.png" border="0" style="padding-bottom: 10px;"/->
		  <% end_if %>
      </div>
      <% end_control %>
    <% end_control %>
    <div class="clear"></div>
    <p><% control Parent %><a href="$Link">[return to show page]</a><% end_control %></p>
	<% end_if %>
	
    </div>
	-->
  </div>
</div>