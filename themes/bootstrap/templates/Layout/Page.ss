<% if $BackgroundImage %>
<div class="bg-container" style="background-image:url({$BackgroundImage.URL})">
    <% end_if %>
    <% include Header %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-9 col-xl-8 mb-3 content__container <% if $BackgroundImage %>content__container--push-down<% end_if %>" role="main">
                <article>
                    <div class="content p-5">
                        <h1 class="text-uppercase text-center pt-3 pb-3">$Title</h1>
                    $Content</div>
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
