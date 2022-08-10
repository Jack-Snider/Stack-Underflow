<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html class="html__responsive html__unpinned-leftnav" lang="en">
	
	<head>
		<!-- 
		
			최초 수정자 : Jack Snider
			수정하기 시작한 라인 : 613
			Tip : Ctrl + f 눌러서 Jack Snider 검색하면 필자가 주석으로 감싸놓은 부분이 수정된 코드임을 쉽게 볼 수 있음.
			
			- Ctrl + f 검색 키워드 -
			1. Jack Snider 01 ==> 회원가입 입력폼
			2. Jack Snider 02 ==> 우측 상단 Sign up 버튼
			3. Jack Snider 03 ==> 우측 상단 Log in 버튼
			4. Jack Snider 04 ==> 회원가입 페이지 좌측에 있던 폼 주석처리
			5. Jack Snider 05 ==> 로고
			
			- 전달사항 -
			1. BootStrap 쓸거면 무조건 5.2버전 사용할것.
		
		 -->
        <title>Sign Up - Stack Overflow</title>
        <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/Img/favicon.ico?v=ec617d715196">
        <link rel="apple-touch-icon" href="https://cdn.sstatic.net/Sites/stackoverflow/Img/apple-touch-icon.png?v=c78bd457575a">
        <link rel="image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/Img/apple-touch-icon.png?v=c78bd457575a"> 
        <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
    	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0">
        <meta property="og:type" content= "website" />
        <meta property="og:url" content="https://stackoverflow.com/users/signup?ssrc=head&amp;returnurl=https%3a%2f%2fstackoverflow.com%2f"/>
        <meta property="og:site_name" content="Stack Overflow" />
        <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/Img/apple-touch-icon@2.png?v=73d79a89bded" />
        <meta name="twitter:card" content="summary"/>
        <meta name="twitter:domain" content="stackoverflow.com"/>
        <meta name="twitter:title" property="og:title" itemprop="name" content="Sign Up" />
        <meta name="twitter:description" property="og:description" itemprop="description" content="Stack Overflow | The World&#x2019;s Largest Online Community for Developers" />
	    <script id="webpack-public-path" type="text/uri-list">https://cdn.sstatic.net/</script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <script async src="https://cdn.sstatic.net/Js/third-party/npm/@stackoverflow/stacks/dist/js/stacks.min.js?v=ab1405598e13"></script>
	    <script src="https://cdn.sstatic.net/Js/stub.en.js?v=e6d116cd69f1"></script>
	
	
	    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Shared/stacks.css?v=80fd497d7932">
	    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/primary.css?v=c4ee49e98adf">

        <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/secondary.css?v=6793be5668e3">

    
    	<script src="https://cdn.sstatic.net/Js/auth.en.js?v=2a14105a7b9b"></script>

        
        <!-- BootStrap v5.2 -->
        <!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Shared/Channels/channels.css?v=c5f00504238a">
        
        
        


    <script type="application/json" data-role="module-args" data-module-name="Shared/options.mod">{"options":{"locale":"en","serverTime":1660032572,"routeName":"Users/Signup","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","site":{"name":"Stack Overflow","description":"Q\u0026A for professional and enthusiast programmers","isNoticesTabEnabled":true,"enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"cookieDomain":".stackoverflow.com","childUrl":"https://meta.stackoverflow.com","negativeVoteScoreFloor":null,"enableSocialMediaInSharePopup":true,"protocol":"https"},"user":{"fkey":"f8a6dc1dd33a9522b7177f9b9127a90de52ef6d89c73cb58505079e03ab6ea75","tid":"9d370ffa-1857-aa40-82cd-88bd5ac01051","rep":0,"isAnonymous":true,"isAnonymousNetworkWide":true},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"svgIconPath":"https://cdn.sstatic.net/Img/stacks-icons","svgIconHash":"e07884e71a43"}}</script>
<script type="application/json" data-role="module-args" data-module-name="Shared/settings.mod">{"settings":{"userMessaging":{"showNewFeatureNotice":true},"tags":{},"subscriptions":{"defaultBasicMaxTrueUpSeats":250,"defaultFreemiumMaxTrueUpSeats":50,"defaultMaxTrueUpSeats":1000},"snippets":{"renderDomain":"stacksnippets.net","snippetsEnabled":true},"site":{"allowImageUploads":true,"enableImgurHttps":true,"enableUserHovercards":true,"forceHttpsImages":true,"styleCode":true},"questions":{"enableQuestionTitleLengthLiveWarning":true,"maxTitleSize":150,"questionTitleLengthStartLiveWarningChars":50},"intercom":{"appId":"inf0secd","hostBaseUrl":"https://stacksnippets.net"},"paths":{},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000},"mentions":{"maxNumUsersInDropdown":50},"markdown":{"enableTables":true},"legal":{"oneTrustConfigId":"c3d9f1e3-55f3-4eba-b268-46cee4c6789c"},"flags":{"allowRetractingCommentFlags":true,"allowRetractingFlags":true},"elections":{"opaVoteResultsBaseUrl":"https://www.opavote.com/results/"},"comments":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true}}}</script>
<script>StackExchange.init();</script>

    <script>
        StackExchange.using.setCacheBreakers({"Js/adops.en.js":"6da43f5e0a84","Js/ask.en.js":"7ff9a9068fd6","Js/begin-edit-event.en.js":"dd955babf04d","Js/copy-transpiled.en.js":"e7855bee94f2","Js/events.en.js":"","Js/explore-qlist.en.js":"2b1f34938b8b","Js/full-anon.en.js":"28d225f74a6a","Js/full.en.js":"7f0d3134c0b9","Js/highlightjs-loader.en.js":"a284064706b3","Js/inline-tag-editing.en.js":"77f922e6e562","Js/keyboard-shortcuts.en.js":"fa78d9020f1f","Js/markdown-it-loader.en.js":"5818ef89ff9d","Js/moderator.en.js":"df5a2eb14f4c","Js/postCollections-transpiled.en.js":"529276cfb7ae","Js/post-validation.en.js":"20338c0583f2","Js/question-editor.en.js":"","Js/review-v2-transpiled.en.js":"d5efdefd09e8","Js/revisions.en.js":"a86490719687","Js/stacks-editor.en.js":"eba9dea7a25c","Js/tageditor.en.js":"825c9597ce2d","Js/tageditornew.en.js":"888f5725a14b","Js/tagsuggestions.en.js":"1bcff7d98f97","Js/unlimited-transpiled.en.js":"7ed67670b600","Js/wmd.en.js":"f2f7681a81e3","Js/snippet-javascript-codemirror.en.js":"73fce5cc7219"});
        StackExchange.using("gps", function() {
             StackExchange.gps.init(true);
        });
    </script>
    <noscript id="noscript-css"><style>body,.s-topbar{margin-top:1.9em}</style></noscript>
    </head>
    <body class="universal-auth-page unified-theme floating-content">
    <div id="notify-container"></div>
    <div id="custom-header"></div>
        
<header class="s-topbar ps-fixed t0 l0 js-top-bar">
    <div class="s-topbar--container">
            <a href="#" class="s-topbar--menu-btn js-left-sidebar-toggle" role="menuitem" aria-haspopup="true" aria-controls="left-sidebar" aria-expanded="false"><span></span></a>
            <div class="topbar-dialog leftnav-dialog js-leftnav-dialog dno">
                <div class="left-sidebar js-unpinned-left-sidebar" data-can-be="left-sidebar" data-is-here-when="sm md lg"></div>
            </div>
            	
            	<!-- Jack Snider 05 begins -->
                <a href="home.jsp" class="s-topbar--logo js-gps-track"
                    data-gps-track="top_nav.click({is_current:false, location:27, destination:8})">
                    <span class="-img _glyph">Stack Overflow</span>
                </a>
                <!-- Jack Snider 05 ends -->



            <ol class="s-navigation" role="presentation">

                    <li class="md:d-none">
                        <a href="https://stackoverflow.co/" class="s-navigation--item js-gps-track"
                           data-gps-track="top_nav.products.click({location:27, destination:7})"
                            data-ga="[&quot;top navigation&quot;,&quot;about menu click&quot;,null,null,null]">About</a>
                    </li>

                <li>
                    <a href="#"
                        class="s-navigation--item js-gps-track js-products-menu"
                        aria-controls="products-popover"
                        data-controller="s-popover"
                        data-action="s-popover#toggle"
                        data-s-popover-placement="bottom"
                        data-s-popover-toggle-class="is-selected"
                        data-gps-track="top_nav.products.click({location:27, destination:1})"
                        data-ga="[&quot;top navigation&quot;,&quot;products menu click&quot;,null,null,null]">
                        Products
                    </a>
                </li>

                    <li class="md:d-none">
                        <a href="/teams" class="s-navigation--item js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:7})"
                            data-ga="[&quot;top navigation&quot;,&quot;learn more - teams&quot;,null,null,null]">For Teams</a>
                    </li>
            </ol>
            <div class="s-popover ws2 mtn2 p0"
                    id="products-popover"
                    role="menu"
                    aria-hidden="true">
                <div class="s-popover--arrow"></div>
                <ol class="list-reset s-anchors s-anchors__inherit">
                    <li class="m6">
                        <a href="/questions" class="bar-sm p6 d-block h:bg-black-100 js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:2})"
                            data-ga="[&quot;top navigation&quot;,&quot;public qa submenu click&quot;,null,null,null]">
                            <span class="fs-body1 d-block">Stack Overflow</span>
                            <span class="fs-caption d-block fc-light">Public questions &amp; answers</span>
                        </a>
                    </li>
                    <li class="m6">
                        <a href="/teams" class="bar-sm p6 d-block h:bg-black-100 js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:3})"
                            data-ga="[&quot;top navigation&quot;,&quot;teams submenu click&quot;,null,null,null]">
                            <span class="fs-body1 d-block">Stack Overflow for Teams</span>
                            <span class="fs-caption d-block fc-light">Where developers &amp; technologists share private knowledge with coworkers</span>
                        </a>
                    </li>
                    <li class="m6">
                        <a href="https://stackoverflow.co/talent" class="bar-sm p6 d-block h:bg-black-100 js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:5})"
                            data-ga="[&quot;top navigation&quot;,&quot;talent submenu click&quot;,null,null,null]">
                            <span class="fs-body1 d-block">Talent</span>
                            <span class="fs-caption d-block fc-light">
                                Build your employer brand
                            </span>
                        </a>
                    </li>
                    <li class="m6">
                        <a href="https://stackoverflow.co/advertising" class="bar-sm p6 d-block h:bg-black-100 js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:6})"
                            data-ga="[&quot;top navigation&quot;,&quot;advertising submenu click&quot;,null,null,null]">
                            <span class="fs-body1 d-block">Advertising</span>
                            <span class="fs-caption d-block fc-light">Reach developers &amp; technologists worldwide</span>
                        </a>
                    </li>
                    <li class="bg-black-025 bt bc-black-075 py6 px6 bbr-md">
                        <a href="https://stackoverflow.co/" class="fc-light d-block py6 px6 h:fc-black-800 js-gps-track"
                            data-gps-track="top_nav.products.click({location:27, destination:7})"
                            data-ga="[&quot;top navigation&quot;,&quot;about submenu click&quot;,null,null,null]">About the company</a>
                    </li>
                </ol>
            </div>

            <form id="search" role="search" action=/search class="s-topbar--searchbar js-searchbar " autocomplete="off">
                    <div class="s-topbar--searchbar--input-group">
                        <input name="q"
                                type="text"
                                placeholder="Search&#x2026;"
                                value=""
                                autocomplete="off"
                                maxlength="240"
                                class="s-input s-input__search js-search-field "
                                aria-label="Search"
                                aria-controls="top-search" 
                                data-controller="s-popover"
                                data-action="focus->s-popover#show"
                                data-s-popover-placement="bottom-start"/>
                        <svg aria-hidden="true" class="s-input-icon s-input-icon__search svg-icon iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="m18 16.5-5.14-5.18h-.35a7 7 0 1 0-1.19 1.19v.35L16.5 18l1.5-1.5ZM12 7A5 5 0 1 1 2 7a5 5 0 0 1 10 0Z"/></svg>
                        <div class="s-popover p0 wmx100 wmn4 sm:wmn-initial js-top-search-popover" id="top-search" role="menu">
    <div class="s-popover--arrow"></div>
    <div class="js-spinner p24 d-flex ai-center jc-center d-none">
        <div class="s-spinner s-spinner__sm fc-orange-400">
            <div class="v-visible-sr">Loading&#x2026;</div>
        </div>
    </div>

    <span class="v-visible-sr js-screen-reader-info"></span>
    <div class="js-ac-results overflow-y-auto hmx3 d-none"></div>

    <div class="js-search-hints" aria-describedby="Tips for searching"></div>
</div>
                    </div>
            </form>

        

<ol class="s-topbar--content" role="presentation">



    <li class="js-topbar-dialog-corral" role="presentation">
            

    <div class="topbar-dialog siteSwitcher-dialog dno" role="menu">
        <div class="header fw-wrap">
            <h3 class="flex--item">
                <a href="https://stackoverflow.com">current community</a>
            </h3>
            <div class="flex--item fl1">
                <div class="ai-center d-flex jc-end">
                    <button
                        class="js-close-button s-btn s-btn__muted p0 ml8 d-none sm:d-block"
                        type="button"
                        aria-label="Close"
                    >
                        <svg aria-hidden="true" class="svg-icon iconClear" width="18" height="18" viewBox="0 0 18 18"><path d="M15 4.41 13.59 3 9 7.59 4.41 3 3 4.41 7.59 9 3 13.59 4.41 15 9 10.41 13.59 15 15 13.59 10.41 9 15 4.41Z"/></svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="modal-content bg-powder-050 current-site-container">
            <ul class="current-site ">
                    <li class="d-flex">
                            <div class="fl1">
                <a href="https://stackoverflow.com"
       class="current-site-link site-link js-gps-track d-flex gs8 gsx"
       data-id="1"
       data-gps-track="site_switcher.click({ item_type:3 })">
        <div class="favicon favicon-stackoverflow site-icon flex--item" title="Stack Overflow"></div>
        <span class="flex--item fl1">
            Stack Overflow
        </span>
    </a>

    </div>
    <div class="related-links">
            <a href="https://stackoverflow.com/help" class="js-gps-track" data-gps-track="site_switcher.click({ item_type:14 })">help</a>
            <a href="https://chat.stackoverflow.com/?tab=site&amp;host=stackoverflow.com" class="js-gps-track" data-gps-track="site_switcher.click({ item_type:6 })">chat</a>
    </div>

                    </li>
                    <li class="related-site d-flex">
                            <div class="L-shaped-icon-container">
        <span class="L-shaped-icon"></span>
    </div>

    <a href="https://meta.stackoverflow.com"
       class=" site-link js-gps-track d-flex gs8 gsx"
       data-id="552"
       data-gps-track="site.switch({ target_site:552, item_type:3 }),site_switcher.click({ item_type:4 })">
        <div class="favicon favicon-stackoverflowmeta site-icon flex--item" title="Meta Stack Overflow"></div>
        <span class="flex--item fl1">
            Meta Stack Overflow
        </span>
	</a>

        	</li>
        </ul>
        </div>

        <div class="header" id="your-communities-header">
            <h3>your communities</h3>
        </div>
        <div class="modal-content" id="your-communities-section">
        	<!-- Jack Snider 02 begins -->
        	<div class="call-to-login">
				<a href="https://stackoverflow.com/users/signup?ssrc=site_switcher" class="login-link js-gps-track" data-gps-track="site_switcher.click({ item_type:10 })">Sign up</a> or <a href="https://stackoverflow.com/users/login?ssrc=site_switcher" class="login-link js-gps-track" data-gps-track="site_switcher.click({ item_type:11 })">log in</a> to customize your list.</div>
        	</div>
        	<!-- Jack Snider 02 ends -->
        <div class="header">
            <h3><a href="https://stackexchange.com/sites">more stack exchange communities</a>
            </h3>
            <a href="https://stackoverflow.blog" class="float-right">company blog</a>
        </div>
        <div class="modal-content">
        	<div class="child-content"></div>
        </div>        
    </div>

    </li>
		
    	<li><a href="#" class="s-topbar--item s-btn s-btn__icon s-btn__muted d-none sm:d-inline-flex js-searchbar-trigger" role="button" aria-label="Search" aria-haspopup="true" aria-controls="search" title="Click to show search"><svg aria-hidden="true" class="svg-icon iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="m18 16.5-5.14-5.18h-.35a7 7 0 1 0-1.19 1.19v.35L16.5 18l1.5-1.5ZM12 7A5 5 0 1 1 2 7a5 5 0 0 1 10 0Z"/></svg></a></li>
    	
    	<!-- Jack Snider 03 beins -->
        <li><a href="login.jsp" class="s-topbar--item s-topbar--item__unset s-btn s-btn__filled ws-nowrap js-gps-track" rel="nofollow"
           	data-gps-track="login.click" data-ga="[&quot;top navigation&quot;,&quot;login button click&quot;,null,null,null]">Log in</a>
        </li>
        <!-- Jack Snider 03 ends -->
        
        <li><a href="signup.jsp" class="s-topbar--item s-topbar--item__unset ml4 s-btn s-btn__primary ws-nowrap" rel="nofollow" data-ga="[&quot;sign up&quot;,&quot;Sign Up Navigation&quot;,&quot;Header&quot;,null,null]">Sign up</a></li>
</ol>


    </div>
</header>

    <script>
        StackExchange.ready(function () { StackExchange.topbar.init(); });
        StackExchange.scrollPadding.setPaddingTop(50, 10); 
    </script>





    <div class="container">
            

<div id="left-sidebar" data-is-here-when="" class="left-sidebar js-pinned-left-sidebar ps-relative">
    <div class="left-sidebar--sticky-container js-sticky-leftnav">
        <nav role="navigation">
            <ol class="nav-links">
                    

<li class="ps-relative" >


    <a
       href="/"
       class="pl8 js-gps-track nav-links--link"
       
       data-gps-track="top_nav.click({is_current: false, location:27, destination:8})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
            <div class="d-flex ai-center">
                <div class="flex--item truncate">
                    Home
                </div>
            </div>
    </a>
</li>

                <li>
                    <ol class="nav-links">
                            <li class="fs-fine tt-uppercase ml8 mt16 mb4 fc-light">Public</li>

                            

<li class="ps-relative" >


    <a id="nav-questions"
       href="/questions"
       class="pl8 js-gps-track nav-links--link -link__with-icon"
       
       data-gps-track="top_nav.click({is_current: false, location:27, destination:1})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
<svg aria-hidden="true" class="svg-icon iconGlobe" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1C4.64 1 1 4.64 1 9c0 4.36 3.64 8 8 8 4.36 0 8-3.64 8-8 0-4.36-3.64-8-8-8ZM8 15.32a6.46 6.46 0 0 1-4.3-2.74 6.46 6.46 0 0 1-.93-5.01L7 11.68v.8c0 .88.12 1.32 1 1.32v1.52Zm5.72-2c-.2-.66-1-1.32-1.72-1.32h-1v-2c0-.44-.56-1-1-1H6V7h1c.44 0 1-.56 1-1V5h2c.88 0 1.4-.72 1.4-1.6v-.33a6.45 6.45 0 0 1 3.83 4.51 6.45 6.45 0 0 1-1.51 5.73v.01Z"/></svg>            <span class="-link--channel-name">Questions</span>
    </a>
</li>

                                

<li class="ps-relative" >


    <a id="nav-tags"
       href="/tags"
       class=" js-gps-track nav-links--link"
       
       data-gps-track="top_nav.click({is_current: false, location:27, destination:2})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
            <div class="d-flex ai-center">
                <div class="flex--item truncate">
                    Tags
                </div>
            </div>
    </a>
</li>

                                

<li class="ps-relative  youarehere" >


    <a id="nav-users"
       href="/users"
       class=" js-gps-track nav-links--link"
       
       data-gps-track="top_nav.click({is_current: true, location:27, destination:3})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
            <div class="d-flex ai-center">
                <div class="flex--item truncate">
                    Users
                </div>
            </div>
    </a>
</li>

                                    

<li class="ps-relative" >


    <a id="nav-companies"
       href="https://stackoverflow.com/jobs/companies?so_medium=stackoverflow&amp;so_source=SiteNav"
       class=" js-gps-track nav-links--link"
       
       data-gps-track="top_nav.click({is_current: false, location:27, destination:12})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
            <div class="d-flex ai-center">
                <div class="flex--item truncate">
                    Companies
                </div>
            </div>
    </a>
</li>

                                <li class="d-flex ml8 mt16 jc-space-between">
                                    <div class="flex--item tt-uppercase tt-uppercase fs-fine fc-light">Collectives</div>
                                    <div class="flex--item fs-fine fc-light">
                                        <a href="javascript:void(0)" class="s-link s-link__inherit mr8 js-gps-track js-collectives-navcta-toggle"
                                           role="button"
                                           aria-controls="popover-discover-collectives"
                                           data-controller="s-popover"
                                           data-action="s-popover#toggle"
                                           data-s-popover-placement="top"
                                           data-s-popover-toggle-class="is-selected"
                                           data-gps-track="top_nav.click({is_current:false, location:27, destination:17})">
                                            <svg aria-hidden="true" class="svg-icon iconInfoSm" width="14" height="14" viewBox="0 0 14 14"><path d="M7 1a6 6 0 1 1 0 12A6 6 0 0 1 7 1Zm1 10V6H6v5h2Zm0-6V3H6v2h2Z"/></svg>
                                        </a>
                                    </div>
                                </li>
                                    

<li class="ps-relative" >


    <a id="nav-collective-discover"
       href="/collectives"
       class="pl8 ai-center js-collectives-navcta-toggle js-gps-track nav-links--link -link__with-icon"
       
       data-gps-track="top_nav.click({is_current: false, location:27, destination:18})"
       aria-controls="" data-controller="" data-s-popover-placement="right"
       data-s-popover-auto-show="true" data-s-popover-hide-on-outside-click="never">
<svg aria-hidden="true" class="mt-auto fc-orange-400 svg-icon iconStarVerified" width="18" height="18" viewBox="0 0 18 18"><path d="M9.86.89a1.14 1.14 0 0 0-1.72 0l-.5.58c-.3.35-.79.48-1.23.33l-.72-.25a1.14 1.14 0 0 0-1.49.85l-.14.76c-.1.45-.45.8-.9.9l-.76.14c-.67.14-1.08.83-.85 1.49l.25.72c.15.44.02.92-.33 1.23l-.58.5a1.14 1.14 0 0 0 0 1.72l.58.5c.35.3.48.79.33 1.23l-.25.72c-.23.66.18 1.35.85 1.49l.76.14c.45.1.8.45.9.9l.14.76c.14.67.83 1.08 1.49.85l.72-.25c.44-.15.92-.02 1.23.33l.5.58c.46.52 1.26.52 1.72 0l.5-.58c.3-.35.79-.48 1.23-.33l.72.25c.66.23 1.35-.18 1.49-.85l.14-.76c.1-.45.45-.8.9-.9l.76-.14c.67-.14 1.08-.83.85-1.49l-.25-.72c-.15-.44-.02-.92.33-1.23l.58-.5c.52-.46.52-1.26 0-1.72l-.58-.5c-.35-.3-.48-.79-.33-1.23l.25-.72a1.14 1.14 0 0 0-.85-1.49l-.76-.14c-.45-.1-.8-.45-.9-.9l-.14-.76a1.14 1.14 0 0 0-1.49-.85l-.72.25c-.44.15-.92.02-1.23-.33l-.5-.58Zm-.49 2.67L10.6 6.6c.05.15.19.24.34.25l3.26.22c.36.03.5.48.23.71l-2.5 2.1a.4.4 0 0 0-.14.4l.8 3.16a.4.4 0 0 1-.6.44L9.2 12.13a.4.4 0 0 0-.42 0l-2.77 1.74a.4.4 0 0 1-.6-.44l.8-3.16a.4.4 0 0 0-.13-.4l-2.5-2.1a.4.4 0 0 1 .22-.7l3.26-.23a.4.4 0 0 0 .34-.25l1.22-3.03a.4.4 0 0 1 .74 0Z"/></svg>            <span class="-link--channel-name">Explore Collectives</span>
    </a>
</li>

                    </ol>
                </li>
                   


<li>
    <ol class="nav-links">
                

<div class="js-freemium-cta ps-relative">

    <div class="fs-fine tt-uppercase ml8 mt16 mb8 fc-light">Teams</div>

    <div class="px32 pt16 pb0 fc-black-600 blr-sm overflow-hidden">
        <strong class="fc-black-750 mb6">Stack Overflow for Teams</strong>
        – Start collaborating and sharing organizational knowledge.
        
        <img class="wmx100 mx-auto my8 h-auto d-block" width="139" height="114" src="https://cdn.sstatic.net/Img/teams/teams-illo-free-sidebar-promo.svg?v=47faa659a05e" alt="">

        <a href="https://try.stackoverflow.co/why-teams/?utm_source=so-owned&amp;utm_medium=side-bar&amp;utm_campaign=campaign-38&amp;utm_content=cta" 
           class="w100 s-btn s-btn__primary s-btn__xs bg-orange-400 js-gps-track"
           data-gps-track="teams.create.left-sidenav.click({ Action: 6 })"
           data-ga="[&quot;teams left navigation - anonymous&quot;,&quot;left nav free cta&quot;,&quot;stackoverflow.com/teams/create/free&quot;,null,null]">Create a free Team</a>
        <a href="https://stackoverflow.co/teams" 
           class="w100 s-btn s-btn__muted s-btn__xs js-gps-track"
           data-gps-track="teams.create.left-sidenav.click({ Action: 5 })"
           data-ga="[&quot;teams left navigation - anonymous&quot;,&quot;left nav free cta&quot;,&quot;stackoverflow.com/teams&quot;,null,null]">Why Teams?</a>

    </div>
</div>

            <li class="d-flex ai-center jc-space-between ml8 mt24 mb4 js-create-team-cta d-none">
                <div class="flex--item tt-uppercase fs-fine fc-light">Teams</div>
                <div class="flex--item">
                    <a href="javascript:void(0)" class="s-link p12 fc-black-500 h:fc-black-800 js-gps-track"
                   role="button"
                   aria-controls="popover-teams-create-cta"
                   data-controller="s-popover"
                   data-action="s-popover#toggle"
                   data-s-popover-placement="bottom-start"
                   data-s-popover-toggle-class="is-selected"
                   data-gps-track="teams.create.left-sidenav.click({ Action: ShowInfo })"
                   data-ga="[&quot;teams left navigation - anonymous&quot;,&quot;left nav show teams info&quot;,null,null,null]">
                        <svg aria-hidden="true" class="svg-icon iconInfoSm" width="14" height="14" viewBox="0 0 14 14"><path d="M7 1a6 6 0 1 1 0 12A6 6 0 0 1 7 1Zm1 10V6H6v5h2Zm0-6V3H6v2h2Z"/></svg>
                    </a>

                </div>
            </li>
            <li class="ps-relative js-create-team-cta d-none">
                <a href="https://stackoverflow.com/teams/create/free?utm_source=so-owned&amp;utm_medium=side-bar&amp;utm_campaign=campaign-38&amp;utm_content=cta"
               class="pl8 js-gps-track nav-links--link"
               title="Stack Overflow for Teams is a private, secure spot for your organization's questions and answers."
               data-gps-track="teams.create.left-sidenav.click({ Action: FreemiumTeamsCreateClick })"
               data-ga="[&quot;teams left navigation - anonymous&quot;,&quot;left nav team click&quot;,&quot;stackoverflow.com/teams/create/free&quot;,null,null]">
                    <div class="d-flex ai-center">
                        <div class="flex--item s-avatar va-middle bg-orange-400">
                            <div class="s-avatar--letter mtn1">
                                <svg aria-hidden="true" class="svg-icon iconBriefcaseSm" width="14" height="14" viewBox="0 0 14 14"><path d="M4 3a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1h.5c.83 0 1.5.67 1.5 1.5v5c0 .83-.67 1.5-1.5 1.5h-7A1.5 1.5 0 0 1 2 10.5v-5C2 4.67 2.67 4 3.5 4H4V3Zm5 1V3H5v1h4Z"/></svg>
                            </div>
                            <svg aria-hidden="true" class="native s-avatar--badge svg-icon iconShieldXSm" width="9" height="10" viewBox="0 0 9 10"><path d="M0 1.84 4.5 0 9 1.84v3.17C9 7.53 6.3 10 4.5 10 2.7 10 0 7.53 0 5.01V1.84Z" fill="var(--white)"/><path d="M1 2.5 4.5 1 8 2.5v2.51C8 7.34 5.34 9 4.5 9 3.65 9 1 7.34 1 5.01V2.5Zm2.98 3.02L3.2 7h2.6l-.78-1.48a.4.4 0 0 1 .15-.38c.34-.24.73-.7.73-1.14 0-.71-.5-1.23-1.41-1.23-.92 0-1.39.52-1.39 1.23 0 .44.4.9.73 1.14.12.08.18.23.15.38Z" fill="var(--black-500)"/></svg>
                        </div>
                        <div class="flex--item pl6">
                            Create free Team
                        </div>
                    </div>
                </a>
            </li>
    </ol>
</li> 
            </ol>
        </nav>
    </div>

        <div class="s-popover ws2" id="popover-discover-collectives" role="menu">
            <div class="s-popover--arrow"></div>
            <div>
                <svg aria-hidden="true" class="fc-orange-500 float-right ml24 svg-spot spotCollective" width="48" height="48" viewBox="0 0 48 48"><path d="M25.5 7a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5ZM14 18.25c0-.69.56-1.25 1.25-1.25h22.5c.69 0 1.25.56 1.25 1.25V37.5a1 1 0 0 1-1.6.8l-4.07-3.05a1.25 1.25 0 0 0-.75-.25H15.25c-.69 0-1.25-.56-1.25-1.25v-15.5ZM7 24.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0ZM25.5 48a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5ZM48 24.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Z" opacity=".2"/><path d="M21 3.5a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0ZM24.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3ZM0 23.5a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0ZM3.5 22a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3ZM21 44.5a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0Zm3.5-1.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3Zm20-23a3.5 3.5 0 1 0 0 7 3.5 3.5 0 0 0 0-7ZM43 23.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0Zm-23.23-3.14a1 1 0 0 1-.13 1.4l-2.08 1.74 2.08 1.73a1 1 0 1 1-1.28 1.54l-2.42-2.02a1.63 1.63 0 0 1 0-2.5l2.42-2.02a1 1 0 0 1 1.4.13Zm7.59 1.41a1 1 0 1 1 1.28-1.54l2.42 2.02c.78.65.78 1.85 0 2.5l-2.42 2.02a1 1 0 1 1-1.28-1.54l2.08-1.73-2.08-1.73ZM24.12 18a1 1 0 0 1 .87 1.12l-1 8a1 1 0 1 1-1.98-.24l1-8a1 1 0 0 1 1.11-.87Zm-11.87-5C11.01 13 10 14 10 15.25v15.5c0 1.24 1 2.25 2.25 2.25h17.33c.06 0 .11.02.15.05l4.07 3.05a2 2 0 0 0 3.2-1.6V15.25c0-1.24-1-2.25-2.25-2.25h-22.5ZM12 15.25c0-.14.11-.25.25-.25h22.5c.14 0 .25.11.25.25V34.5l-4.07-3.05a2.2 2.2 0 0 0-1.35-.45H12.25a.25.25 0 0 1-.25-.25v-15.5Zm7.24-10.68a1 1 0 1 0-.48-1.94A22.04 22.04 0 0 0 2.91 17.7a1 1 0 1 0 1.92.58 20.04 20.04 0 0 1 14.4-13.72Zm11.05-1.66a1 1 0 0 0-.58 1.92c6.45 1.92 11.54 7 13.46 13.46a1 1 0 1 0 1.92-.58 22.05 22.05 0 0 0-14.8-14.8ZM4.57 28.76a1 1 0 0 0-1.94.48 22.03 22.03 0 0 0 16.13 16.13 1 1 0 1 0 .48-1.94A20.03 20.03 0 0 1 4.57 28.76Zm40.8.48a1 1 0 1 0-1.94-.48 20.04 20.04 0 0 1-13.72 14.41 1 1 0 0 0 .58 1.92 22.04 22.04 0 0 0 15.08-15.85Z"/></svg>
                <div class="pt4 fw-bold">Collectives™ on Stack Overflow</div>
                <p class="my16 fs-caption fc-medium">Find centralized, trusted content and collaborate around the technologies you use most.</p>
                <a href="/collectives"
               class="js-gps-track s-btn s-btn__primary s-btn__xs"
               data-gps-track="top_nav.click({is_current:false, location:27, destination:18})">
                    Learn more about Collectives
                </a>
            </div>
        </div>


        <div class="s-popover ws2"
         id="popover-teams-create-cta"
         role="menu"
         aria-hidden="true">
            <div class="s-popover--arrow"></div>

            <div class="ps-relative overflow-hidden">
                <p class="mb2"><strong>Teams</strong></p>
                <p class="mb12 fs-caption fc-black-400">Q&amp;A for work</p>
                <p class="mb12 fs-caption fc-medium">Connect and share knowledge within a single location that is structured and easy to search.</p>
                <a href="https://stackoverflow.co/teams"
               class="js-gps-track s-btn s-btn__primary s-btn__xs"
               data-gps-track="teams.create.left-sidenav.click({ Action: CtaClick })"
               data-ga="[&quot;teams left navigation - anonymous&quot;,&quot;left nav cta&quot;,&quot;stackoverflow.com/teams&quot;,null,null]">
                    Learn more about Teams
                </a>
            </div>

            <div class="ps-absolute t8 r8">
                <svg aria-hidden="true" class="fc-orange-500 svg-spot spotPeople" width="48" height="48" viewBox="0 0 48 48"><path d="M13.5 28a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM7 30a1 1 0 0 1 1-1h11a1 1 0 0 1 1 1v5h11v-5a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v10a2 2 0 0 1-2 2H33v5a1 1 0 0 1-1 1H20a1 1 0 0 1-1-1v-5H8a1 1 0 0 1-1-1V30Zm25-6.5a4.5 4.5 0 1 0 9 0 4.5 4.5 0 0 0-9 0ZM24.5 34a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9Z" opacity=".2"/><path d="M16.4 26.08A6 6 0 1 0 7.53 26C5.64 26.06 4 27.52 4 29.45V40a1 1 0 0 0 1 1h9a1 1 0 1 0 0-2h-4v-7a1 1 0 1 0-2 0v7H6v-9.55c0-.73.67-1.45 1.64-1.45H16a1 1 0 0 0 .4-1.92ZM12 18a4 4 0 1 1 0 8 4 4 0 0 1 0-8Zm16.47 14a6 6 0 1 0-8.94 0A3.6 3.6 0 0 0 16 35.5V46a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V35.5c0-1.94-1.64-3.42-3.53-3.5ZM20 28a4 4 0 1 1 8 0 4 4 0 0 1-8 0Zm-.3 6h8.6c1 0 1.7.75 1.7 1.5V45h-2v-7a1 1 0 1 0-2 0v7h-4v-7a1 1 0 1 0-2 0v7h-2v-9.5c0-.75.7-1.5 1.7-1.5ZM42 22c0 1.54-.58 2.94-1.53 4A3.5 3.5 0 0 1 44 29.45V40a1 1 0 0 1-1 1h-9a1 1 0 1 1 0-2h4v-7a1 1 0 1 1 2 0v7h2v-9.55A1.5 1.5 0 0 0 40.48 28H32a1 1 0 0 1-.4-1.92A6 6 0 1 1 42 22Zm-2 0a4 4 0 1 0-8 0 4 4 0 0 0 8 0Z"/><g opacity=".35"><path d="M17 10a1 1 0 011-1h12a1 1 0 110 2H18a1 1 0 01-1-1Zm1-5a1 1 0 100 2h12a1 1 0 100-2H18ZM14 1a1 1 0 00-1 1v12a1 1 0 001 1h5.09l4.2 4.2a1 1 0 001.46-.04l3.7-4.16H34a1 1 0 001-1V2a1 1 0 00-1-1H14Zm1 12V3h18v10h-5a1 1 0 00-.75.34l-3.3 3.7-3.74-3.75a1 1 0 00-.71-.29H15Z"/></g></svg>
            </div>
        </div>


</div>




        <div id="content" class="d-flex flex__center snippet-hidden">

        <!-- Jack Snider 04 starts --> 
<!-- 
<div class="d-flex ai-center sm:fd-column">
        <div class="flex--item fs-body2 mr48 mb128 wmx4 md:d-none">
    <h1 class="fs-headline1 mb32 lh-xs">Join the Stack Overflow community</h1>
    <div class="d-flex mb24">
        <div class="flex--item fc-blue-500 mr8">
            <svg width="26" height="26" class="svg-icon mtn2"><path opacity=".5" d="M4.2 4H22a2 2 0 012 2v11.8a3 3 0 002-2.8V5a3 3 0 00-3-3H7a3 3 0 00-2.8 2z"/><path d="M1 7c0-1.1.9-2 2-2h18a2 2 0 012 2v12a2 2 0 01-2 2h-2v5l-5-5H3a2 2 0 01-2-2V7zm10.6 11.3c.7 0 1.2-.5 1.2-1.2s-.5-1.2-1.2-1.2c-.6 0-1.2.4-1.2 1.2 0 .7.5 1.1 1.2 1.2zm2.2-5.4l1-.9c.3-.4.4-.9.4-1.4 0-1-.3-1.7-1-2.2-.6-.5-1.4-.7-2.4-.7-.8 0-1.4.2-2 .5-.7.5-1 1.4-1 2.8h1.9v-.1c0-.4 0-.7.2-1 .2-.4.5-.6 1-.6s.8.1 1 .4a1.3 1.3 0 010 1.8l-.4.3-1.4 1.3c-.3.4-.4 1-.4 1.6 0 0 0 .2.2.2h1.5c.2 0 .2-.1.2-.2l.1-.7.5-.7.6-.4z"/></svg>
        </div>
        <div class="flex--item">Get unstuck &#x2014; ask a question</div>
    </div>
    <div class="d-flex mb24">
        <div class="flex--item fc-blue-500 mr8">
            <svg width="26" height="26" class="svg-icon mtn2"><path d="M12 .7a2 2 0 013 0l8.5 9.6a1 1 0 01-.7 1.7H4.2a1 1 0 01-.7-1.7L12 .7z"/><path opacity=".5" d="M20.6 16H6.4l7.1 8 7-8zM15 25.3a2 2 0 01-3 0l-8.5-9.6a1 1 0 01.7-1.7h18.6a1 1 0 01.7 1.7L15 25.3z"/></svg>
        </div>
        <div class="flex--item">Unlock new privileges like voting and commenting</div>
    </div>
    <div class="d-flex mb24">
        <div class="flex--item fc-blue-500 mr8">
            <svg width="26" height="26" class="svg-icon mtn2"><path d="M14.8 3a2 2 0 00-1.4.6l-10 10a2 2 0 000 2.8l8.2 8.2c.8.8 2 .8 2.8 0l10-10c.4-.4.6-.9.6-1.4V5a2 2 0 00-2-2h-8.2zm5.2 7a2 2 0 110-4 2 2 0 010 4z"/><path opacity=".5" d="M13 0a2 2 0 00-1.4.6l-10 10a2 2 0 000 2.8c.1-.2.3-.6.6-.8l10-10a2 2 0 011.4-.6h9.6a2 2 0 00-2-2H13z"/></svg>
        </div>
        <div class="flex--item">Save your favorite tags, filters, and jobs</div>
    </div>
    <div class="d-flex mb24">
        <div class="flex--item fc-blue-500 mr8">
            <svg width="26" height="26" class="svg-icon mtn2"><path d="M21 4V2H5v2H1v5c0 2 2 4 4 4v1c0 2.5 3 4 7 4v3H7s-1.2 2.3-1.2 3h14.4c0-.6-1.2-3-1.2-3h-5v-3c4 0 7-1.5 7-4v-1c2 0 4-2 4-4V4h-4zM5 11c-1 0-2-1-2-2V6h2v5zm11.5 2.7l-3.5-2-3.5 1.9L11 9.8 7.2 7.5h4.4L13 3.8l1.4 3.7h4L15.3 10l1.4 3.7h-.1zM23 9c0 1-1 2-2 2V6h2v3z"/></svg>
        </div>
        <div class="flex--item">Earn reputation and badges</div>
    </div>
    <div class="fs-body1 fc-light">
        Collaborate and share knowledge with a private group for FREE.<br>
        <a href='https://stackoverflow.com/teams?utm_source=so-owned&utm_medium=product&utm_campaign=free-50&utm_content=public-sign-up' target='_blank'>Get Stack Overflow for Teams free for up to 50 users</a>.
    </div>
</div> 
-->

	<!-- Jack Snider 04 starts -->
	
	
    <div class="flex--item fl-shrink0">

            <div class="wmx4 ta-center fs-title mx-auto mb24 d-none md:d-block">
Create your Stack Overflow account. It&#x2019;s free and only takes a minute.</div>
            



<div id="openid-buttons" class="mx-auto d-flex flex__fl-grow1 fd-column gs8 gsy mb16 wmx3">
        <button class="flex--item s-btn s-btn__icon s-btn__google bar-md ba bc-black-100" data-provider='google' data-oauthserver='https://accounts.google.com/o/oauth2/auth' data-oauthversion='2.0'>
            <svg aria-hidden="true" class="native svg-icon iconGoogle" width="18" height="18" viewBox="0 0 18 18"><path d="M16.51 8H8.98v3h4.3c-.18 1-.74 1.48-1.6 2.04v2.01h2.6a7.8 7.8 0 0 0 2.38-5.88c0-.57-.05-.66-.15-1.18Z" fill="#4285F4"/><path d="M8.98 17c2.16 0 3.97-.72 5.3-1.94l-2.6-2a4.8 4.8 0 0 1-7.18-2.54H1.83v2.07A8 8 0 0 0 8.98 17Z" fill="#34A853"/><path d="M4.5 10.52a4.8 4.8 0 0 1 0-3.04V5.41H1.83a8 8 0 0 0 0 7.18l2.67-2.07Z" fill="#FBBC05"/><path d="M8.98 4.18c1.17 0 2.23.4 3.06 1.2l2.3-2.3A8 8 0 0 0 1.83 5.4L4.5 7.49a4.77 4.77 0 0 1 4.48-3.3Z" fill="#EA4335"/></svg>
Sign up with Google        </button>
        <button class="flex--item s-btn s-btn__icon s-btn__github bar-md ba bc-black-100" data-provider='github' data-oauthserver='https://github.com/login/oauth/authorize' data-oauthversion='2.0'>
            <svg aria-hidden="true" class="svg-icon iconGitHub" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1a8 8 0 0 0-2.53 15.59c.4.07.55-.17.55-.38l-.01-1.49c-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82a7.42 7.42 0 0 1 4 0c1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48l-.01 2.2c0 .21.15.46.55.38A8.01 8.01 0 0 0 9 1Z" fill="#010101"/></svg>
Sign up with GitHub        </button>
        <button class="flex--item s-btn s-btn__icon s-btn__facebook bar-md" data-provider='facebook' data-oauthserver='https://www.facebook.com/v2.0/dialog/oauth' data-oauthversion='2.0'>
            <svg aria-hidden="true" class="svg-icon iconFacebook" width="18" height="18" viewBox="0 0 18 18"><path d="M3 1a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H3Zm6.55 16v-6.2H7.46V8.4h2.09V6.61c0-2.07 1.26-3.2 3.1-3.2.88 0 1.64.07 1.87.1v2.16h-1.29c-1 0-1.19.48-1.19 1.18V8.4h2.39l-.31 2.42h-2.08V17h-2.5Z" fill="#4167B2"/></svg>
Sign up with Facebook        </button>
</div>

<div id="formContainer" class="mx-auto mb24 p24 wmx3 bg-white bar-lg bs-xl mb24 with-captcha">
    <form id="login-form" class="d-flex fd-column gs12 gsy with-captcha" action="/users/signup?ssrc=head&returnurl=https%3a%2f%2fstackoverflow.com%2f" method="POST">
        <input type="hidden" name="fkey" value="f8a6dc1dd33a9522b7177f9b9127a90de52ef6d89c73cb58505079e03ab6ea75">
            <input type="hidden" name="ssrc" value="head" />
                <input type="hidden" name="legalLinksShown" value="1" />
                	
                	<!-- 회원가입 입력폼 -->
                	<!-- Jack Snider 01 begins -->  
                
                	<!-- 프로필 사진 -->
                	<!-- 프로필 사진 끝 -->
                
                	<!-- 이메일 -->
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="email">Email</label>
                    	<div class="d-flex ps-relative">
                        	<input class="s-input" id="email" type="email" size="30" maxlength="100" name="email" />
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 이메일 끝 -->
                
                	<!-- 비밀번호 -->
                	<div class="d-flex fd-column-reverse gs4 gsy js-auth-item ">
                        <p class="fs-caption fc-light mt4 mb4">	
                            Passwords must contain at least eight characters, including at least 1 letter and 1 number.</p>
                        
                            <p class="flex--item s-input-message js-error-message d-none"></p>

	                    <div class="d-flex ps-relative js-password">
	                        <input class="flex--item s-input" type="password" autocomplete="off" name="password" id="password" />
	                        <svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
	                    </div>
	                    <div class="d-flex ai-center ps-relative jc-space-between">
	                        <label class="flex--item s-label" for="password">Password</label>
	                    </div>
                	</div>
					<!-- 비밀번호 끝 -->
					
					<!-- 비밀번호 확인 -->
                	<div class="d-flex fd-column-reverse gs4 gsy js-auth-item ">
                        <p class="fs-caption fc-light mt4 mb4">	
                            Make sure the password you have written is correct</p>
                        
                            <p class="flex--item s-input-message js-error-message d-none"></p>

	                    <div class="d-flex ps-relative js-password">
	                        <input class="flex--item s-input" type="password" autocomplete="off" name="passwordCheck" id="password" />
	                        <svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
	                    </div>
	                    <div class="d-flex ai-center ps-relative jc-space-between">
	                        <label class="flex--item s-label" for="password">Password Check</label>
	                    </div>
                	</div>
                	<!-- 비밀번호 확인 끝 -->
                
                
                	<!-- 닉네임 -->
                    <div class="d-flex fd-column gs4 gsy js-auth-item ">
                        <label class="flex--item s-label" for="display-name">Display name</label>
                        <div class="d-flex ps-relative">
                            <input class="flex--item s-input" type="text" name="display-name" id="display-name" />
                            <svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                        </div>
                                <p class="flex--item s-input-message js-error-message d-none"></p>
                    </div>
                    <!-- 닉네임 끝 -->
                    
                    
                    
                    
					<!-- 이름 -->            		      
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="email">Name</label>
                    	<div class="d-flex ps-relative">
                        	<input class="s-input" id="name" type="text" size="30" maxlength="100" name="name" />
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 이름 끝 -->
                	
                	
                	<!-- 주민번호 -->
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="email">Name</label>
                    	<div class="d-flex ps-relative">
                        	<input class="s-input" id="name" type="text" size="30" maxlength="100" name="name" />
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 주민번호 끝 -->
                	
                	
                	<!-- 주소 -->
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="text">Address</label>
                    	<div class="d-flex ps-relative">
                        	<input class="s-input" id="address" type="text" size="30" maxlength="100" name="address" />
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 주소 끝 -->
                	
                	<!-- 비밀번호 찾기 질문 -->
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="question">Question</label>
                    	<div class="d-flex ps-relative">
                    	<!-- 
                        	<input class="s-input" id="question" type="" size="30" maxlength="100" name="question" />
                    	 -->
                        	<select id="question" name="question" class = "form-select">                    	
 								<option value="question1">What is your favorite color?</option>
  								<option value="question2">When was your best moment in life?</option>
  								<option value="question3">Camaro is good?</option>
  								<option value="question4">When was the last time you have had happy time?</option>
							</select>
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 비밀번호 찾기 질문 끝 -->
                	
                	<!-- 비밀번호 찾기 질문 답변 -->
                	<div class="d-flex fd-column gs4 gsy js-auth-item ">
                    	<label class="flex--item s-label" for="answer">Answer</label>
                    	<div class="d-flex ps-relative">
                        	<input class="s-input" id="answer" type="text" size="30" maxlength="100" name="answer" />
                        	<svg aria-hidden="true" class="s-input-icon js-alert-icon d-none svg-icon iconAlertCircle" width="18" height="18" viewBox="0 0 18 18"><path d="M9 17c-4.36 0-8-3.64-8-8 0-4.36 3.64-8 8-8 4.36 0 8 3.64 8 8 0 4.36-3.64 8-8 8ZM8 4v6h2V4H8Zm0 8v2h2v-2H8Z"/></svg>
                    	</div>
                            <p class="flex--item s-input-message js-error-message d-none"> </p>
                	</div>
                	<!-- 비밀번호 찾기 질문 답변 끝 -->
                
                
                	
                
                <!-- Jack Snider 01 ends -->
                
                <div class="d-flex flex__center bg-black-050 ba bc-black-075 bar-sm pt8 pb2">
                    

<script type="text/javascript">
    var onloadCallback = function () {
        grecaptcha.render('no-captcha-here', {
            'sitekey': '6Lfmm70ZAAAAADvPzM6OhZ8Adi40-78E-aYfc1ZS',
            'size': 'compact',
        });
    };
</script>

<div id="no-captcha-here"></div>
<noscript>
    <div>
        <div style="width: 302px; height: 422px; position: relative;">
            <div style="width: 302px; height: 422px; position: absolute;">
                <iframe src="https://www.google.com/recaptcha/api/fallback?k=6Lfmm70ZAAAAADvPzM6OhZ8Adi40-78E-aYfc1ZS"
                        frameborder="0" scrolling="no"
                        style="width: 302px; height:422px; border-style: none;"></iframe>
            </div>
        </div>
        <div style="width: 300px; height: 60px; border-style: none;
                                        bottom: 12px; left: 25px; margin: 0px; padding: 0px; right: 25px;
                                        background: #f9f9f9; border: 1px solid #c1c1c1; border-radius: 3px;">
            <textarea id="g-recaptcha-response" name="g-recaptcha-response"
                        class="g-recaptcha-response"
                        style="width: 250px; height: 40px; border: 1px solid #c1c1c1;
                                                margin: 10px 25px; padding: 0px; resize: none;">
                            </textarea>
        </div>
    </div>
    <button class="s-btn s-btn__primary" id="submit-nocaptcha-noscript">Submit</button>
</noscript>

<div class="js-auth-item">
    <div class="js-catpcha-error-container">
        <p class="s-input-message m0 p0 js-error-message"></p>
    </div>
</div>

<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit&hl=en" async defer></script>
                </div>
                <div class="flex--item">
                    
<div class="d-flex">
    <div class="flex--item mr4">
        <input type="checkbox" name="EmailOptIn" id="opt-in" class="s-checkbox" data-ga-action="Email Opt-In" data-ga-is-pii="false" />
    </div>
    <div class="flex--item pt2">
        <label for="opt-in" class="s-label fw-normal fs-caption px0">
            Opt-in to receive occasional product updates, user research invitations, company announcements, and digests.
        </label>
    </div>
    <div class="flex--item ml4 mt2">
        <a class="fc-light"
           aria-controls="opt-in-learn-more"
           data-controller="s-popover"
           data-action="s-popover#toggle"
           data-s-popover-placement="left">
            <svg aria-hidden="true" class="svg-icon iconHelpSm" width="14" height="14" viewBox="0 0 14 14"><path d="M7 1C3.74 1 1 3.77 1 7c0 3.26 2.77 6 6 6 3.27 0 6-2.73 6-6s-2.73-6-6-6Zm1.06 9.06c-.02.63-.48 1.02-1.1 1-.57-.02-1.03-.43-1.01-1.06.02-.63.5-1.04 1.08-1.02.6.02 1.05.45 1.03 1.08Zm.73-3.07-.47.3c-.2.15-.36.36-.44.6a3.6 3.6 0 0 0-.08.65c0 .04-.03.14-.16.14h-1.4c-.14 0-.16-.09-.16-.13-.01-.5.11-.99.36-1.42A4.6 4.6 0 0 1 7.7 6.07c.15-.1.21-.21.3-.33.18-.2.28-.47.28-.74.01-.67-.53-1.14-1.18-1.14-.9 0-1.18.7-1.18 1.46H4.2c0-1.17.31-1.92.98-2.36a3.5 3.5 0 0 1 1.83-.44c.88 0 1.58.16 2.2.62.58.42.88 1.02.88 1.82 0 .5-.17.9-.43 1.24-.15.2-.44.47-.86.79h-.01Z"/></svg>
        </a>
        <div class="s-popover ws2"
             id="opt-in-learn-more"
             role="menu"
             aria-hidden="true">
            <div class="s-popover--arrow"></div>
            <p>We know you hate spam, and we do too. That&#x2019;s why we make it easy for you to update your email preferences or unsubscribe at anytime.</p>
            <p class="mb0">We never share your email address with third parties for marketing purposes.</p>
        </div>
    </div>
</div>

<script>
    StackExchange.ready(function () {
        var toggleEmailCheckbox = $('#opt-in');
        $(".js-record-ga").on('click', function () {
            var isChecked = toggleEmailCheckbox.is(":checked").toString();
            StackExchange.ga.track("teams create", "email optin", isChecked, { "dimension4": "teams" });
        });
    });
</script>

                </div>
            <div class="d-flex gs4 gsy fd-column js-auth-item ">
                <button class="flex--item s-btn s-btn__primary" id="submit-button" name="submit-button">Sign up</button>
                        <p class="flex--item s-input-message js-error-message d-none">
            
        </p>

            </div>

        <input type="hidden" id="oauth_version" name="oauth_version" />
        <input type="hidden" id="oauth_server" name="oauth_server" />


    </form>
        <div class="js-terms fs-caption fc-light ta-left mt32">
            By clicking “Sign up”, you agree to our <a href='https://stackoverflow.com/legal/terms-of-service/public' name='tos' target='_blank' class='-link'>terms of service</a>, <a href='https://stackoverflow.com/legal/privacy-policy' name='privacy' target='_blank' class='-link'>privacy policy</a> and <a href='https://stackoverflow.com/legal/cookie-policy' name='cookie' target='_blank' class='-link'>cookie policy</a><input type="hidden" name="legalLinksShown" value="1" />
        </div>
</div>

<script>
    StackExchange.ready(function () {

        StackExchange.using("gps", function() { StackExchange.gps.sendPending(); });

    });

</script>

                <div class="mx-auto ta-center fs-body1 p16 pb0 mb24 w100 wmx3 js-redirects">
                    Already have an account? <a href='/users/login?ssrc=head&returnurl=https%3a%2f%2fstackoverflow.com%2f' name='login'></a>

                        <div class="mt12">
                            Are you an employer? <a href='https://careers.stackoverflow.com/employer/login' name='talent'>Sign up on Talent <svg aria-hidden="true" class="va-text-bottom sm:d-none svg-icon iconShareSm" width="14" height="14" viewBox="0 0 14 14"><path d="M5 1H3a2 2 0 0 0-2 2v8c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V9h-2v2H3V3h2V1Zm2 0h6v6h-2V4.5L6.5 9 5 7.5 9.5 3H7V1Z"/></svg></a>
                        </div>
                </div>

    </div>
</div>

<script>
    StackExchange.ready(function () {
        auth.init(auth.pages.SignUp);

        $('#login-form').on('submit', function (e) {
            var oauthServer = $('#oauth_server').val();
            var provider =
                /google.com/.test(oauthServer)
                    ? 'Google' 
                    : /facebook.com/.test(oauthServer)
                        ? 'Facebook' 
                        : /github.com/.test(oauthServer)
                            ? 'GitHub'
                    : 'Email';
            
            StackExchange.ga.track('sign up', 'Sign Up Started - ' + provider, 'Sign Up Page');
        });
    });
</script>
        </div>
    </div>



        <script>
(function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            StackExchange.ready(function () {

                StackExchange.ga.init({
                    autoLink: ["stackoverflow.blog","info.stackoverflowsolutions.com","stackoverflowsolutions.com"],
                    sendTitles: true,
                    tracker: window.ga,
                    trackingCodes: [
                        'UA-108242619-1'
                    ],
                        checkDimension: 'dimension42'
                });




                    StackExchange.ga.setDimension('dimension3', 'Users/Signup');


                StackExchange.ga.setDimension('dimension7', "1660032572.1383775108");

                StackExchange.ga.trackPageView();
            });
                </script>

        
    <div id="onetrust-consent-sdk" class="d-none"></div>
    <div id="onetrust-banner-sdk" data-controller="s-modal"></div>
    <div id="ot-pc-content" class="d-none"></div>
    <div id="onetrust-style" class="d-none">&nbsp;</div>
    <div class="d-none js-consent-banner-version" data-consent-banner-version="baseline"></div>

    
    </body>
    </html>
    