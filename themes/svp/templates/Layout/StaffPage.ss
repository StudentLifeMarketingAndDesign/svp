<h1 id="page-image">
$Title
</h1>

<div id="content-wrapper2">

<div id="staff">
<% control Children %>
  <div class="member">
	<div class="memberimage">
	<a href="$Link"><img src="$LeaderImage.LeaderPicture.URL" border="0" /></a>
	</div>
	<div class="memberinfo">
	<a href="$Link"><strong>$Title</strong></a><br />
	<small>$Person<br />
	$Email</small>
	</div>
  </div>
<% end_control %>


</div>

<!--sidebar-->
<% include SideBar %>

</div>