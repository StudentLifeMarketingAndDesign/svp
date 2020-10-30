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
            </div>
            <%--         <% if $Menu(2) || $SideBarView.Widgets %>
            <% include SideBar %>
            <% end_if %> --%>
        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
<% include SocialMedia %>
