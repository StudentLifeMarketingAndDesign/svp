<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <div class="bg-container__screen"></div>
    <% end_if %>
    <% include Header %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-9 col-xl-8 mb-3 content__container" role="main">
                <article>
                    <div class="p-5">
                        <h1 class="text-uppercase pt-3 pb-3">$Title</h1>
                    $Content</div>
                </article>
                $Form
                $PageComments
            </div>
        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
