<h1 id="page-image">
$ShowTitle: Episodes
</h1>

<div id="episode-box">
<div id="block">

<div id="episodes">
<% if AllEpisodes %>
<ul>
  <% control AllEpisodes %>
  <li>
    <% if ThumbURL %>
	<a href="$Link"><img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" height="150" alt="$Title" /></a>
	<% else %>
    <div class="episodebox">
	  <div class="fix" style="height: 1px;"></div>
	  <div class="episodebox_emptyinner">
	  <a href="$Link">$Title<br />
	  <% if Ep %>
	  Episode #$Ep
	  <% end_if %>
	  </a>
	  </div>
	</div>
	<% end_if %>
    <br />
  <span class="title">$Title</span><br />
  <span class="airdate"><% if Airdate %>$Airdate.format(l), $Airdate.format(F j), $Airdate.format(Y)<% end_if %></span><br />
  <span class="season"><% if Season %>Season: $Season<% end_if %></span><br />
  <span class="episodenumber"><% if Ep %>Episode: $Ep<% end_if %></span><br />
  <span class="description">$Content.Summary(6)</span>
  </li>
  <% end_control %>
</ul>
<% end_if %>
</div>


</div></div>