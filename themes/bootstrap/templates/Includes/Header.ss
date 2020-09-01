<div class="header__container <% if $BackgroundImage %>header__container--has-bg<% end_if %>">
    <div class="container-fluid">

        <div class="row justify-content-center">
            <div class="col-lg-8 content-container title__container">
                <div class="header-graphic  d-none d-lg-block ">
                    <a href="{$BaseUrl}" class="d-block pt-4 pb-4">
                        <img class="header-graphic__img" src="$ThemeDir/dist/images/brand-full.svg" alt="Student Video Productions" />
                    </a>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-auto">
                <% include Nav %>
            </div>
        </div>
    </div>
</div>
