<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>$Title - Student Video Productions</title>
    <% base_tag %>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="division-bar/js/division-bar.js"></script>
    <script type="text/javascript" src="$ThemeDir/js/coin-slider.min.js"></script>
    <link rel="stylesheet" href="$ThemeDir/css/coin-slider-styles.css" type="text/css" />
    <link href="$ThemeDir/css/helper.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="$ThemeDir/css/dropdown.linear.columnar.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="$ThemeDir/css/styles.css" media="screen" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <% include DivisionBar %>
    
      <div class="fix1"></div>
	  <div class = "borderbottom">
	      <header id="header" class="container">
	        <nav id="navigation">
	          <div id="svplogo">
	            <a href="{$BaseHref}"><img src="$ThemeDir/images/svplogo.png" alt="Student Video Productions" border="0" /></a>
	          </div>
	          <div id="links">
	            <ul id="nav" class="dropdown dropdown-linear dropdown-columnar">
              <% control Menu(1) %>
              <% if Children %>
              <li class="dir">$Title
                <ul>
                  <% control Children %>
                  <li class="dir"><span class="subnav-title">$Title</span>
                    <ul>
                      <% control Children %>
                      <li><a href="$Link">$Title</a></li>
                      <% end_control %>
                    </ul>
                  </li>
                  <% end_control %>
                </ul>
                <% else %>
                <li><a href="$Link">$Title</a>
                  <% end_if %>
                </li>
                <% end_control %>
              </ul>
              </div><!--end #links -->
              <div class="clear"></div>
            </nav>
          </header><!-- end header -->

	 </div> 
            <div id="main_content">
              $Layout
              <div id="form" style="width: 300px; margin: 0px auto;">
                $Form
              </div>
            </div>
            <div class="clear"></div>
          </div><!-- end header -->
          <footer id="footer" class="container">
            <div id="footer_shows">
              <h2>Shows</h2>
              <ul>
                <% control ChildrenOf(show) %>
                <li><a href="$Link">$Title</a></li>
                <% end_control %>
              </ul>
            </div>
            <div id="footer_archives">
              <h3>Archives</h3>
              <% control ChildrenOf(archives) %>
              <div><a href="$Link">$Title</a></div>
              <% end_control %>
            </div>
            <div id="footer_logos">
              <img src="$ThemeDir/images/svp-nice.png" alt="UI SVP" class= "svpLogo" />
              <p> 8PM Sundays on UITV </p>
              <p> Dorms ch. 4 </p>
              <p> Mediacom ch. 17 </p>
              <p><a href="http://www.facebook.com/pages/Student-Video-Productions/70726581690?ref=ts"><img src="$ThemeDir/images/facebook.png" border="0" alt="Facebook" /></a> <a href="http://www.youtube.com/user/UISVP"><img src="$ThemeDir/images/youtube.png" border="0" alt="YouTube" /></a></p>
            </div>
            <div class="clear"></div>
            <div id="contact">
              <% if CurrentMember %><p><a href="$EditURL" id="editpost" title="Edit this page">Edit this page</a></p><% end_if %>
              Office: 260A IMU<br />
              Phone:(319) 335-3280<br />
              Weekly meetings at 8PM<br />
              (Indiana Room at the IMU)<br />
              © The University of Iowa. All rights reserved.
            </div>
          </footer>
        </body>
        <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-426753-14']);
        _gaq.push(['_trackPageview']);
        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
        </script>
      </html>