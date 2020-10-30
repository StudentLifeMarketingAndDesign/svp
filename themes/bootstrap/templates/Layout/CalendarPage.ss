<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <div class="bg-container__screen"></div>
    <% end_if %>
    <% include Header %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-9 col-xl-8 mb-3 content__container <% if $BackgroundImage %>content__container--push-down<% end_if %>" role="main">
                <article>
                    <div class="p-lg-5">
                        <h1 class="text-uppercase pt-3 pb-3">$Title</h1>

                        <div class="embed-responsive embed-responsive-4by3">
                            <iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=America%2FChicago&amp;src=MjUyYjVvdGZnbDkyaWNuZnEwdG1sZTUwMzhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%239E69AF" style="border:solid 1px #777" frameborder="0" scrolling="no"></iframe>
                            </div>
                    $Content

                </div>
                </article>
                $Form
                $PageComments
            </div>
        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
