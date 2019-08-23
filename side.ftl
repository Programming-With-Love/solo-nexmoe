<div class="nexmoe-drawer mdui-drawer" id="drawer">
    <div class="nexmoe-avatar mdui-ripple">
        <a href="/" title="${blogTitle}">
            <img src="${adminUser.userAvatar}" title="${userName}" alt="${userName}"></a>
    </div>
    <div class="nexmoe-count">
        <div>
            <span>${articleLabel}</span>
            ${statistic.statisticPublishedBlogArticleCount}
        </div>
        <div>
            <span>${commentLabel}</span>
            ${statistic.statisticPublishedBlogCommentCount}
        </div>
        <div>
            <span>${viewLabel}</span>
            ${statistic.statisticBlogViewCount}
        </div>
    </div>
    <ul class="nexmoe-list mdui-list" mdui-collapse="{accordion: true}">
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/" title="回到首页">
            <i class="mdui-list-item-icon iconfont solo-home"></i>
            <div class="mdui-list-item-content">回到首页</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/links.html" title="${linkLabel} - ${blogTitle}">
            <i class="mdui-list-item-icon iconfont solo-list"></i>
            <div class="mdui-list-item-content">${linkLabel}</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/tags.html" title="${tagLabel} - ${blogTitle}">
            <i class="mdui-list-item-icon iconfont solo-tags"></i>
            <div class="mdui-list-item-content">${tagLabel}</div>
        </a>
        <#list pageNavigations as page>
            <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="${page.pagePermalink}"
               title="${page.pageTitle}">
                <i class="mdui-list-item-icon iconfont solo-${page.pageIcon}"></i>
                <div class="mdui-list-item-content">${page.pageTitle}</div>
            </a>
        </#list>
    </ul>
    <aside id="nexmoe-sidebar">

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">功能按钮</h3>
            <div class="nexmoe-widget nexmoe-social features">
                <a href="/search" title="搜索">
                    <i class="mdui-list-item-icon iconfont solo-search"></i>
                    <div class="mdui-list-item-content">搜索</div>
                </a>
                <a href="/rss.xml" title="RSS">
                    <i class="mdui-list-item-icon iconfont solo-rss"></i>
                </a>
                <#if isLoggedIn>
                    <a href="${servePath}/admin-index.do#main"
                       title="${adminLabel}">
                        <i class="mdui-list-item-icon iconfont solo-spin"></i>
                    </a>
                    <a href="${logoutURL}" title="${logoutLabel}">
                        <i class="mdui-list-item-icon iconfont solo-logout"></i>
                    </a>
                <#else>
                    <a href="${servePath}/start" title="${startToUseLabel}">
                        <i class="mdui-list-item-icon iconfont solo-login"></i>
                        <div class="mdui-list-item-content"> ${startToUseLabel}</div>
                    </a>
                </#if>
            </div>
        </div>

        <div class="nexmoe-widget-wrap">
            <h3 class="nexmoe-widget-title">社交按钮</h3>
            <div class="nexmoe-widget nexmoe-social">
                <#include "../../common-template/macro-user_site.ftl"/>
                <@userSite dir=""></@userSite>
            </div>
        </div>

        <#if 0 != mostUsedCategories?size>
            <div class="nexmoe-widget-wrap">
                <h3 class="nexmoe-widget-title">${categoryLabel}</h3>
                <div class="nexmoe-widget">
                    <ul class="category-list">
                        <#list mostUsedCategories as category>
                            <li class="category-list-item">
                                <a class="category-list-link mdui-ripple"
                                   href="${servePath}/category/${category.categoryURI}"
                                   title="${category.categoryTitle} - ${blogTitle}">
                                    ${category.categoryTitle}</a>
                                <span class="category-list-count">${category.categoryTagCnt}</span>
                            </li>
                        </#list>
                    </ul>
                </div>
            </div>
        </#if>
        <#if 0 != mostUsedTags?size>
            <div class="nexmoe-widget-wrap">
                <h3 class="nexmoe-widget-title">${tagLabel}</h3>
                <div class="nexmoe-widget tagcloud">
                    <#list mostUsedTags as tag>
                        <a rel="tag" title="${tagLabel}:${tag.tagTitle} - ${blogTitle}"
                           href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" class="mdui-ripple">
                            ${tag.tagTitle}</a>
                    </#list>
                </div>
            </div>
        </#if>
        <#if 0 != archiveDates?size>
            <div class="nexmoe-widget-wrap">
                <h3 class="nexmoe-widget-title">${archiveLabel}</h3>
                <div class="nexmoe-widget">
                    <ul class="category-list">
                        <#list archiveDates as archiveDate>
                            <#if archiveDate_index < 10>
                                <li class="category-list-item">
                                    <#if "en" == localeString?substring(0, 2)>
                                        <a class="category-list-link mdui-ripple"
                                           href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                                           title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} ${archiveLabel} - ${blogTitle}">
                                            ${archiveDate.monthName} ${archiveDate.archiveDateYear}</a><span
                                            class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>
                                    <#else>
                                        <a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                                           title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} ${archiveLabel} - ${blogTitle}">
                                            ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a>
                                        <span class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>
                                    </#if>
                                </li>
                            </#if>
                        </#list>
                    </ul>
                </div>
            </div>
        </#if>

    </aside>
    <div class="nexmoe-copyright">
        © ${year} <a href="${servePath}">${blogTitle}</a> <br/>
        ${footerContent} <br>
        Powered by <a href="https://solo.b3log.org" target="_blank">Solo</a> <br>
        Theme <a rel="friend" href="https://github.com/JinJianh/solo-nexmoe" target="_blank">${skinDirName}</a>
        by <a rel="friend" href="https://www.jinjianh.com" target="_blank">JinJian</a>
    </div>
</div>