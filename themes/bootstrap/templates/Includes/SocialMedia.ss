	<section class="section-dark text-white py-3 py-sm-6">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <h2 class="h1 display-3">About SVP</h2>
                <% with Page("about") %>
                    $Content
                    <p><a class="btn btn-large btn-primary" href="$Link">View our members</a></p>
                <% end_with %>
                <h3>Quick Links:</h3>
                <div class="btn-group" role="group" aria-label="Basic example">

                      <a class="btn btn-outline-secondary" href="equipment/">Equipment Rental</a>
                      <a class="btn btn-outline-secondary" href="equipment/">Calendar</a>
                      <a class="btn btn-outline-secondary" href="equipment/">General Information</a>
                </div>

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


