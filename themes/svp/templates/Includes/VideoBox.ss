		  <% if ThumbURL %>
		    <div class="episodebox" style="background: url('$ThumbURL') -80px -75px;">
		      <a href="$Link">
			  	<% if VimeoURL %>
			    <img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" alt="$Title" />
				<% else %>
				<!--img src="$ThumbURL" border="0" style="padding-bottom: 10px;" width="300" height="169" alt="$Title" /-->
				<% end_if %>
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
		  <h3><a href="$Link">$Title</a></h3>
		  <hr/>