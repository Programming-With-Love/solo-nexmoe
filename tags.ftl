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
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
    <@head title="${tagLabel} - ${blogTitle}">
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
            <article class="links nexmoe-py">
                <h2>${tagLabel}</h2>

                <#if 0 != mostUsedTags?size>
                    <div class="nexmoe-widget tagcloud tagBall">
                        <#list tags as tag>
                            <a rel="tag" title="${tagLabel}:${tag.tagTitle} - ${blogTitle}"
                               href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" class="mdui-ripple tag">
                                ${tag.tagTitle}</a>
                        </#list>
                    </div>
                </#if>
            </article>
            <#if pjax><!---- pjax {#pjax} end ----></#if>
        </main>

        <#if "" != noticeBoard>
            <div class="nexmoe-hitokoto">
                <p id="hitokoto">${blogSubtitle}</p>
            </div>
        </#if>
        <div class="back-to-top iconfont solo-gotop" onclick="Util.goTop()"></div>
    </div>
</div>
<#include "footer.ftl">
<#--<#if pjax><!---- pjax {#pjax} start --&ndash;&gt;</#if>-->

<script>
    var tagEle = "querySelectorAll" in document ? document.querySelectorAll(".tag") : getClass("tag"),
        paper = "querySelectorAll" in document ? document.querySelector(".tagBall") : getClass("tagBall")[0];
    RADIUS = 250,
        fallLength = 500,
        tags = [],
        angleX = Math.PI / 500,
        angleY = Math.PI / 500,
        CX = paper.offsetWidth / 2,
        CY = paper.offsetHeight / 2,
        EX = paper.offsetLeft + document.body.scrollLeft + document.documentElement.scrollLeft,
        EY = paper.offsetTop + document.body.scrollTop + document.documentElement.scrollTop;

    function getClass(className) {
        var ele = document.getElementsByTagName("*");
        var classEle = [];
        for (var i = 0; i < ele.length; i++) {
            var cn = ele[i].className;
            if (cn === className) {
                classEle.push(ele[i]);
            }
        }
        return classEle;
    }

    function innit() {
        console.log(1)
        for (var i = 0; i < tagEle.length; i++) {
            var a, b;
            var k = -1 + (2 * (i + 1) - 1) / tagEle.length;
            var a = Math.acos(k);
            var b = a * Math.sqrt(tagEle.length * Math.PI);
            var x = RADIUS * Math.sin(a) * Math.cos(b);
            var y = RADIUS * Math.sin(a) * Math.sin(b);
            var z = RADIUS * Math.cos(a);
            var t = new tag(tagEle[i], x, y, z);
            tags.push(t);
            t.move();
        }
    }

    Array.prototype.forEach = function(callback) {
        for (var i = 0; i < this.length; i++) {
            callback.call(this[i]);
        }
    }

    function animate() {
        setInterval(function(){
            rotateX();
            rotateY();
            tags.forEach(function(){
                this.move();
            })
        } , 17)
    }

    if ("addEventListener" in window) {
        paper.addEventListener("mousemove", function(event) {
            var x = event.clientX - EX - CX;
            var y = event.clientY - EY - CY;
            angleY = x * 0.0001;
            angleX = y * 0.0001;
        });
    }
    else {
        paper.attachEvent("onmousemove", function(event) {
            var x = event.clientX - EX - CX;
            var y = event.clientY - EY - CY;
            angleY = x * 0.0001;
            angleX = y * 0.0001;
        });
    }

    function rotateX() {
        var cos = Math.cos(angleX);
        var sin = Math.sin(angleX);
        tags.forEach(function() {
            var y1 = this.y * cos - this.z * sin;
            var z1 = this.z * cos + this.y * sin;
            this.y = y1;
            this.z = z1;
        })

    }

    function rotateY() {
        var cos = Math.cos(angleY);
        var sin = Math.sin(angleY);
        tags.forEach(function() {
            var x1 = this.x * cos - this.z * sin;
            var z1 = this.z * cos + this.x * sin;
            this.x = x1;
            this.z = z1;
        })
    }

    var tag = function(ele, x, y, z) {
        this.ele = ele;
        this.x = x;
        this.y = y;
        this.z = z;
    }

    tag.prototype = {
        move: function() {
            var scale = fallLength / (fallLength - this.z);
            var alpha = (this.z + RADIUS) / (2 * RADIUS);
            var left = this.x + CX - this.ele.offsetWidth / 2 + "px";
            var top = this.y + CY - this.ele.offsetHeight / 2 + "px";
            var transform = 'translate(' + left + ', ' + top + ') scale(' + scale + ')';
            this.ele.style.opacity = alpha + 0.5;
            this.ele.style.zIndex = parseInt(scale * 100);
            this.ele.style.transform = transform;
            this.ele.style.webkitTransform = transform;
        }
    }
    innit();
    animate();
</script>
<#--<#if pjax><!---- pjax {#pjax} end --&ndash;&gt;</#if>-->
</body>
</html>
