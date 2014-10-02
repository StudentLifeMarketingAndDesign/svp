<div class="social-blog">
	<div class="row collapse">
		<div class="large-3 large-push-9 columns">
			<div class="row">
				<% with Page("bijou-blog") %>
					<% loop $Entries('1') %>
						<div class="large-6 columns">
							<div class="blogsnippit">
								<h5 class="intro">From the Blog</h5>
								<h3 class="title"><a href="$Link">$Title</a></h3>
								<p>$Content.LimitCharacters(180)</p>
								<a href="$Link" class="anchor">read more</a>
							</div>
						</div>
					<% end_loop %>
				<% end_with %>
			</div>
		</div>
		<div class="large-9 large-pull-3 columns white">
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=270867676312194&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
			<div class="fb-like-box" data-href="$SiteConfig.FacebookLink" data-height="340" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="true" data-show-border="false" style="background-color: #f4f4f4;"></div>
		</div>
	</div>
</div>