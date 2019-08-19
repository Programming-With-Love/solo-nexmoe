<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${blogTitle}">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mdui@0.4.3/dist/css/mdui.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlight.js@9.15.8/styles/atom-one-dark.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css">
        <link rel="stylesheet" href="//at.alicdn.com/t/font_1038733_0xvrvpg9c0r.css">
    </@head>
</head>
<body class="mdui-drawer-body-left mdui-loaded">
<div id="nexmoe-background">
    <div class="nexmoe-bg" style="background-image:url(/images/5c3aec85a4343.jpg)"></div>
    <div class="mdui-appbar mdui-shadow-0">
        <div class="mdui-toolbar">
            <a mdui-drawer="{target: '#drawer', swipe: true}" title="menu" class="mdui-btn mdui-btn-icon">
                <i class="mdui-icon material-icons">menu</i>
            </a>
            <div class="mdui-toolbar-spacer"></div>
            <a href="/" title="折影轻梦" class="mdui-btn mdui-btn-icon">
                <img src="/images/avatar.png">
            </a>
        </div>
    </div>
</div>
<div id="nexmoe-header">
    <#include "side.ftl">
</div>
<div id="nexmoe-content">
    <div class="nexmoe-primary">
        <section class="nexmoe-posts" id="brand-waterfall">
            <div class="nexmoe-post">
                <a href="/1519803391.html">
                    <div class="nexmoe-post-cover mdui-ripple">
                        <img src="https://nexmoe.com/images/5c3aec85a4343.jpg" alt="美化你的终端" data-src="/images/5c3aec85a4343.jpg" class=" ls-is-cached lazyloaded" referrerpolicy="no-referrer">
                        <h1>美化你的终端</h1>
                    </div>
                </a>
                <div class="nexmoe-post-meta">
                    <a>
                        <i class="nexmoefont icon-calendar-fill"></i>2019年08月09日
                    </a>
                    <a>
                        <i class="nexmoefont icon-areachart"></i>256 字</a>
                    <a>
                        <i class="nexmoefont icon-time-circle-fill"></i>大概 1 分钟
                    </a>
                </div>
                <article>
                    <p>自带的 PowerShell 虽然有了自定义颜色等功能，但还是太丑，这一篇文章将帮你打造 Windows10 上最美终端。</p>
                </article>
            </div>
            <div class="nexmoe-post">
                <a href="/hexo-theme-nexmoe.html">
                    <div class="nexmoe-post-cover mdui-ripple">
                        <img src="https://nexmoe.com/images/5c3aec85a4343.jpg" alt="Hexo 主题 Nexmoe" data-src="/images/5c3aec85a4343.jpg" class=" ls-is-cached lazyloaded" referrerpolicy="no-referrer">
                        <h1>Hexo 主题 Nexmoe</h1>
                    </div>
                </a>
                <div class="nexmoe-post-meta">
                    <a>
                        <i class="nexmoefont icon-calendar-fill"></i>2019年08月05日
                    </a>
                    <a>
                        <i class="nexmoefont icon-areachart"></i>376 字</a>
                    <a>
                        <i class="nexmoefont icon-time-circle-fill"></i>大概 1 分钟
                    </a>
                    <a class="nexmoefont icon-appstore-fill -link" href="/categories/开源/">开源</a>
                    <a class="nexmoefont icon-tag-fill -link" href="/tags/Hexo/">Hexo</a>
                    <a class="nexmoefont icon-tag-fill -link" href="/tags/主题/">主题</a>
                    <a class="nexmoefont icon-tag-fill -link" href="/tags/博客/">博客</a>
                </div>
                <article>
                    <p>一个比较特别的 Hexo 主题</p>
                </article>
            </div>
            </section>
        <nav class="nexmoe-page-nav">
            <span class="page-number current">1</span>
            <a class="page-number" href="/page/2/">2</a>
            <a class="page-number" href="/page/3/">3</a>
            <a class="extend next" rel="next" href="/page/2/">
                <i class="nexmoefont icon-right"></i>
            </a>
        </nav>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/mdui@0.4.3/dist/js/mdui.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/smoothscroll-for-websites@1.4.9/SmoothScroll.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.15.8/build/highlight.min.js"></script>
<script>hljs.initHighlightingOnLoad()</script>
<script src="${staticServePath}/skins/${skinDirName}/js/app.js?${staticResourceVersion}"></script>
<script src="https://cdn.jsdelivr.net/npm/lazysizes@5.1.0/lazysizes.min.js"></script>
<script>window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)},ga.l=+new Date,ga("create","UA-76379924-1","auto"),ga("send","pageview")</script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<audio controls="controls" style="display: none;">
</audio>
</body>
</html>