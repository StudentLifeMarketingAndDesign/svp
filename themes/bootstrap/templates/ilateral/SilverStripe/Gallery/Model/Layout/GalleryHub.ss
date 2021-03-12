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
                            <h1 class="text-uppercase text-center content__page-header pt-3 pb-3">$Title</h1>
                            $Content
                            </div>
                        </div>
                    </div>

                </article>
                $Form
                $PageComments


<% loop $AllChildren %>
    <div class="row mb-5 mt-4">
        <div class="col-lg-12">
            <% if $Logo %>
                <a href="$Parent.Link" class="d-block"><img class="gallery-header-overlay gallery-header-overlay-img d-block" src="$Logo.ScaleWidth(125).URL" alt="$Title.ATT" /></a>
            <% else %>
                <h1 class="gallery-header page-header-overlay text-center"><a href="$Parent.Link"><% if $GalleryName %>$GalleryName<% else %>$Title<% end_if %></a></h1>
            <% end_if %>
            <% if $Images %>
                <div class="row">
                    <% loop $Images.Sort('RAND()').Limit(4) %>
                        <div class="col-6 col-lg">
                            <div class="gallery-thumb">
                                <a href="$Up.Up.Up.Link">
                                <img class="card-img-top lazyload" data-aspectratio="1" data-src="$Fill(700,700).URL" />
                                </a>
                            </div>

                        </div>
                    <% end_loop %>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <p class="hero-button gallery-thumb-overlay-button"><a href="$Link" class="btn btn-primary mt-3">See all</a></p>
                    </div>
                </div>
            <% end_if %>
        </div>
    </div>
<%--     <div class="row">
        <div class="col-lg-12 text-center">
                <a href="$Link" class="btn btn-outline-dark">View all</a>
        </div>
    </div> --%>
    <% end_loop %>

            </div>

        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
<% include YouTubeFeed %>
<% include SocialMedia %>
