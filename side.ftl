<div class="nexmoe-drawer mdui-drawer" id="drawer">
    <div class="nexmoe-avatar mdui-ripple">
        <a href="/" title="${userName}">
            <img src="${adminUser.userAvatar}" title="${userName}" alt="${userName}"></a>
    </div>
    <div class="nexmoe-count">
        <div>
            <span>${articleLabel}</span>
            ${statistic.statisticPublishedBlogArticleCount}
        </div>
        <div>
            <span>${tagLabel}</span>
            ${mostUsedTags?size}
        </div>
        <div>
            <span>${categoryLabel}</span>
            ${mostUsedCategories?size}
        </div>
    </div>
    <ul class="nexmoe-list mdui-list" mdui-collapse="{accordion: true}">
        <a class="active nexmoe-list-item mdui-list-item mdui-ripple" href="/" title="回到首页">
            <i class="mdui-list-item-icon nexmoefont icon-home"></i>
            <div class="mdui-list-item-content">回到首页</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/links.html" title="友情链接">
            <i class="mdui-list-item-icon nexmoefont icon-unorderedlist"></i>
            <div class="mdui-list-item-content">友情链接</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/search" title="搜索">
            <i class="mdui-list-item-icon nexmoefont icon-bilibili"></i>
            <div class="mdui-list-item-content">搜索</div>
        </a>
        <#list pageNavigations as page>
            <a class="nexmoe-list-item mdui-list-item mdui-ripple"  href="${page.pagePermalink}" title="${page.pageTitle}">
                <i class="mdui-list-item-icon nexmoefont icon-bilibili"></i>
                <div class="mdui-list-item-content">${page.pageTitle}</div>
            </a>
        </#list>
    </ul>
    <aside id="nexmoe-sidebar">
        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">社交按钮</h3>
            <div class="nexmoe-widget nexmoe-social">
                <a class="mdui-ripple" href="https://space.bilibili.com/20238211" target="_blank"
                   mdui-tooltip="{content: '哔哩哔哩'}" style="color:#e76a8d;background-color:rgba(231,106,141,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-bilibili"></i>
                </a>
                <a class="mdui-ripple" href="https://github.com/nexmoe/" target="_blank"
                   mdui-tooltip="{content: 'GitHub'}" style="color:#191717;background-color:rgba(25,23,23,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-github"></i>
                </a>
                <a class="mdui-ripple" href="https://www.zhihu.com/people/chainwon/" target="_blank"
                   mdui-tooltip="{content: '知乎'}" style="color:#1e88e5;background-color:rgba(30,136,229,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-zhihu"></i>
                </a>
                <a class="mdui-ripple" href="https://t.me/nexmoe" target="_blank" mdui-tooltip="{content: 'Telegram'}"
                   style="color:#27a7e5;background-color:rgba(39,167,229,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-telegram"></i>
                </a>
                <a class="mdui-ripple" href="https://twitter.com/nexmoe" target="_blank"
                   mdui-tooltip="{content: 'Twitter'}" style="color:#1da1f2;background-color:rgba(29,161,242,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-twitter"></i>
                </a>
                <a class="mdui-ripple" href="http://wpa.qq.com/msgrd?v=3&amp;uin=776194970&amp;site=qq&amp;menu=yes"
                   target="_blank" mdui-tooltip="{content: 'QQ'}"
                   style="color:#f9ae08;background-color:rgba(249,174,8,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-QQ"></i>
                </a>
                <a class="mdui-ripple" href="https://steamcommunity.com/id/nexmoe" target="_blank"
                   mdui-tooltip="{content: 'Steam'}" style="color:#0e47a1;background-color:rgba(14,71,161,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-steam"></i>
                </a>
                <a class="mdui-ripple" href="JavaScript:void(0)" target="_blank" mdui-tooltip="{content: '折影轻梦#5789'}"
                   style="color:#3c57a4;background-color:rgba(60,87,164,.1)"
                   rel="external nofollow noopener noreferrer">
                    <i class="nexmoefont icon-battlenet"></i>
                </a>
            </div>
        </div>
        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">标签云</h3>
            <div class="nexmoe-widget tagcloud">
                <a href="/tags/Hexo/" style="font-size:10px" class="mdui-ripple">Hexo</a>
                <a href="/tags/Vue/" style="font-size:10px" class="mdui-ripple">Vue</a>
                <a href="/tags/主题/" style="font-size:10px" class="mdui-ripple">主题</a>
                <a href="/tags/博客/" style="font-size:20px" class="mdui-ripple">博客</a>
            </div>
        </div>
        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">文章分类</h3>
            <div class="nexmoe-widget">
                <ul class="category-list">
                    <li class="category-list-item">
                        <a class="category-list-link mdui-ripple" href="/categories/开源/">开源</a>
                        <span class="category-list-count">7</span>
                    </li>
                    <li class="category-list-item">
                        <a class="category-list-link mdui-ripple" href="/categories/生活/">生活</a>
                        <span class="category-list-count">8</span>
                    </li>
                    <li class="category-list-item">
                        <a class="category-list-link mdui-ripple" href="/categories/知识/">知识</a>
                        <span class="category-list-count">7</span>
                    </li>
                    <li class="category-list-item">
                        <a class="category-list-link mdui-ripple" href="/categories/随心/">随心</a>
                        <span class="category-list-count">3</span>
                    </li>
                </ul>
            </div>
        </div>
    </aside>
    <div class="nexmoe-copyright">
        © 2019 折影轻梦 Powered by <a href="http://hexo.io/" target="_blank" rel="external nofollow noopener noreferrer">Hexo</a>
        &amp;
        <a href="https://nexmoe.com/hexo-theme-nexmoe.html" target="_blank">Nexmoe</a>
    </div>
</div>