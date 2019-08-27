/*
 * Solo - A small and beautiful blogging system written in Java.
 * Copyright (c) 2010-present, b3log.org
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
const getRealPath = (pathname, desc = false) => {
    if (!pathname) {
        pathname = window.location.pathname;
    }
    let names = pathname.split("/");
    if (desc === false) {
        for (let i = names.length - 1; i >= 0; --i) {
            let name = names[i].trim();
            if (name.length > 0 && name !== "/" && name !== "index.html") {
                return name;
            }
        }
    } else {
        for (let i = 0; i < names.length; ++i) {
            let name = names[i].trim();
            if (name.length > 0 && name !== "/" && name !== "index.html") {
                return name;
            }
        }
    }
    return "/";
};

const GetUrlRelativePath = (url) => {
    let arrUrl = url.split("//");
    let l = arrUrl.length
    let relUrl = ""
    if (l < 2) {
        relUrl = arrUrl[l - 1]
    } else {
        let start = arrUrl[1].indexOf("/");
        relUrl = arrUrl[1].substring(start);//stop省略，截取从start开始到结尾的所有字符

        if (relUrl.indexOf("?") != -1) {
            relUrl = relUrl.split("?")[0];
        }
    }
    if (relUrl.substr(0, 1) == "/" && relUrl != "/") {
        relUrl = relUrl.slice(1)
    }
    return relUrl
}

$("table")
    .has("img")
    .addClass("nexmoe-album");

$("#nexmoe-content img").each(function () {
    $(this).attr("data-src", $(this).attr("src"));
    $(this).attr("src", "");
    $(this).addClass("lazyload");
    $(this).attr("referrerPolicy", "no-referrer");
});


$("#nexmoe-sidebar a").addClass("mdui-ripple");
mdui.mutation();



