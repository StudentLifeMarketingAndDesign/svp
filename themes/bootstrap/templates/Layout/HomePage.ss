<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <div class="bg-container__screen"></div>
    <% end_if %>
    <div class="container-fluid">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-auto">

                <div class="row align-items-center justify-content-center" style="min-height: 100vh;">
                    <div class="col-lg-auto">
                        <div class="pb-3">
                            <nav class="navbar navbar-expand navbar-dark">
                                <!-- Collapsible content -->
                                <div class="navbar-collapse justify-content-center" id="SocialNav">
                                    <!-- Links -->
                                    <ul class="navbar-nav text-uppercase">
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="btn btn-dark btn-red" href="$SiteConfig.YouTubeLink" target="_blank" rel="noopener"><i style="" class="fab fa-youtube"></i>
                                            SVP on YouTube</a>
                                        </li>
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$SiteConfig.InstagramLink" target="_blank" rel="noopener"><i class="fab fa-facebook"></i>
                                            Instagram</a>
                                        </li>
                                        <li class="nav-item mr-3 link nav-item">
                                            <a class="nav-link nav-link--large" href="$SiteConfig.FacebookLink" target="_blank" rel="noopener"><i class="fab fa-facebook"></i>
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

<section class="section-dark text-white py-3 py-sm-6">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                $Content
            </div>

                <div class="col-sm-4 offset-md-1">


                    <div class="my-5">
                        <p class="h3 my-2"><a class="btn btn-lg btn-light d-block" href="$SiteConfig.YouTubeLink" target="_blank" rel="noopener"><i class="fab fa-youtube"></i> SVP YouTube Channel </a></p>
                        <p class="h3 my-2"><a class="btn btn-lg btn-light d-block" href="$SiteConfig.InstagramLink" target="_blank" rel="noopener"><i class="fab fa-instagram"></i> Instagram: @uiowasvp</a>
                        <p class="h3 my-2"><a class="btn btn-lg btn-light d-block" href="$SiteConfig.FacebookLink" target="_blank" rel="noopener"><i class="fab fa-facebook"></i> Facebook Group: @uiowasvp</a>
                        </p>

                    </div>
                </div>

        </div>
    </div>
</section>




<section class="py-5">
    <div class="container-xl">
        <h2 class="h1 text-center display-3 mb-5">Meet Our Members</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(4) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <p class="text-center"><a href="about/" class="text-center btn btn-primary">View all members</a></p>

        </div>
    </div>
</section>
<% include YouTubeFeed %>
