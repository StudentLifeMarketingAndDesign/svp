

<div id="page-image">
Archives: $Year
</div>
<div id="episode-box">
<div id="block">
	
<div id="episodes">
<ul>
  <% control Episodes %>
  <li><a href="$Link">
    <% if ThumbURL %>
	<img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" height="150" />
	<% else %>
    <div class="episodebox">
	  <div class="fix" style="height: 1px;"></div>
	  <div class="episodebox_emptyinner">
	  $Title<br />
	  <% if Ep %>
	  Episode #$Ep
	  <% end_if %>
	  </div>
	</div>
	<% end_if %>
	<!--<img src="$ThemeDir/images/ethumb.png" border="0" />-->
  </a><br />
  <span class="title">$Title</span><br />
  <span class="airdate"><% if Airdate %>$Airdate.format(l), $Airdate.format(F j), $Airdate.format(Y)<% end_if %></span><br />
  <span class="season"><% if Season %>Season: $Season<% end_if %></span><br />
  <span class="episodenumber"><% if Ep %>Episode: $Ep</span><% end_if %><br />
  <span class="description">$Content.Summary(6)</span>
  </li>
  <% end_control %>
</ul>
</div>


</div></div>



