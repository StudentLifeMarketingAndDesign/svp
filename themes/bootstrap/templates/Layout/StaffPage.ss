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
                <% if $Photo %>
                    <!-- 0 equals square, 1 equals portrait, and 2 equals landscape -->
                    <% if $Photo.Orientation == 0 || $Photo.Orientation == 1 %>
                        <img src="$Photo.ScaleMaxWidth(400).URL" alt="$Title" role="presentation" class="float-md-right mb-3 ml-md-3 img-thumbnail img-fluid rounded-0">
                    <% else %>
                        <img src="$Photo.ScaleMaxWidth(900).URL" alt="$Title" role="presentation" class="mb-3 img-thumbnail img-fluid rounded-0">
                    <% end_if %>
                <% end_if %>


                <% if $Position %>
                    <h4>$Position</h4>
                <% end_if %>
                <ul>
                    <% if $EmailAddress %><li><strong>Email:</strong> <a href="mailto:$EmailAddress">$EmailAddress</a></li><% end_if %>
                    <% if $Phone %><li><strong>Phone:</strong> $Phone</li><% end_if %>
                    <% if $DepartmentName %>
                        <li>
                            <% if $DepartmentURL %>
                                <a href="$DepartmentURL" target="_blank">Department website</a>
                            <% else %>
                                $DepartmentName
                            <% end_if %>
                        </li>
                    <% end_if %>
                    <% if $OtherWebsiteLink %>
                        <li><a href="$OtherWebsiteLink" target="_blank">
                            <% if $OtherWebsiteLabel %>
                                $OtherWebsiteLabel
                            <% else %>
                                Website
                            <% end_if %>
                        </a></li>
                    <% end_if %>
                </ul>
                $Content
               $Form
                $PageComments

                </div>
                </article>

            </div>
        </div>
    </div>
    <% if $BackgroundImage %>
</div>
<% end_if %>
