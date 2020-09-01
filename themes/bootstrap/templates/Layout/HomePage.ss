<div class="container-fluid">
    <div class="row align-items-center justify-content-center vh-100">
        <div class="col-lg-auto">
            <img src="{$ThemeDir}/dist/images/brand.svg" class="d-block m-auto" />
            <div class="pt-3">

                    <!--Navbar-->
                    <nav class="navbar navbar-expand-lg navbar-dark">
                        <!-- Collapsible content -->
                        <div class="navbar-collapse justify-content-center " id="basicExampleNav">
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
