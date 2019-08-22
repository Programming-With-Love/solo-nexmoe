<#macro comments commentList article>
    <#if article.commentable>
        <textarea rows="3" placeholder="评论内容只能为 2 到 500 个字符！" id="comment" readonly="readonly"></textarea>
    </#if>
    <ul class="comments" id="comments">
        <#list commentList as comment>
            <#include "common-comment.ftl"/>
        </#list>
    </ul>
</#macro>