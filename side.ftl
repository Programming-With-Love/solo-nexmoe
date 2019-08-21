<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
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
            <i class="mdui-list-item-icon iconfont solo-home"></i>
            <div class="mdui-list-item-content">回到首页</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/links.html" title="友情链接">
            <i class="mdui-list-item-icon iconfont solo-list"></i>
            <div class="mdui-list-item-content">友情链接</div>
        </a>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/search" title="搜索">
            <i class="mdui-list-item-icon iconfont solo-search"></i>
            <div class="mdui-list-item-content">搜索</div>
        </a>
        <#list pageNavigations as page>
            <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="${page.pagePermalink}"
               title="${page.pageTitle}">
                <i class="mdui-list-item-icon iconfont solo-${page.pageIcon}"></i>
                <div class="mdui-list-item-content">${page.pageTitle}</div>
            </a>
        </#list>
        <a class="nexmoe-list-item mdui-list-item mdui-ripple" href="/rss.xml" title="RSS">
            <i class="mdui-list-item-icon iconfont solo-rss"></i>
            <div class="mdui-list-item-content">RSS</div>
        </a>
    </ul>
    <aside id="nexmoe-sidebar">
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
                                <a class="category-list-link mdui-ripple" href="${servePath}/category/${category.categoryURI}"
                                   title="${category.categoryTitle})">
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
                        <a rel="tag" title="${tag.tagTitle}(${tag.tagPublishedRefCount})" href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" class="mdui-ripple">
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
                                <a class="category-list-link mdui-ripple"  href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                                   title="${archiveDate.monthName} ${archiveDate.archiveDateYear}(${archiveDate.archiveDatePublishedArticleCount})">
                                    ${archiveDate.monthName} ${archiveDate.archiveDateYear}</a><span class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>
                            <#else>
                                <a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                                   title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}(${archiveDate.archiveDatePublishedArticleCount})">
                                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a><span class="category-list-count">${archiveDate.archiveDatePublishedArticleCount}</span>
                            </#if>
                        </li>
                    </#if>
                </#list>
            </ul>
        </#if>

    </aside>
    <div class="nexmoe-copyright">
        © ${year} <a href="${servePath}">${blogTitle}</a> <br/>
        ${footerContent} <br>
        Powered by <a href="https://solo.b3log.org" target="_blank">Solo</a> <br>
        Theme <a rel="friend" href="https://github.com/JinJianh/solo-star" target="_blank">${skinDirName}</a>
        by <a rel="friend" href="https://www.jinjianh.com" target="_blank">JinJian</a>
    </div>
</div>