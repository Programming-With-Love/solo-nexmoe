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
let links = document.querySelectorAll(".nexmoe-list-item");
let rootRealPath = getRealPath(window.location.pathname, true);
for (let link of links) {
    let linkPath = link.getAttribute("href");
    if (linkPath && getRealPath(linkPath, true) === rootRealPath) {
        link.className = "active nexmoe-list-item mdui-list-item mdui-ripple";
    }
}
$("table")
    .has("img")
    .addClass("nexmoe-album");

$("#nexmoe-content img").each(function() {
    $(this).attr("data-src", $(this).attr("src"));
    $(this).attr("src", "");
    $(this).addClass("lazyload");
    $(this).attr("referrerPolicy", "no-referrer");
});

$("article:not(.nexmoe-py) img").each(function() {
    var element = document.createElement("a");
    $(element).attr("data-fancybox", "gallery");
    $(element).attr("href", $(this).attr("data-src"));
    $(this).wrap(element);
});

$("#nexmoe-sidebar a").addClass("mdui-ripple");
mdui.mutation();
