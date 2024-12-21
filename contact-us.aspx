<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact-us.aspx.cs"
Inherits="contact_us" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <!-- Google Tag Manager -->
    <script>
      (function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
          "gtm.start": new Date().getTime(),
          event: "gtm.js",
        });
        var f = d.getElementsByTagName(s)[0],
          j = d.createElement(s),
          dl = l != "dataLayer" ? "&l=" + l : "";
        j.async = true;
        j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
        f.parentNode.insertBefore(j, f);
      })(window, document, "script", "dataLayer", "GTM-PL9PCWF");
    </script>
    <!-- End Google Tag Manager -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Dclutter - Reorganize your space</title>

    <!-- Stylesheets -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <link rel="icon" href="images/logo.png" type="image/x-icon" />
    <script>
      function nullval() {
        if (document.getElementById("txtname").value == "") {
          alert("Please enter your Name");
          document.getElementById("txtcname").focus();
          return false;
        }
        if (document.getElementById("txtmail").value == "") {
          alert("Please enter your Email ID");
          document.getElementById("txtmail").focus();
          return false;
        }
        var em = document.getElementById("txtmail").value;
        var emval = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
        if (!emval.test(em)) {
          alert("Please enter your valid email id");
          em = "";
          return false;
        }
        if (document.getElementById("txtphone").value == "") {
          alert("Please enter your Phone Number");
          document.getElementById("txtphone").focus();
          return false;
        }
        if (document.getElementById("txtmessage").value == "") {
          alert("Please enter your Message");
          document.getElementById("txtmessage").focus();
          return false;
        }
        //        var v = grecaptcha.getResponse();
        //        if (v.length == 0) {
        //            alert("Please Check that I'm not a Robot");
        //            return false;
        //        }
        //        else {

        //            return true;
        //        }
      }
      function mobfun() {
        if (
          (event.keyCode > 44 && event.keyCode < 58) ||
          event.keyCode == 32 ||
          event.keyCode == 43
        ) {
          return true;
        } else {
          return false;
        }
      }
    </script>

    <!-- New tag added -->
    <!-- Google tag (gtag.js)  -->
    <script
      async
      src="https://www.googletagmanager.com/gtag/js?id=AW-16527448380"
    ></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() {
        dataLayer.push(arguments);
      }
      gtag("js", new Date());
      gtag("config", "AW-16527448380");
    </script>
  </head>

  <!-- page wrapper -->

  <body class="boxed_wrapper">
    <!-- Google Tag Manager (noscript) -->
    <noscript
      ><iframe
        src="https://www.googletagmanager.com/ns.html?id=GTM-PL9PCWF"
        height="0"
        width="0"
        style="display: none; visibility: hidden"
      ></iframe
    ></noscript>
    <!-- End Google Tag Manager (noscript) -->

    <!-- .preloader -->
    <div class="preloader"></div>
    <!-- /.preloader -->

    <!-- Main Header -->
    <header class="main-header">
      <!-- header-top -->
      <div class="header-top">
        <div class="container">
          <div class="clearfix">
            <div class="logo-box top-left">
              <figure class="logo-outer">
                <a href="index.html"
                  ><img src="images/one.png" class="logo-width" alt=""
                /></a>
              </figure>
            </div>
            <div class="top-right d-none d-sm-block">
              <ul class="header-info clearfix">
                <li><i class="flaticon-contact"></i>sales@shuter.in</li>

                <li>
                  <i class="fa fa-phone" aria-hidden="true"></i>+91 8144789789
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- header-top end -->

      <!-- header-bottom -->
      <div class="header-bottom">
        <div class="container">
          <div class="nav-outer clearfix">
            <div class="menu-area">
              <nav class="main-menu navbar-expand-lg">
                <div class="navbar-header">
                  <!-- Toggle Button -->
                  <button
                    type="button"
                    class="navbar-toggle"
                    data-toggle="collapse"
                    data-target=".navbar-collapse"
                  >
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                </div>
                <div class="navbar-collapse collapse clearfix">
                  <ul class="navigation clearfix">
                    <li class="current"><a href="index.html">Home</a></li>
                    <li class=""><a href="about.html">About Dclutter</a></li>
                    <li class="">
                      <a href="index.html#solutions">Solutions</a>
                    </li>
                    <li class=""><a href="index.html#clients">Clients</a></li>

                    <li class=""><a href="contact-us.aspx">Write to us</a></li>
                    <li><a href="index.html#contact">Contact Us</a></li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
      <!-- header-bottom end -->

      <!--Sticky Header-->
      <div class="sticky-header">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-12 col-sm-12 column">
              <figure class="logo-box">
                <a href="index.html"
                  ><img src="images/one.png" class="logo-width-small" alt=""
                /></a>
              </figure>
            </div>
            <div class="col-lg-9 col-md-12 col-sm-12 menu-column">
              <div class="menu-area">
                <nav class="main-menu navbar-expand-lg">
                  <div class="navbar-header">
                    <!-- Toggle Button -->
                    <button
                      type="button"
                      class="navbar-toggle"
                      data-toggle="collapse"
                      data-target=".navbar-collapse"
                    >
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                  </div>
                  <div class="navbar-collapse collapse clearfix">
                    <ul class="navigation clearfix">
                      <li class="current"><a href="index.html">Home</a></li>
                      <li class=""><a href="about.html">About Dclutter</a></li>
                      <li class="">
                        <a href="index.html#solutions">Solutions</a>
                      </li>
                      <li class=""><a href="index.html#clients">Clients</a></li>

                      <li class="">
                        <a href="contact-us.aspx">Write to us</a>
                      </li>
                      <li><a href="index.html#contact">Contact Us</a></li>
                    </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- sticky-header end -->
    </header>
    <!-- End Main Header -->

    <!-- main-slider -->
    <section
      class="page-title centred"
      style="background-image: url(images/main-slider/banner-1.jpg)"
    >
      <div class="container">
        <div class="content-box">
          <div class="title">Write to Us</div>
          <ul class="bread-crumb">
            <li><a href="index.html">Home</a></li>
            <li>Write to Us</li>
          </ul>
        </div>
      </div>
    </section>
    <!-- main-slider end -->

    <!-- about-style-three -->
    <!-- <section class="about-style-three"> -->
    <!-- <div class="container"> -->
    <!-- <div class="row"> -->
    <!-- <div class="col-lg-5 col-md-12 col-sm-12 title-column"> -->
    <!-- <div class="title-box"> -->
    <!-- <div class="sec-title" style="text-align:right;">Creating value for Health care by intelligent logistic solutions</div> -->

    <!-- </div> -->
    <!-- </div> -->
    <!-- <div class="col-lg-7 col-md-12 col-sm-12 content-column"> -->
    <!-- <div class="content-box"> -->

    <!-- <div class="sec-title" style="margin-bottom:0px">Overview</div> -->
    <!-- <div class="text">We are young and vibrant organization proving innovative storage products and concepts to boost work place efficiency. We are passionate for achievement and that drives us to give the very best to our valued clients across the Globe.</div> -->
    <!-- <div class="text">We are specialized in providing 100% real time information by using the latest Information Technology incorporated for better profits. </div> -->
    <!-- <div class="text">Come and explore our solutions for futuristic work place environment. </div> -->
    <!-- </div> -->
    <!-- </div> -->
    <!-- </div> -->
    <!-- </div> -->
    <!-- </section> -->

    <!-- about-style-three end -->

    <section class="contact-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-12 col-sm-12 content-column">
            <div class="inner-content">
              <div class="contact-form-area">
                <form id="form1" class="default-form" runat="server">
                  <div class="title-box" style="margin-bottom: 30px">
                    <div class="sec-title">Write to us</div>
                    <div class="title-text"></div>
                  </div>

                  <div class="form-group">
                    <label>Your Name</label>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Your Email</label>
                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Your Phone</label>
                    <asp:TextBox
                      ID="txtphone"
                      runat="server"
                      onkeypress="return mobfun()"
                    >
                    </asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label>Your Message</label>
                    <asp:TextBox
                      ID="txtmessage"
                      runat="server"
                      TextMode="MultiLine"
                    ></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <div
                      class="g-recaptcha"
                      id="rcaptcha"
                      data-sitekey="6LfRhZsUAAAAAPmvG0N0vsL-ycVSERhkojkIagHU"
                    ></div>
                  </div>
                  <div class="contact-button">
                    <asp:Button
                      ID="btnsubmit"
                      runat="server"
                      Text="Submit"
                      OnClientClick="return nullval()"
                      onclick="btnsubmit_Click"
                    ></asp:Button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-12 col-sm-12 sidebar-column">
            <div class="sidebar-content">
              <div class="single-item">
                <h4>Address</h4>
                <div class="text">
                  Shuter Enterprises India Pvt Limited<br />
                  New No 393, Old No: 47,<br />
                  Sri Balaji Nagar, Gerugambakkam,<br />
                  Chennai - 600 128,<br />
                  India.
                </div>
              </div>
              <div class="single-item">
                <h4>Contact information</h4>
                <div class="text">
                  <p>Call: +91 - 81447 89789</p>
                </div>
              </div>
              <div class="link">
                <a href="#" class="theme-btn">Download Brochure</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- service-style-two end -->

    <!-- event-section -->

    <!-- event-section -->

    <!-- cta-section -->

    <!-- cta-section end -->

    <!-- team-section -->

    <!-- team-section end -->

    <!-- news-section -->

    <!-- news-section end -->

    <!-- main-footer -->
    <footer class="main-footer" id="contact">
      <div class="container">
        <div class="widgets-section">
          <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12 footer-column">
              <div class="logo-widget footer-widget">
                <figure class="footer-logo">
                  <a href="index.html"
                    ><img src="images/one.png" class="logo-width-small" alt=""
                  /></a>
                </figure>
                <div class="text">
                  We are young and vibrant organization proving innovative
                  storage products and concepts to boost work place efficiency.
                </div>
                <ul class="footer-social clearfix">
                  <li>
                    <a
                      href="https://www.facebook.com/Dclutter-545727989255114/?modal=admin_todo_tour"
                      target="_blank"
                      ><i class="fa fa-facebook"></i
                    ></a>
                  </li>
                  <li>
                    <a
                      href="https://www.instagram.com/dclutter.in/"
                      target="_blank"
                      ><i class="fa fa-instagram"></i
                    ></a>
                  </li>
                  <li>
                    <a
                      href="https://www.youtube.com/channel/UCi14YTxVTHnnUr8ZEt2E_9w?view_as=subscriber"
                      target="_blank"
                      ><i class="fa fa-youtube"></i
                    ></a>
                  </li>
                  <li>
                    <a href="https://www.linkedin.com/in/dclutter-storage/"
                      ><i class="fa fa-linkedin" target="_blank"></i
                    ></a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 col-sm-12 footer-column">
              <div class="event-widget footer-widget">
                <div class="footer-title">Address</div>
                <div class="single-event">
                  <div class="link">
                    <table>
                      <tr>
                        <td>
                          <i
                            class="flaticon-marker"
                            style="margin-left: 0px"
                          ></i>
                        </td>
                        <td>Shuter Enterprises India Pvt Limited</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td>New No 393, Old No: 47,</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td>Sri Balaji Nagar, Gerugambakkam,</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td>Chennai - 600 128,</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td>India.</td>
                      </tr>
                      <tr>
                        <td>
                          <i
                            class="flaticon-contact"
                            style="margin-left: 0px"
                          ></i>
                        </td>
                        <td>+91 - 81447 89789</td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 footer-column">
              <div class="newsletter-widget footer-widget">
                <div class="footer-title">Locate Us</div>

                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15549.446445588517!2d80.1398354!3d13.0126291!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7cc6d5da59e1fecb!2sDclutter!5e0!3m2!1sen!2sin!4v1553328649472"
                  width="100%"
                  height="200"
                  frameborder="0"
                  style="border: 0"
                  allowfullscreen
                ></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- main-footer end -->

    <!-- footer-bottom -->
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="copyright">
              Design
              <a href="http://globaltrendz.com/" target="_blank"
                >Global Trendz</a
              >
            </div>
          </div>
          <div class="col-md-6">
            <div class="copyright copyrights">
              <a
                href="pdf/privacy-policy.pdf"
                target="_blank"
                style="color: #d4dae3; font-weight: 400"
              >
                Privacy Policy
              </a>
              |©
              <script type="text/javascript">
                var year = new Date();
                document.write(year.getFullYear());
              </script>
              Dclutter. All Right Reserved.
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer-bottom end -->

    <!--Scroll to top-->
    <button class="scroll-top scroll-to-target" data-target="html">
      <span class="fa fa-angle-up"></span>
    </button>

    <!-- jequery plugins -->
    <script src="js/jquery.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/owl.carousel.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/validation.js"></script>
    <script src="js/isotope.js"></script>
    <script src="js/html5lightbox/html5lightbox.js"></script>
    <script type="text/javascript" src="js/SmoothScroll.js"></script>

    <!-- map script -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBevTAR-V2fDy9gQsQn1xNHBPH2D36kck0"></script>
    <script src="js/gmaps.js"></script>
    <script src="js/map-helper.js"></script>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <!-- main-js -->
    <script src="js/script.js"></script>

    <script>
      /**
       * Check a href for an anchor. If exists, and in document, scroll to it.
       * If href argument ommited, assumes context (this) is HTML Element,
       * which will be the case when invoked by jQuery after an event
       */
      function scroll_if_anchor(href) {
        href = typeof href == "string" ? href : $(this).attr("href");

        // You could easily calculate this dynamically if you prefer
        var fromTop = 70;

        // If our Href points to a valid, non-empty anchor, and is on the same page (e.g. #foo)
        // Legacy jQuery and IE7 may have issues: http://stackoverflow.com/q/1593174
        if (href.indexOf("#") == 0) {
          var $target = $(href);

          // Older browser without pushState might flicker here, as they momentarily
          // jump to the wrong position (IE < 10)
          if ($target.length) {
            $("html, body").animate({
              scrollTop: $target.offset().top - fromTop,
            });
            if (history && "pushState" in history) {
              history.pushState(
                {},
                document.title,
                window.location.pathname + href
              );
              return false;
            }
          }
        }
      }

      scroll_if_anchor(window.location.hash);

      // Intercept all anchor clicks
      $("body").on("click", "a", scroll_if_anchor);
    </script>
  </body>
  <!-- End of .page_wrapper -->

  <!-- Mirrored from html.tonatheme.com/2019/Aculia/index-2.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 21 Mar 2019 05:31:52 GMT -->
</html>
