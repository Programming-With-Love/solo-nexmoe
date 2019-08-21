<section class="nexmoe-posts" id="brand-waterfall">
    <#list articles as article>
        <div class="nexmoe-post">
            <a href="${servePath}${article.articlePermalink}" title="${article.articleTitle} - ${blogTitle}">
                <div class="nexmoe-post-cover mdui-ripple">
                    <img src="${article.articleImg1URL}" alt="${article.articleTitle}"
                         data-src="/images/5c3aec85a4343.jpg" class=" ls-is-cached lazyloaded"
                         referrerpolicy="no-referrer">
                    <h1>${article.articleTitle}</h1>
                </div>
            </a>
            <div class="nexmoe-post-meta">
                <a>
                    <i class="nexmoefont iconfont solo-calendarl"></i>${article.articleUpdateDate?string("yyyy年MM月dd日")}
                </a>
                <#if article.articleCommentCount != 0>
                    <a>
                        <i class="nexmoefont iconfont solo-browse"></i>${article.articleCommentCount} 浏览
                    </a>
                </#if>
                <a>
                    <i class="nexmoefont iconfont solo-heat"></i>${article.articleViewCount}°C
                </a>
                <#list article.articleTags?split(",") as articleTag>
                    <#if articleTag_index == 0>
                        <#if article.category??>
                            <a class="nexmoefont iconfont solo-category -link"
                               href="${servePath}/category/${article.category.categoryURI}">${article.category.categoryTitle}</a>
                        </#if>
                    </#if>
                    <a class="nexmoefont iconfont solo-tag -link"
                       href="${servePath}/tags/${articleTag?url('UTF-8')}">${articleTag}</a>
                </#list>

            </div>
            <article>
                <p>${article.articleAbstractText}</p>
            </article>
        </div>
    </#list>
</section>

<#if 1 < paginationPageCount >
    <nav class="nexmoe-page-nav">
        <#if 1 != paginationPageNums?first>
            <a class="extend prev" rel="prev" href="${servePath}${path}?p=${paginationPreviousPageNum}">
                <i class="nexmoefont iconfont solo-left"></i>
            </a>
            <a class="page-number" href="${servePath}${path}">1</a>
            <span class="page-number">…</span>
        </#if>
        <#list paginationPageNums as paginationPageNum>
            <#if paginationPageNum == paginationCurrentPageNum>
                <span class="page-number current">${paginationPageNum}</span>
            <#else>
                <a class="page-number"
                   href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
            </#if>
        </#list>
        <#if paginationPageNums?last != paginationPageCount>
            <span class="page-number">…</span>
            <a href="${servePath}${path}?p=${paginationPageCount}"
               class="page-number">${paginationPageCount}</a>
            <a class="extend next" rel="next" href="${servePath}${path}?p=${paginationNextPageNum}">
                <i class="nexmoefont iconfont solo-right"></i>
            </a>
        </#if>
    </nav>
</#if>
