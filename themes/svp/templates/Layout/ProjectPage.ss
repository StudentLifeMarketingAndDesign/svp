<div class="<% if $Children || $Parent %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article>
		<% if $EmbedCode %>
			$EmbedCode
		<% else %>
			<img src="$Photo.CroppedFocusedImage(706,397).URL" alt="$Title">
		<% end_if %>

		<hr>
		<h1>$Title</h1>
		$Content
	</article>
</div>
<% if $Children || $Parent %><%--Determine if Side Nav should be rendered, you can change this logic--%>
	<div class="large-3 columns content-right">
		<br>
		<% include SideNav %>
	</div>
<% end_if %>