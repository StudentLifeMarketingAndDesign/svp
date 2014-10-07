<div class="<% if $Children || $Parent %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article>
		<h1>$Title</h1>
		$Content

		<ul class="small-block-grid-1 medium-block-grid-2">
			<% loop $Children %>
				<li>
					<% if $EmbedCode %>
						$EmbedCode
					<% else %>
						<a href="$Link">
							<img src="$Photo.CroppedImage(400,300).URL" alt="$Title">
						</a>
					<% end_if %>
					<h5 class=""><a href="$Link">$Title</a></h5>
				</li>
			<% end_loop %>
		</ul>

	</article>
</div>
<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
	<div class="large-3 columns content-right">
		<br>
		<% include SideNav %>
	</div>
<% end_if %>