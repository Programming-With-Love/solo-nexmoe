<#include "../../common-template/macro-common_head.ftl">
<#include "macro-comments.ftl">
<#include "../../common-template/macro-comment_script.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${article.articleTitle} - ${blogTitle}" description="${article.articleAbstract?html}">
        <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mdui@0.4.3/dist/css/mdui.min.css">
        <link rel="stylesheet"
              href="${staticServePath}/skins/${skinDirName}/css/font-icon.css?${staticResourceVersion}">
    </@head>
</head>
<body class="mdui-drawer-body-left mdui-loaded">
<div id="nexmoe-background">
    <#include "header.ftl">
</div>
<div id="nexmoe-header">
    <#include "side.ftl">
</div>
<div id="nexmoe-content">
    <div class="nexmoe-primary">
        <main id="pjax" class="fn__flex-1">
            <#if pjax><!---- pjax {#pjax} start ----></#if>
            <div class="nexmoe-post">
                <div class="nexmoe-post-cover">
                    <img src="${article.articleImg1URL}" alt="${article.articleTitle}"
                         data-src="${article.articleImg1URL}" class=" ls-is-cached lazyloaded"
                         referrerpolicy="no-referrer">
                    <h1>${article.articleTitle}</h1>
                </div>
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
                    <div class="vditor-reset">
                        ${article.articleContent}
                    </div>
                </article>
                <#if "" != article.articleSign.signHTML?trim>
                    <div class="nexmoe-post-copyright">
                        <i class="mdui-list-item-icon iconfont solo-about2"></i>
                        ${article.articleSign.signHTML}
                    </div>
                </#if>
            </div>
            <div class="post__toc">
                <#if article?? && article.articleToC?? && article.articleToC?size &gt; 0>
                    <#include "../../common-template/toc.ftl"/>
                </#if>
            </div>
            <@comments commentList=articleComments article=article></@comments>
            <#if pjax><!---- pjax {#pjax} end ----></#if>
        </main>

        <#if "" != noticeBoard>
            <div class="nexmoe-hitokoto">
                <p id="hitokoto">${blogSubtitle}</p>
            </div>
        </#if>
        <div class="back-to-top iconfont solo-top" onclick="Util.goTop()"></div>
    </div>
</div>
<#include "footer.ftl">
<#if pjax><!---- pjax {#pjax} start ----></#if>
<@comment_script oId=article.oId commentable=article.commentable>
</@comment_script>
<#if pjax><!---- pjax {#pjax} end ----></#if>
</body>
</html>