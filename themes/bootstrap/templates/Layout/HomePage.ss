<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <div class="bg-container__screen"></div>
    <% end_if %>
    <div class="container-fluid">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-auto">

                <div class="row align-items-center justify-content-center vh-100">
                    <div class="col-lg-auto">
                        <div class="pb-3">
                            <nav class="navbar navbar-expand navbar-dark">
                                <!-- Collapsible content -->
                                <div class="navbar-collapse justify-content-center" id="SocialNav">
                                    <!-- Links -->
                                    <ul class="navbar-nav text-uppercase">
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$Link"><i class="fab fa-youtube"></i>
                                            YouTube</a>
                                        </li>
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$Link"><i class="fab fa-facebook"></i>
                                            Instagram</a>
                                        </li>
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$Link"><i class="fab fa-facebook"></i>
                                            Facebook</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <img src="{$ThemeDir}/dist/images/brand.svg" class="d-block m-auto" />
                        <div class="pt-3">
                            <!--Navbar-->
                            <nav class="navbar navbar-expand-lg navbar-dark">
                                <!-- Collapsible content -->
                                <div class="navbar-collapse justify-content-center" id="Nav">
                                    <!-- Links -->
                                    <ul class="navbar-nav text-uppercase">
                                        <% loop $Menu(1) %>
                                        <% if $URLSegment != home %>
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$Link">
                                            $MenuTitle</a>
                                        </li>
                                        <% end_if %>
                                        <% end_loop %>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
