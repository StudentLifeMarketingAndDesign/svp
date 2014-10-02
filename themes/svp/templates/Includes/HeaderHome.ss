<header class="header" role="banner">
	<div class="row collapse">
		<div class="large-4 columns">
			<div class="logo-quicklinks">
				<% include HeaderLogo %>
				<% include NavMobile %>
				<% if HomePageQuicklinks %>
					<ul class="home-quicklinks">
						<% loop HomePageQuicklinks %>
							<li>
								<a href="$AssociatedPage.Link">
									<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
								</a>
							</li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
		</div>
		<div class="large-8 columns">
			<% include Nav %>

			<ul class="home-orbit" data-orbit data-options="
				animation:slide;
				animation_speed:1000;
				pause_on_hover:true;
				navigation_arrows:true;
				bullets:false;
				timer:false;">
				<% loop CarouselImages.Limit(3) %>
					<li>
						<% if $YouTubeEmbed %>
							$YouTubeEmbed
						<% else %>
							<a href="$AssociatedPage.Link">
								<img src="$Image.CroppedImage(644,390).URL" alt="$Title">
							</a>
						<% end_if %>
						<div class="orbit-caption">
							$Title
						</div>
					</li>
				<% end_loop %>
			</ul>
		</div>
	</div>
</header>