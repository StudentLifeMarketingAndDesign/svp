<header role="banner">

    <nav class="navbar navbar--border navbar-expand-lg navbar-dark">

        <a class="navbar-brand d-lg-none" href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
            <img class="brand-image" src="$ThemeDir/dist/images/brand.svg" width="100" />
        </a>
        <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#nav"
        aria-controls="nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Collapsible content -->
        <div class="collapse navbar-collapse justify-content-center " id="nav">
            <!-- Links -->
            <ul class="navbar-nav text-uppercase">
                <% loop $Menu(1) %>

                <li class="nav-item mr-4  <% if isSection %>active<% end_if %>">
                    <a class="nav-link nav-link--large <% if isSection %>nav-link--active<% end_if %>" href="$Link">
                    $MenuTitle</a>
                </li>

                <% end_loop %>
                <li class="nav-item mr-4  <% if isSection %>active<% end_if %>">
                    <a href="{$SiteConfig.YouTubeLink}" target="_blank" class="br-0 btn btn-dark btn-red text-uppercase">SVP on YouTube <i class="fab fa-youtube" style="color: red;" aria-hidden="true"></i></a>
                </li>
            </ul>
        </div>
        <!-- Collapsible content -->
    </nav>
</header>
