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
                    $Content
                    <div class="stafflist">
                        <% if $Teams %>
                            <% loop $Teams %>
                                <h3 class="stafflist__title">$Title</h3>
                                <ul class="stafflist__list list-unstyled mb-5">
                                    <% if $Up.SortLastName %>
                                        <% loop $SortedStaffPages.Sort(LastName, ASC) %>
                                            <% include StaffPageListItem %>
                                        <% end_loop %>
                                    <% else %>
                                        <% loop $SortedStaffPages %>
                                            <% include StaffPageListItem %>
                                        <% end_loop %>
                                    <% end_if %>
                                </ul>
                            <% end_loop %>
                        <% else %>
                        <%-- end if teams --%>
                        <ul class="stafflist__list list-unstyled mb-5">
                            <% loop $Children %>
                                <% include StaffPageListItem %>
                            <% end_loop %>
                        </ul>
                        <% end_if %>
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
