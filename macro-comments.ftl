<#macro comments commentList article>
    <#if article.commentable && 0 != commentList?size>
        <div class="nexmoe-comment">
            <#if article.commentable>
                <textarea rows="3" placeholder="评论内容只能为 2 到 500 个字符！" id="comment" readonly="readonly"></textarea>
            </#if>
            <#if 0 != commentList?size>
                <ul class="comments" id="comments">
                    <#list commentList as comment>
                        <#include "common-comment.ftl"/>
                    </#list>
                </ul>
            </#if>
        </div>
    </#if>
</#macro>