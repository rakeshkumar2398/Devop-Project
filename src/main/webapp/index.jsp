

    
    <!DOCTYPE html>
    <html class="" lang="en" dir="ltr">
    <head>
        <title>        Log In
 | Red Hat IDP</title>
        <script>
            var host = window.location.hostname;
            if (host == "sso.stage.redhat.com") {document.write('\x3Cscript id="trustarc" type="text/javascript" src="//static.redhat.com/libs/redhat/marketing/latest/trustarc/trustarc.stage.js" async="" data-domain="redhat_test.com" data-debug="">\x3C/script>');}
            if (host == "sso.redhat.com") {document.write('\x3Cscript id="trustarc" type="text/javascript" src="//static.redhat.com/libs/redhat/marketing/latest/trustarc/trustarc.js">\x3C/script>');}
        </script>

<script type="text/javascript">
    /* for EDDL */
    window.appEventData = window.appEventData || [];

    /* Variables */
    const pageName = document.getElementsByTagName("title")[0].innerHTML.trim().replace(/\n/g, ' ');
    const pathName = window.location.pathname.replace(/\//g, '|');
    
    const getQueryParams = () => {
      return window.location.href.split('?')[1] ? window.location.href.split('?')[1].replace(/=/g,':').split('&') : "";
    }
    const queryString = window.location.search;
    const queryParams = new URLSearchParams(queryString);
    let redirectUri = queryParams.get("redirect_uri");
    let client = queryParams.get("client_id");

    function getPageCategories() {
      const relURL = window.location.pathname; 
      const categories = { primaryCategory: "", subCategories: [] },
      url = relURL.split('?')[0].split('#')[0].split(/\//);
      
      for (let i=1, l=url.length; i<l; i++) {
        if (i !== 1 && i <= 7) {
          categories.subCategories.push(url[i]);
        }
        if (i === 1) {
          categories.primaryCategory = url[i].length > 0 ? url[i] : "root";
        }
      }
      return categories;
    }

    const categories = getPageCategories();

    /* Page load started */
    appEventData.push({
      "event": "Page Load Started",
      "page": {
        "pageCategory": categories.primaryCategory,
        "pageName": "SSO" + pathName,
        "siteName": "SSO",
        "siteExperience": (window.innerWidth <= 768) ? "mobile" : "desktop",
        "pageType": client,
        "pageSubType": "rhfull",
        "siteLanguage": "en",
        "destinationURL": redirectUri ? redirectUri : "https://sso.redhat.com"
      }
    });
    
    /* User detected event */
    appEventData.push({
      "event": "User Detected",
      "user": {
        "ebsAccountNumber": "",
        "hashedEmail": "",
        "lastLoginDate": "",
        "loggedIn": false,
        "organizationID": "",
        "socialAccountsLinked": "",
        "ssoClientID": "",
        "userID": "",
        "pageType": client
      }
    });
</script>

            <script type="text/javascript">
                function faddo(dd, upi) {
                    dd.page.category.subCategories.push("ugc");
                    dd.page.category.subCategories.push("rhfull");
                };
            </script>
<script type="text/javascript">

    /* for EDDL */
    window.appEventData = window.appEventData || [];

    /* for DDO */
    var digitalData = {
      page: {
        attributes: {
          queryParameters: []
        },
        category: {
          contentType: "",
          contentSubType: "",
          keyPage: false,
          keyPageType: "",
          pageType: "IDM",
          primaryCategory: "auth",
          subCategories: []
        },
        pageInfo: {
          breadCrumbs: [],
          cms: "idm ${project.version}",
          destinationURL: "",
          errorMessage: "",
          errorType: "",
          language: "en",
          pageID: "",
          pageName: "",
          referringDomain: "",
          referringURL: "",
          syndicationIds: [],
          sysEnv: "desktop",
          title: ""
        }
      },
      user: [{
        profile: [{
          profileInfo: {
            accountID: "",
            daysSinceLastPurchase: "",
            daysSinceRegistration: "",
            eloquGUID: "",
            keyCloakID: "",
            loggedIn: false,
            profileID: "",
            registered: false,
            socialAccountsLinked: [],
            subscriptionFrequency: "",
            subscriptionLevel: "",
            userAgent: ""
          }
        }]
      }]
    };


    ( function( w, d, dd, undefined ) {
    
      function getCookie( name ) {
        var value = "; " + document.cookie;
        var parts = value.split( "; " + name + "=" );
        if ( parts.length == 2 ) {
          return parts.pop().split( ";" ).shift();
        }
      }
      
      function getCategories() {
        var relURL = w.location.pathname; 
        var categories = { primaryCategory: "", subCategories: [] },
          url = relURL.split('?')[0].split('#')[0].split(/\//);
        for(var i=1, l=url.length; i<l; i++) {
          if (i !== 1 && i <= 4) {
            categories.subCategories.push(url[i]);
          }
          if (i === 1) {
            categories.primaryCategory = url[i].length > 0 ? url[i] : "root";
          }
        }
        return categories;
      }
      
      function getQueryParams() {
        return w.location.href.split('?')[1] ? w.location.href.split('?')[1].replace(/=/g,':').split('&') : "";
      }
           
      dd.page.attributes.queryParameters = getQueryParams();
      var categoryObj = getCategories();
      dd.page.category.primaryCategory = categoryObj.primaryCategory;
      dd.page.pageInfo.destinationURL = w.location.href;
      dd.page.pageInfo.pageID = "login.ftl"; 
      dd.page.pageInfo.pageName = d.title.split("|")[0].trim();
      dd.page.pageInfo.title = d.title.trim();

      if ( d.referrer ) {
        var a = d.createElement("a");
        a.href = d.referrer;
        dd.page.pageInfo.referringDomain = a.hostname;
        dd.page.pageInfo.referringURL = a.href;
      }
      dd.page.pageInfo.sysEnv = ( w.innerWidth <= 768 ) ? "tablet" : "desktop";
      var elqGUID = getCookie( "rh_elqCustomerGUID" );
      
      var upi = dd.user[ 0 ].profile[ 0 ].profileInfo;
      
      if (elqGUID) {
        upi.eloquaGUID = elqGUID;
      }
      
      if(w.navigator){
        upi.userAgent = w.navigator.userAgent;
      }
      
      faddo(dd, upi);
            
    } )( window, document, digitalData );
    
</script> 
<script id="dpal" src="https://www.redhat.com/ma/dpal.js" type="text/javascript"></script>


        <meta name="robots" content="noindex, nofollow">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta property="og:type" content="website">
        <meta property="og:url" content="https://redhat.com/">
        <meta property="og:determiner" content="the">
        <meta property="og:site_name" content="Red Hat">
        <meta property="og:title" content="Red Hat">


<link rel="icon" href="/auth/resources/a7asx/login/rhd-theme/img/favicon.ico">

<!-- Patternfly Elements no-js fallback styles -->

<style>
.pfe-navigation {
    --pfe-navigation__nav-bar--highlight-color: #e00;
    --pfe-navigation__dropdown--highlight-color: #e00;
}
</style>

<link href="/auth/resources/a7asx/login/rhd-theme/dist/styles/patternfly.min.css" rel="stylesheet" />
<link href="/auth/resources/a7asx/login/rhd-theme/dist/styles/patternfly-addons.css" rel="stylesheet" />

        <link href="/auth/resources/a7asx/login/rhd-theme/dist/styles/main.css" rel="stylesheet" />

<!-- Required for lightdom styles -->
<link rel="stylesheet" href="/auth/resources/a7asx/login/rhd-theme/dist/pfelements/assets/bundle-CDjXsjNu.css" />
<style>
    rh-footer:not(:defined) {
        opacity: 0;
    }
</style>


<script type="text/javascript">
    (function(d) {
        // Not supported in IE11
        if (!d.currentScript) {
            var loginie11 = document.createElement('link');
            loginie11.href = "/auth/resources/a7asx/login/rhd-theme/css/login-ie11-9811430bc1.min.css"
            loginie11.rel = 'stylesheet';
            d.head.appendChild(loginie11);
        }
    })(document);
</script> 


<!-- Sentry -->
<script
  src="https://js.sentry-cdn.com/73604e6540bd413bb9d58ab4601b8aa8.min.js"
  crossorigin="anonymous"
  data-lazy="no"
></script>
<script>
  var host = window.location.hostname;
  if (host === "localhost") Sentry.init({environment:"localhost"});
  if (host === "sso.dev.redhat.com") Sentry.init({environment:"dev"});
  if (host === "sso.qa.redhat.com") Sentry.init({environment:"qa"});
  if (host === "sso.stage.redhat.com") Sentry.init({environment:"stage"});
  if (host === "sso.redhat.com") Sentry.init({environment:"production"});
</script>

<!-- unified nav and footer scripts -->
<script type="module">
  import "/auth/resources/a7asx/login/rhd-theme/dist/pfelements/bundle.js";
  await customElements.whenDefined("rh-footer");
</script>

<!-- Common JS -->
<script type="text/javascript">
    rhd = {
        config: {
            username: '',
            firstName: '',
            lastName: '',
            userEmail: '',
            regHintEmail: '',
            jobTitle: null,
            phoneNumber: null,
            user_profile_level: "rhfull",
            form_fields_visible: {"firstName": true,"lastName": true,"password": true,"address": true,"phoneNumber": true,"accountType": true,"confirmPassword": true,"company": true,"jobTitleSelect": true,"email": true},
            form_fields_required: {"firstName": true,"lastName": true,"password": true,"address": true,"phoneNumber": true,"accountType": true,"confirmPassword": true,"jobTitleSelect": true,"email": true},
            website_current: "ugc",
            email_strict_check: true,
            allow_duplicate_email: true,
            addressSubdivisionExpansionEnabled: false,
            displayRegistrationMessage: false,
            registrationMessage: '',
            registrationMessageType: '',
            displayRegistrationForm: true,
            displayEmailVerifyInstructions: false,
            displayUpdateProfileMessage: false,
            updateProfileMessage: '',
            updateProfileMessageType: '',
            isAutoUserRegFlow: false,
            skipValidation: false,
            formFields: [],
            formScope: ""
        }
    }
        rhd.config.loginUrl = "/auth/realms/redhat-external/login-actions/authenticate?client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0";
      rhd.config.registrationAction = "https://sso.redhat.com/auth/realms/redhat-external/login-actions/authenticate?session_code=FaU13KES-2gPTrTquW9IaWkY4ydukftf9b9s3ncnXI4&amp;execution=a0a6af2c-d0f7-472f-8be2-24a733d45517&amp;client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0";
    window.currentLanguageTag = "en";
</script>

<script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>



        <script src="/auth/resources/a7asx/login/rhd-theme/dist/scripts/vendors.js" type="text/javascript"></script>

<script>
    jQuery.extend( jQuery.validator.messages, {
        required: "This field is required",
        remote: "Please fix this field",
        url: "Please enter a valid URL",
        date: "Please enter a valid date",
        dateISO: "Please enter a valid date (ISO)",
        number: "Please enter a valid number",
        digits: "Please enter only digits",
        equalTo: "Please enter the same value again",
        maxlength: jQuery.validator.format( "Please enter no more than {0} characters" ),
        minlength: jQuery.validator.format( "Please enter at least {0} characters" ),
        rangelength: jQuery.validator.format( "Please enter a value between {0} and {1} characters long" ),
        range: jQuery.validator.format( "Please enter a value between {0} and {1}" ),
        max: jQuery.validator.format( "Please enter a value less than or equal to {0}" ),
        min: jQuery.validator.format( "Please enter a value greater than or equal to {0}" ),
        step: jQuery.validator.format( "Please enter a multiple of {0}" )
    } );
    jQuery.extend( jQuery.validator.messages, {
        phone: "This field may only contain the following characters (0-9) (+) (-) (space) (.).",
        bannedChars: "This field cannot contain the following special characters (&quot;) ($) (^) (&lt;) (&gt;) (|) (+) (%) (\\).",
        bannedCharsUsername: "Red Hat Login ID cannot contain spaces, national characters or the following special characters (&quot;) ($) (^) (&lt;) (&gt;) (|) (+) (%) (/) (;) (:) (,) () (*) (=) (~) (#) (() ()) (!) (&amp;)",
        remoteCustom: "Please fix this field"
    } );
</script>

        <script src="/auth/resources/a7asx/login/rhd-theme/dist/scripts/custom.js" type="text/javascript"></script>

    </head>

        <body id="rh-login" class="home  page">
            <a href="#rh-login-card" class="visually-hidden focusable skip-link">
                Skip to main content
            </a>
            <div class="layout-container">


<pfe-navigation id="pfe-navigation" role="banner">
    <nav class="pfe-navigation" aria-label="Main Navigation">
        <div class="pfe-navigation__logo-wrapper" id="pfe-navigation__logo-wrapper">
            <a href="https://redhat.com" class="pfe-navigation__logo-link">
                <img class="pfe-navigation__logo-image pfe-navigation__logo-image--screen pfe-navigation__logo-image--print pfe-navigation__logo-image--small" src="/auth/resources/a7asx/login/rhd-theme/img/RHLogo_white.svg" width="400" alt="Red Hat logo" />
            </a>
        </div>
    </nav>
    
    <div slot="secondary-links" class="pfe-navigation__site-switcher">
        <button class="pfe-navigation__secondary-link">
            <pfe-icon icon="web-icon-grid-3x3" size="sm" aria-hidden="true"></pfe-icon>
            All Red Hat
        </button>
        <pfe-navigation-dropdown dropdown-width="full">
        <site-switcher lang='en' class="pf-u-px-xl"></site-switcher>
        </pfe-navigation-dropdown>
        
    </div>

        <div slot="account">
            <a href="/auth/realms/redhat-external/login-actions/registration?client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0">
                <pfe-icon icon="web-icon-user" pfe-size="md" aria-hidden="true"></pfe-icon>
                Register
            </a>
        </div>
</pfe-navigation>

    <div class="pf-c-banner pf-m-warning">
        <div class="pf-l-flex pf-m-space-items pf-u-flex-nowrap pf-u-py-xs"
             style="text-wrap: auto; max-width: 1150px; margin: 0 auto;">
            <div class="pf-l-flex__item">
                <span class="pf-screen-reader">Warning banner:</span>
                <i class="fas fa-exclamation-triangle" aria-hidden="true"></i>
            </div>
            <div class="pf-l-flex__item">
                The ability to log in with an email address is no longer supported. Users must log in with their login
                (username). Don’t know your login(s)? Click "Forgot your login?" to recover your login.
                Note: Some users may have a login that matches their email address. These users will be unaffected. For
                localized versions of this message, click <a href="https://access.redhat.com/articles/7123070"
                                                             target="_blank"
                                                             aria-label="click here to see a translation of this message">here</a>.
            </div>
        </div>
    </div>


                <main id="rh-login-card" role="main">
                    <div id="rh-login-container" class="pf-c-login pf-u-pt-3xl">
                        <div class="pf-c-login__container">

            <div id="rh-login-form" class="pf-c-login__main pf-u-display-flex pf-u-flex-direction-column pf-u-justify-content-space-between">
        <div class="pf-c-login__main-header pf-u-pb-xl" style="column-gap:0">
            <h1 id="rh-login-form-title" class="pf-c-title pf-m-3xl pf-c-spacer-2xl">Log in to your Red Hat account</h1>
        </div>
                <div id="login-container" class="pf-c-login__main-body pf-u-pb-0">


    <div id="rh-login-form-alert" class="pf-c-alert pf-m-inline pf-m-danger pf-u-mb-lg pf-u-display-none" aria-label="Danger Alert" data-ouia-component-type="PF4/Alert" data-ouia-safe="true" data-ouia-component-id="OUIA-Generated-Alert-danger-1" aria-live="polite" data-multiple-logins-title="Email address associated with multiple logins" data-multiple-logins-body="To access your account, use your login instead." data-access-denied-title="Access Denied" data-access-denied-body="The login information was not recognized. Please refresh your browser and try again, or try with a different device.">
        <div class="pf-c-alert__icon">
            <i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i>
        </div>
        <h4 class="pf-c-alert__title">
            <span class="pf-u-screen-reader">Danger alert:</span>
            <span id="rh-login-form-error-title">
            </span>
        </h4>
        <div id="rh-login-form-error-body" class="pf-c-alert__description">
        </div>
    </div>
                    <div id="rh-login-body-wrapper">
                        <div id="rh-login-slide-in-container" class="slide-in-container pf-u-mb-xl">
                            <section id="rh-username-verification" class="rh-slide-in show">
    <!-- error displayed in the event of a timeout after submitting user/email -->
    <div id="rh-login-form-alert-username" class="pf-c-alert pf-m-inline pf-m-danger pf-u-mb-lg pf-u-display-none" aria-label="Danger Alert" data-ouia-component-type="PF4/Alert" data-ouia-safe="true" data-ouia-component-id="OUIA-Generated-Alert-danger-1" aria-live="polite" >
      <div class="pf-c-alert__icon">
          <i class="fas fa-fw fa-exclamation-circle" aria-hidden="true"></i>
      </div>
      
      <h4 class="pf-c-alert__title">
          <span id="rh-login-form-error-title">
              Log in attempt timed out
          </span>
      </h4>
      
      <div id="rh-login-form-error-body" class="pf-c-alert__description">
          <p>Resubmit your information.</p>
      </div>
    </div>
    
    <form id="rh-username-verification-form" class="pf-c-form" novalidate>
        <div class="pf-c-form__group">
            <div class="pf-c-form__group-label">
                <label class="pf-c-form__label" for="username-verification">
                    <span class="pf-c-form__label-text"> Red Hat login</span>
                </label> 
            </div>
            <input class="pf-c-form-control" required
                type="text" id="username-verification" name="username"
                x-autocompletetype="username"
                data-msg-required="Red Hat login is required"
                value=""
                aria-invalid="false"
                aria-describedby="username-verification-error"
                tabindex="1"
                autofocus
                
            />
            <p class="pf-c-form__helper-text pf-m-error hide-error-text" id="username-verification-error-message" aria-live="polite">
                <span class="pf-c-form__helper-text-icon">
                    <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
                </span>
                <span id="username-verification-error"></span>
            </p>
        </div>
        <div class="pf-c-form__group pf-m-action"> 
            <button id="login-show-step2"  tabindex="2" class="rh-form-submission-button pf-c-button pf-m-block" data-text-static="Next" data-text-processing="Verifying ...">Next</button>
        </div>


    </form>
    <script>
        $().ready(new function() {
            // if the timeout variable is present in the url, display the error message
            util.checkForTimeout();
        });
        
        // eddl form engaged
        window.appEventData = window.appEventData || [];
        
        // Form viewed event
        document.addEventListener('DOMContentLoaded', function() {
            appEventData.push({
                "event": "Form Viewed",
                "form": {
                    "formField": [
                        {
                            "fieldID": "rh-username-verification-form"
                        }
                    ],
                    "formName": "rh-username-verification-form",
                    "formType": "Login",
                    "formScope": "username~password",
                    "loginMethod": "username/password"
                }
            });
        }, { once: true });

        // Events triggered on engagement with form
        const usernameField = document.getElementById("username-verification")
        usernameField.addEventListener("change", (event) => {
            // Form started event
            appEventData.push({
                "event": "Form Started",
                "form": {
                    "formField": [
                        {
                            "formName": "rh-username-verification-form",
                        }
                    ],
                    "formName": "rh-username-verification-form",
                    "formType": "Login",
                    "formScope": "username~password",
                    "loginMethod": "username/password"
                }
            });
            // Form field engaged event
            appEventData.push({
            "event": "Form Field Engaged",
                "form": {
                    "formField": [
                        {
                            "fieldID": "username-verification"
                        }
                    ],
                    "formName": "rh-username-verification-form",
                    "formType": "Login",
                    "formScope": "username~password",
                    "loginMethod": "username/password"
                }
            });
        }, { once: true });
    </script>
                            </section>
                            <section id="rh-auth-flow-verification" class="rh-slide-in">
    <form id="rh-auth-flow-verification-form" class="pf-c-form pf-c-form pf-u-h-100 pf-u-display-flex pf-u-flex-direction-column pf-u-justify-content-space-between" novalidate>
        <div class="pf-c-form__group rh-verification-form-input-group"> 
            <div class="pf-c-form__group-label">
                <label class="pf-c-form__label" for="username"> 
                    <span class="pf-c-form__label-text"> Red Hat login</span> 
                </label>
            </div>
            <div class="pf-c-input-group">
                <input  class="pf-c-form-control"  input="true" type="text" id="rh-af-username" name="username" readonly value="">
                <button id="rh-af-edit-username" class="pf-c-button pf-m-control" type="button" aria-label="">    
                    <i class="fas fa-times-circle" aria-label="Edit Username" title="Edit Username"></i>  
                </button>
            </div>
        </div>

        <div id="multiIDPFlow" class="pf-c-form__actions pf-m-action"></div>

        <div id="binaryIDPFlow" class="pf-c-form__actions pf-m-action">
            <button 
                id="rh-sso-flow" 
                type="button"
                class="pf-c-button pf-m-secondary rh-auth-flow-selection-button" 
                data-analytics-linktype="cta"
                data-analytics-category="Auth flow"
                data-analytics-text="Log in with IDP"
            >
                Log in with company single sign-on
            </button>
            <button 
                id="rh-login-flow" 
                type="button"
                class="pf-c-button pf-m-secondary rh-auth-flow-selection-button" 
                data-analytics-linktype="cta"
                data-analytics-category="Auth flow"
                data-analytics-text="Log in with Red Hat SSO"
            >
                Log in with Red Hat account
            </button>
        </div>
    </form> 

    <script>
        window.appEventData = window.appEventData || [];
        const submitButtonIdp = document.getElementById("rh-sso-flow");
        // eddl form submitted
        submitButtonIdp.addEventListener("click", (event) => {
            appEventData.push({
                "event": "Form Submission Succeeded",
                "form": {
                    "formName": "rh-auth-flow-verification-form",
                    "formScope": "Login",
                    "formType": "authentication",
                    "hashedEmail": "",
                    "loginMethod": "Federated IDP"
                }
            });
        });
    </script>
                            </section>
                            <section id="rh-password-verification" class="rh-slide-in ">

    <form id="rh-password-verification-form" class="pf-c-form" novalidate action="https://sso.redhat.com/auth/realms/redhat-external/login-actions/authenticate?session_code=FaU13KES-2gPTrTquW9IaWkY4ydukftf9b9s3ncnXI4&amp;execution=a0a6af2c-d0f7-472f-8be2-24a733d45517&amp;client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0" onsubmit="preventFormDoubleClick(event)" method="post">
        <div class="pf-c-form__group"> 
            <div class="pf-c-form__group-label">
                <label class="pf-c-form__label" for="username"> 
                    <span class="pf-c-form__label-text"> Red Hat login</span> 
                </label>
            </div>
            <div class="pf-c-input-group">
                <input  class="pf-c-form-control" input="true" type="text" id="username" name="username" readonly value="">
                <button id="rh-pw-edit-username" class="pf-c-button pf-m-control" type="button" aria-label="">    
                    <i class="fas fa-times-circle" aria-label="Edit Username" title="Edit Username"></i>  
                </button>
            </div>
        </div>
            <div class="pf-c-form__group"> 
                <div class="pf-c-form__group-label">
                    <label class="pf-c-form__label" for="password"> 
                        <span class="pf-c-form__label-text">Password</span> 
                    </label>
                </div>
                <div class="pf-c-input-group">
                    <input class="pf-c-form-control"
                        input="true" type="password" id="password" name="password" maxlength="256"
                        x-autocompletetype="current-password"
                        data-msg-required="Password is required" aria-invalid="false"
                    />
                    <button id="rh-pw-password-toggle" class="pf-c-button pf-m-control" type="button" aria-label="Show Password" title="Show Password" aria-pressed="false">    
                        <i class="fas fa-eye"></i>  
                    </button>
                </div>
                <p class="pf-c-form__helper-text pf-m-error hide-error-text" id="password-verification-error-message" aria-live="polite">
                  <span class="pf-c-form__helper-text-icon">
                    <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
                  </span>
                    <span id="password-error"></span>
                </p>
            </div>
        
        
        <div class="pf-c-form__group pf-m-action">
            <button 
                type="submit" 
                id="rh-password-verification-submit-button" 
                class="pf-c-button rh-form-submission-button" 
                data-value-processing="Logging in ..."
                data-analytics-linktype="cta"
                data-analytics-category="SSO log in"
                data-analytics-text="Log in"
            >
               Log in
            </button>
        </div>
    </form> 

    <script>
        window.appEventData = window.appEventData || [];
        const passwordField = document.getElementById("password")
        const submitButton = document.getElementById("rh-password-verification-submit-button")
        // Form field engaged event
        passwordField.addEventListener("change", (event) => {
            appEventData.push({
            "event": "Form Field Engaged",
                "form": {
                    "formField": [
                        {
                            "fieldID": passwordField
                        }
                    ],
                    "formName": "rh-password-verification-form",
                    "formType": "Login",
                    "formScope": "username~password",
                    "loginMethod": "username/password"
                }
            });
        }, { once: true });

        // eddl form submitted
        const submitButtonPw = document.getElementById("rh-password-verification-submit-button");
        submitButtonPw.addEventListener("click", (event) => {
            appEventData.push({
                "event": "Form Submission Succeeded",
                "form": {
                    "formName": "rh-username-verification-form",
                    "formType": "Login",
                    "formScope": "username~password",
                    "hashedEmail": "",
                    "loginMethod": "username/password"
                }
            });
        });
    </script>
                            </section>
                        </div>
                    </div>
                </div>

    <div class="pf-c-login__main-footer">
        <div class="pf-c-login__main-footer-band">
                <a id="rh-registration-link" href="/auth/realms/redhat-external/login-actions/registration?client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0" class="pf-c-button pf-m-link pf-m-inline pf-m-display-lg" aria-label="Register Link">
                    Register for a Red Hat account
                    <span class="pf-c-button__icon pf-m-end">
                        <i class="fas fa-arrow-right" aria-hidden="true"></i>
                    </span>
                </a>
                <p class="pf-c-login__main-footer-band-item"> 
                        <a id="reset-password" href="/auth/realms/redhat-external/login-actions/reset-credentials?client_id=https%3A%2F%2Fwww.redhat.com%2Fwapps%2Fugc-oidc&amp;tab_id=4Mysc1DPF58&amp;client_data=eyJydSI6Imh0dHBzOi8vd3d3LnJlZGhhdC5jb20vd2FwcHMvdWdjL3Nzby9sb2dpbiIsInJ0IjoiY29kZSIsInN0IjoiODFlNGIyNjItYzg4OS00MDI2LTljMDctYjFjOGUwYmRjYjBmIn0">Forgot your password?</a>
                </p>
                    <p class="pf-c-login__main-footer-band-item">
                        <a id="forgot-login" href="https://sso.redhat.com/auth/realms/redhat-external/protocol/openid-connect/auth?client_id=forgot-login&amp;response_type=code">Forgot your login?</a>
                    </p>
        </div>
    </div>

                <script type="text/javascript">
                    util.adaptProgressiveProfileLevel();
                </script>
            </div>
	            
            <script type="text/javascript">
                $().ready(new function() {
                    let err = [];
                    let step = "rh-username-verification";
                    showHidePasswordCfg.wrapper.element = $("#passwordWrapper");
                    loginForm.init($('#rh-password-verification-form'),err, step, 'FaU13KES-2gPTrTquW9IaWkY4ydukftf9b9s3ncnXI4', '4Mysc1DPF58', 'https://www.redhat.com/wapps/ugc-oidc');
                });
            </script>
                            
                            <footer class="pf-c-login__footer">
                                    <div id="pf-c-content"> 
                                        <h2 class="pf-c-title pf-m-3xl pf-u-mt-xl pf-u-pt-md">Why create an account?</h2>
                                        <ul class="pf-c-list pf-m-plain pf-m-icon-lg">
                                            <li class="pf-c-list__item pf-u-display-flex pf-u-align-items-center pf-u-mb-xl">
                                                <span class="pf-c-list__item-icon pf-u-pr-sm">
                                                    <img alt="price tag" src="/auth/resources/a7asx/login/rhd-theme/img/pricetag.png" />
                                                </span>
                                                <div>
                                                    <h3 class="pf-c-title pf-m-lg pf-u-mb-xs">Product trials</h3>
                                                    <span class="pf-c-list__item-text">Try our products hands-on to see if they’ll work for you.</span>
                                                </div>
                                            </li>
                                            <li class="pf-c-list__item pf-u-display-flex pf-u-align-items-center pf-u-mb-xl">
                                                <span class="pf-c-list__item-icon pf-u-pr-sm">
                                                    <img alt="book" src="/auth/resources/a7asx/login/rhd-theme/img/book.png" />
                                                </span>
                                                <div>
                                                    <h3 class="pf-c-title pf-m-lg pf-u-mb-xs">Learning resources</h3>
                                                    <span class="pf-c-list__item-text">Get training and learning tools to help you use our products.</span>
                                                </div>
                                            </li>
                                            <li class="pf-c-list__item pf-u-display-flex pf-u-align-items-center pf-u-mb-xl">
                                                <span class="pf-c-list__item-icon pf-u-pr-sm">
                                                    <img alt="headphones and mic" src="/auth/resources/a7asx/login/rhd-theme/img/support.png" />
                                                </span>
                                                <div>
                                                    <h3 class="pf-c-title pf-m-lg pf-u-mb-xs">World-class support</h3>
                                                    <span class="pf-c-list__item-text">Rely on our trusted customer support and partner enablement.</span>
                                                </div>
                                            </li>
                                        </ul>
                                        <p class="pf-u-mt-2xl pf-u-mb-lg pf-u-font-size-xs pf-u-font-weight-light">A subscription may be required for some services.</p>
                                    </div>
                            </footer>
                        </div>
                    </div>
                </main>
<rh-footer data-analytics-region="page-footer">
  <a slot="logo" href="https://redhat.com/en" data-analytics-category="Footer" data-analytics-text="Logo">
    <img alt="Red Hat logo" src="https://static.redhat.com/libs/redhat/brand-assets/2/corp/logo--on-dark.svg"
      loading="lazy" />
  </a>
  <rh-footer-social-link slot="social-links" icon="linkedin" href="https://www.linkedin.com/company/red-hat"
    data-analytics-region="social-links-exit" data-analytics-category="Footer|social-links"
    data-analytics-text="LinkedIn" accessible-label="LinkedIn"></rh-footer-social-link>
  <rh-footer-social-link slot="social-links" icon="youtube" href="https://www.youtube.com/user/RedHatVideos"
    data-analytics-region="social-links-exit" data-analytics-category="Footer|social-links"
    data-analytics-text="YouTube" accessible-label="YouTube"></rh-footer-social-link>
  <rh-footer-social-link slot="social-links" icon="facebook" href="https://www.facebook.com/redhatinc"
    data-analytics-region="social-links-exit" data-analytics-category="Footer|social-links"
    data-analytics-text="Facebook" accessible-label="Facebook"></rh-footer-social-link>
  <rh-footer-social-link slot="social-links" icon="x" href="https://twitter.com/RedHat"
    data-analytics-region="social-links-exit" data-analytics-category="Footer|social-links"
    data-analytics-text="Twitter" accessible-label="X/Twitter"></rh-footer-social-link>
  <h3 slot="links" data-analytics-text="Products">Products</h3>
  <ul slot="links">
    <li><a href="https://redhat.com/en/technologies/linux-platforms/enterprise-linux"
        data-analytics-category="Footer|Products" data-analytics-text="Red Hat Enterprise Linux">Red Hat Enterprise
        Linux</a></li>
    <li><a href="https://redhat.com/en/technologies/cloud-computing/openshift" data-analytics-category="Footer|Products"
        data-analytics-text="Red Hat OpenShift">Red Hat OpenShift</a></li>
    <li><a href="https://redhat.com/en/technologies/management/ansible" data-analytics-category="Footer|Products"
        data-analytics-text="Red Hat Ansible Automation Platform">Red Hat Ansible Automation Platform</a></li>
    <li><a href="https://redhat.com/en/technologies/cloud-computing/openshift/cloud-services"
        data-analytics-category="Footer|Products" data-analytics-text="Cloud services">Cloud services</a></li>
    <li><a href="https://redhat.com/en/technologies/all-products" data-analytics-category="Footer|Products"
        data-analytics-text="See all products">See all products</a></li>
  </ul>
  <h3 slot="links" data-analytics-text="Tools">Tools</h3>
  <ul slot="links">
    <li><a href="https://sso.redhat.com" data-analytics-category="Footer|Tools" data-analytics-text="My account">My
        account</a></li>
    <li><a href="https://redhat.com/en/services/training-and-certification" data-analytics-category="Footer|Tools"
        data-analytics-text="Training and certification">Training and certification</a></li>
    <li><a href="https://access.redhat.com" data-analytics-category="Footer|Tools"
        data-analytics-text="Customer support">Customer support</a></li>
    <li><a href="https://developers.redhat.com/" data-analytics-category="Footer|Tools"
        data-analytics-text="Developer resources">Developer resources</a></li>
    <li><a href="https://learn.redhat.com/" data-analytics-category="Footer|Tools"
        data-analytics-text="Learning community">Learning community</a></li>
    <li><a href="https://connect.redhat.com/" data-analytics-category="Footer|Tools"
        data-analytics-text="Partner resources">Partner resources</a></li>
    <li><a href="https://redhat.com/en/resources" data-analytics-category="Footer|Tools"
        data-analytics-text="Resource library">Resource library</a></li>
  </ul>
  <h3 slot="links" data-analytics-text="Try buy sell">Try, buy & sell</h3>
  <ul slot="links">
    <li><a href="https://redhat.com/en/products/trials" data-analytics-category="Footer|Try buy sell"
        data-analytics-text="Product trial center">Product trial center</a></li>
    <li><a href="https://marketplace.redhat.com" data-analytics-category="Footer|Try buy sell"
        data-analytics-text="Red Hat Marketplace">Red Hat Marketplace</a></li>
    <li><a href="https://catalog.redhat.com/" data-analytics-category="Footer|Tools"
        data-analytics-text="Red Hat Ecosystem Catalog">Red Hat Ecosystem Catalog</a></li>
    <li><a href="http://redhat.force.com/finder/" data-analytics-category="Footer|Try buy sell"
        data-analytics-text="Find a partner">Find a partner</a></li>
    <li><a href="https://www.redhat.com/en/store" data-analytics-category="Footer|Try buy sell"
        data-analytics-text="Red Hat Store">Red Hat Store</a></li>
    <li><a href="https://cloud.redhat.com/" data-analytics-category="Footer|Tools"
        data-analytics-text="Console">Console</a></li>
  </ul>
  <h3 slot="links" data-analytics-text="Communicate">Communicate</h3>
  <ul slot="links">
    <li><a href="https://redhat.com/en/services/consulting-overview#contact-us"
        data-analytics-category="Footer|Communicate" data-analytics-text="Contact consulting">Contact consulting</a>
    </li>
    <li><a href="https://redhat.com/en/contact" data-analytics-category="Footer|Communicate"
        data-analytics-text="Contact sales">Contact sales</a></li>
    <li><a href="https://redhat.com/en/services/training-and-certification/contact-us"
        data-analytics-category="Footer|Communicate" data-analytics-text="Contact training">Contact training</a></li>
    <li><a href="https://redhat.com/en/about/social" data-analytics-category="Footer|Communicate"
        data-analytics-text="Social">Social</a></li>
  </ul>
  <rh-footer-block slot="main-secondary">
    <h3 slot="header" data-analytics-text="About Red Hat">About Red Hat</h3>
    <p> We’re the world’s leading provider of enterprise open source solutions—including Linux, cloud, container, and
      Kubernetes. We deliver hardened solutions that make it easier for enterprises to work across platforms and
      environments, from the core datacenter to the network edge.</p>
  </rh-footer-block>

  <!-- Universal Footer -->
  <rh-footer-universal slot="universal">
    <h3 slot="links-primary" data-analytics-text="Red Hat legal and privacy links" hidden>Red Hat legal and privacy
      links</h3>
    <ul slot="links-primary" data-analytics-region="page-footer-bottom-primary">
      <li><a href="https://redhat.com/en/about/company" data-analytics-category="Footer|Corporate"
          data-analytics-text="About Red Hat">About Red Hat</a></li>
      <li><a href="https://redhat.com/en/jobs" data-analytics-category="Footer|Corporate"
          data-analytics-text="Jobs">Jobs</a></li>
      <li><a href="https://redhat.com/en/events" data-analytics-category="Footer|Corporate"
          data-analytics-text="Events">Events</a></li>
      <li><a href="https://redhat.com/en/about/office-locations" data-analytics-category="Footer|Corporate"
          data-analytics-text="Locations">Locations</a></li>
      <li><a href="https://redhat.com/en/contact" data-analytics-category="Footer|Corporate"
          data-analytics-text="Contact Red Hat">Contact Red Hat</a></li>
      <li><a href="https://redhat.com/en/blog" data-analytics-category="Footer|Corporate"
          data-analytics-text="Red Hat Blog">Red Hat Blog</a></li>
      <li><a href="https://www.redhat.com/en/about/our-culture/inclusion" data-analytics-category="Footer|Corporate"
          data-analytics-text="Inclusion at Red Hat">Inclusion at Red Hat</a></li>
      <li><a href="https://coolstuff.redhat.com/" data-analytics-category="Footer|Corporate"
          data-analytics-text="Cool Stuff Store">Cool Stuff Store</a></li>
      <li><a href="https://www.redhat.com/en/summit" data-analytics-category="Footer|Corporate"
          data-analytics-text="Red Hat Summit">Red Hat Summit</a></li>
    </ul>
    <rh-footer-copyright slot="links-secondary">© <span id="copyrightYear"></span> Red Hat</rh-footer-copyright>
    <h3 slot="links-secondary" data-analytics-text="Red Hat legal and privacy links" hidden>Red Hat legal and privacy
      links</h3>
    <ul slot="links-secondary" data-analytics-region="page-footer-bottom-secondary">
      <li><a href="https://redhat.com/en/about/privacy-policy"
          data-analytics-category="Footer|Red Hat legal and privacy links"
          data-analytics-text="Privacy statement">Privacy statement</a></li>
      <li><a href="https://redhat.com/en/about/terms-use"
          data-analytics-category="Footer|Red Hat legal and privacy links" data-analytics-text="Terms of use">Terms of
          use</a></li>
      <li><a href="https://redhat.com/en/about/all-policies-guidelines"
          data-analytics-category="Footer|Red Hat legal and privacy links"
          data-analytics-text="All policies and guidelines">All policies and guidelines</a></li>
      <li><a href="https://redhat.com/en/about/digital-accessibility"
          data-analytics-category="Footer|Red Hat legal and privacy links" data-analytics-text="Digital accessibility"
          class="active">Digital accessibility</a></li>
      <li><span id="teconsent" style="line-height: 1.1;"> </span></li>
    </ul>
  </rh-footer-universal>
</rh-footer>

<div id="consent_blackbar" style="position: fixed;bottom: 0;width: 100%;z-index: 5;padding: 10px;"></div>

<script>
  const currentDate = new Date();
  const copyrightYear = currentDate.getFullYear();
  document.addEventListener('DOMContentLoaded', function () {
    document.getElementById("copyrightYear").innerText = copyrightYear;
  });
</script>
            </div>
<script>
    initHeaderDropdown();
    initMobileMenu();

    function loadHighlightStyle() {
        var root = document.documentElement;
        root.style.setProperty('--pfe-navigation__nav-bar--highlight-color', '#e00');
        root.style.setProperty('--pfe-navigation__dropdown--highlight-color', '#e00');
    }
    window.addEventListener("load", loadHighlightStyle);
</script>

<script type="text/javascript">  
    if (("undefined" !== typeof _satellite) && ("function" === typeof _satellite.pageBottom)) {  
        _satellite.pageBottom();  
    } 
    $().ready(new function() {
      sendAsyncUDEvent();
    });
</script>   
<script type="text/javascript">  
  window.appEventData = window.appEventData || [];
  appEventData.push({
    'event': 'Page Load Completed',
  });
</script>


        </body>
    </html>
