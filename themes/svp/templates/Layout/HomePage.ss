
</div>
<div class="projects-home">
	<div class="row">
		<div class="large-12 columns">
		<!-- $Content -->
		<!-- $Form -->

		<% with Page(projects) %>
			<h4 class="subtitle">$Title</h4>
			<div class="row">
				<div class="large-12 columns">
					<ul class="small-block-grid-1 medium-block-grid-2 large-block-grid-3">
					<% loop $Children.Limit(3) %>
						<li>
							<% if $EmbedCode %>
								$EmbedCode
							<% else %>
								<a href="$Link">
									<img src="$Photo.CroppedImage(400,300).URL" alt="$Title">
								</a>
							<% end_if %>
							<h5><a href="$Link">$Title</a></h5>
						</li>
					<% end_loop %>
					</ul>
				</div>
			</div>
		<% end_with %>
</div>
	</div>
</div>

<div class="mission">
	<div class="row collapse">
		<div class="small-11 small-centered columns">
			<div>
				$Content
			</div>
		</div>
	</div>
</div>

<div class="board-list">
	<div class="row">
		<div class="large-12 columns">
			<h4 class="subtitle">Our Staff</h4>
			<a href="{$baseUrl}about-us/" class="text-center"><small>View all staff members</small></a>
			<br>
			<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-5">
				<% loop RandomStaffMembers(5) %>
					<li>
						<% if $Photo %>
							<a href="$Link" class="staff-link">
								<img src="$Photo.CroppedFocusedImage(230,230).URL" alt="$FirstName $LastName" class="staff-img">
							</a>
						<% else %>
							<a href="$Link" class="staff-link">
								<img src="{$ThemeDir}/images/placeholder.gif" alt="$FirstName $LastName" class="staff-img">
							</a>
						<% end_if %>
						<p class="staff-name">
							<a href="$Link">$FirstName $LastName</a>
						</p>
					</li>
				<% end_loop %>
			</ul>
		</div>
	</div>
</div>
