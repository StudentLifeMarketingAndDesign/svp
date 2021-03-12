<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <div class="bg-container__screen"></div>
    <% end_if %>
    <% include Header %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12 col-xl-10 mb-3 content__container" role="main">
                <article>
                    <div class="row justify-content-center">
                        <div class="col-lg-9">
                            <div class="p-lg-5">
                            <h1 class="text-uppercase content__page-header pt-3 pb-3">$Title</h1>
                            $Content
                            </div>
                        </div>
                    </div>

                </article>
                $Form
                $PageComments


<div class="row">
        <div class="col-lg-12">

            <% if $Images %>
                <% if $Images.Count > 10 %>
                    <div class="card-columns" data-aos="fade-up" data-aos-offset="100">
                        <% loop $Images.Sort('RAND()') %>
                            <div class="card border-0 mb-4">
                                <img class="card-img-top lazyload" data-aspectratio="$Ratio" data-src="$ScaleWidth(700).URL" />
                            </div>
                        <% end_loop %>
                    </div>
                <% else_if $Images.Count == 4 %>
                    <div class="row justify-content-center">
                        <% loop $Images.Sort('RAND()') %>
                            <div class="col-sm-12 col-md-6 mb-4">
                                <img class="d-block w-100 lazyload" data-aspectratio="$Ratio" data-src="$Pad(700,700,000).URL" />
                            </div>
                        <% end_loop %>
                    </div>
                <% else_if $Images.Count == 8 %>
                    <div class="row justify-content-center">
                        <% loop $Images.Sort('RAND()') %>
                            <div class="col-sm-12 col-md-6 mb-4">
                                <img class="d-block w-100 lazyload" data-aspectratio="$Ratio" data-src="$Pad(700,700,000).URL" />
                            </div>
                        <% end_loop %>
                    </div>
                <% else %>
                    <div class="row justify-content-center">
                        <% loop $Images.Sort('RAND()') %>
                            <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                                <img class="d-block w-100 lazyload" data-aspectratio="$Ratio" data-src="$Pad(700,700,000).URL" />
                            </div>
                        <% end_loop %>
                    </div>
                <% end_if %>
            <% end_if %>
            <% if $PhotoCredits %>
                <p class="text-center">$PhotoCredits</p>
            <% end_if %>
        </div>
    </div>


            </div>

        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
<% include YouTubeFeed %>
<% include SocialMedia %>



