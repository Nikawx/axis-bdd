/*! For license information please see mail.687.08b0dff59a675c000994.js.LICENSE.txt */
(self.webpackChunknextcloud_mail=self.webpackChunknextcloud_mail||[]).push([[687],{79367:function(t,e){var i,n;i=function(t,e){"use strict";var i,n,r="function"==typeof Map?new Map:(i=[],n=[],{has:function(t){return i.indexOf(t)>-1},get:function(t){return n[i.indexOf(t)]},set:function(t,e){-1===i.indexOf(t)&&(i.push(t),n.push(e))},delete:function(t){var e=i.indexOf(t);e>-1&&(i.splice(e,1),n.splice(e,1))}}),l=function(t){return new Event(t,{bubbles:!0})};try{new Event("test")}catch(t){l=function(t){var e=document.createEvent("Event");return e.initEvent(t,!0,!1),e}}function o(t){if(t&&t.nodeName&&"TEXTAREA"===t.nodeName&&!r.has(t)){var e=null,i=null,n=null,o=function(){t.clientWidth!==i&&d()},a=function(e){window.removeEventListener("resize",o,!1),t.removeEventListener("input",d,!1),t.removeEventListener("keyup",d,!1),t.removeEventListener("autosize:destroy",a,!1),t.removeEventListener("autosize:update",d,!1),Object.keys(e).forEach((function(i){t.style[i]=e[i]})),r.delete(t)}.bind(t,{height:t.style.height,resize:t.style.resize,overflowY:t.style.overflowY,overflowX:t.style.overflowX,wordWrap:t.style.wordWrap});t.addEventListener("autosize:destroy",a,!1),"onpropertychange"in t&&"oninput"in t&&t.addEventListener("keyup",d,!1),window.addEventListener("resize",o,!1),t.addEventListener("input",d,!1),t.addEventListener("autosize:update",d,!1),t.style.overflowX="hidden",t.style.wordWrap="break-word",r.set(t,{destroy:a,update:d}),"vertical"===(s=window.getComputedStyle(t,null)).resize?t.style.resize="none":"both"===s.resize&&(t.style.resize="horizontal"),e="content-box"===s.boxSizing?-(parseFloat(s.paddingTop)+parseFloat(s.paddingBottom)):parseFloat(s.borderTopWidth)+parseFloat(s.borderBottomWidth),isNaN(e)&&(e=0),d()}var s;function u(e){var i=t.style.width;t.style.width="0px",t.offsetWidth,t.style.width=i,t.style.overflowY=e}function c(){if(0!==t.scrollHeight){var n=function(t){for(var e=[];t&&t.parentNode&&t.parentNode instanceof Element;)t.parentNode.scrollTop&&e.push({node:t.parentNode,scrollTop:t.parentNode.scrollTop}),t=t.parentNode;return e}(t),r=document.documentElement&&document.documentElement.scrollTop;t.style.height="",t.style.height=t.scrollHeight+e+"px",i=t.clientWidth,n.forEach((function(t){t.node.scrollTop=t.scrollTop})),r&&(document.documentElement.scrollTop=r)}}function d(){c();var e=Math.round(parseFloat(t.style.height)),i=window.getComputedStyle(t,null),r="content-box"===i.boxSizing?Math.round(parseFloat(i.height)):t.offsetHeight;if(r<e?"hidden"===i.overflowY&&(u("scroll"),c(),r="content-box"===i.boxSizing?Math.round(parseFloat(window.getComputedStyle(t,null).height)):t.offsetHeight):"hidden"!==i.overflowY&&(u("hidden"),c(),r="content-box"===i.boxSizing?Math.round(parseFloat(window.getComputedStyle(t,null).height)):t.offsetHeight),n!==r){n=r;var o=l("autosize:resized");try{t.dispatchEvent(o)}catch(t){}}}}function a(t){var e=r.get(t);e&&e.destroy()}function s(t){var e=r.get(t);e&&e.update()}var u=null;"undefined"==typeof window||"function"!=typeof window.getComputedStyle?((u=function(t){return t}).destroy=function(t){return t},u.update=function(t){return t}):((u=function(t,e){return t&&Array.prototype.forEach.call(t.length?t:[t],(function(t){return o(t)})),t}).destroy=function(t){return t&&Array.prototype.forEach.call(t.length?t:[t],a),t},u.update=function(t){return t&&Array.prototype.forEach.call(t.length?t:[t],s),t}),e.default=u,t.exports=e.default},void 0===(n=i.apply(e,[t,e]))||(t.exports=n)},44286:t=>{t.exports=function(t){return t.split("")}},14259:t=>{t.exports=function(t,e,i){var n=-1,r=t.length;e<0&&(e=-e>r?0:r+e),(i=i>r?r:i)<0&&(i+=r),r=e>i?0:i-e>>>0,e>>>=0;for(var l=Array(r);++n<r;)l[n]=t[n+e];return l}},67762:t=>{t.exports=function(t,e){for(var i,n=-1,r=t.length;++n<r;){var l=e(t[n]);void 0!==l&&(i=void 0===i?l:i+l)}return i}},40180:(t,e,i)=>{var n=i(14259);t.exports=function(t,e,i){var r=t.length;return i=void 0===i?r:i,!e&&i>=r?t:n(t,e,i)}},89817:(t,e,i)=>{var n=i(42118);t.exports=function(t,e){for(var i=-1,r=t.length;++i<r&&n(e,t[i],0)>-1;);return i}},62689:t=>{var e=RegExp("[\\u200d\\ud800-\\udfff\\u0300-\\u036f\\ufe20-\\ufe2f\\u20d0-\\u20ff\\ufe0e\\ufe0f]");t.exports=function(t){return e.test(t)}},83140:(t,e,i)=>{var n=i(44286),r=i(62689),l=i(676);t.exports=function(t){return r(t)?l(t):n(t)}},676:t=>{var e="\\ud800-\\udfff",i="["+e+"]",n="[\\u0300-\\u036f\\ufe20-\\ufe2f\\u20d0-\\u20ff]",r="\\ud83c[\\udffb-\\udfff]",l="[^"+e+"]",o="(?:\\ud83c[\\udde6-\\uddff]){2}",a="[\\ud800-\\udbff][\\udc00-\\udfff]",s="(?:"+n+"|"+r+")?",u="[\\ufe0e\\ufe0f]?",c=u+s+"(?:\\u200d(?:"+[l,o,a].join("|")+")"+u+s+")*",d="(?:"+[l+n+"?",n,o,a,i].join("|")+")",f=RegExp(r+"(?="+r+")|"+d+c,"g");t.exports=function(t){return t.match(f)||[]}},88846:(t,e,i)=>{var n=i(92822)("map",i(35161));n.placeholder=i(69306),t.exports=n},37667:(t,e,i)=>{var n=i(92822)("sumBy",i(73303));n.placeholder=i(69306),t.exports=n},45668:(t,e,i)=>{var n=i(92822)("trimCharsStart",i(95659));n.placeholder=i(69306),t.exports=n},73303:(t,e,i)=>{var n=i(67206),r=i(67762);t.exports=function(t,e){return t&&t.length?r(t,n(e,2)):0}},95659:(t,e,i)=>{var n=i(80531),r=i(40180),l=i(89817),o=i(83140),a=i(79833),s=/^\s+/;t.exports=function(t,e,i){if((t=a(t))&&(i||void 0===e))return t.replace(s,"");if(!t||!(e=n(e)))return t;var u=o(t),c=l(u,o(e));return r(u,c).join("")}},59654:t=>{!function(){var e=/\s/g,i=/>/g,n=/</g,r="__autosizeInputGhost";function l(){var t=document.createElement("div");return t.id=r,t.style.cssText="display:inline-block;height:0;overflow:hidden;position:absolute;top:0;visibility:hidden;white-space:nowrap;",document.body.appendChild(t),t}var o=l();t.exports=function(t,a){var s=window.getComputedStyle(t),u="box-sizing:"+s.boxSizing+";border-left:"+s.borderLeftWidth+" solid black;border-right:"+s.borderRightWidth+" solid black;font-family:"+s.fontFamily+";font-feature-settings:"+s.fontFeatureSettings+";font-kerning:"+s.fontKerning+";font-size:"+s.fontSize+";font-stretch:"+s.fontStretch+";font-style:"+s.fontStyle+";font-variant:"+s.fontVariant+";font-variant-caps:"+s.fontVariantCaps+";font-variant-ligatures:"+s.fontVariantLigatures+";font-variant-numeric:"+s.fontVariantNumeric+";font-weight:"+s.fontWeight+";letter-spacing:"+s.letterSpacing+";margin-left:"+s.marginLeft+";margin-right:"+s.marginRight+";padding-left:"+s.paddingLeft+";padding-right:"+s.paddingRight+";text-indent:"+s.textIndent+";text-transform:"+s.textTransform;function c(a){a=a||t.value||t.getAttribute("placeholder")||"",null===document.getElementById(r)&&(o=l()),o.style.cssText+=u,o.innerHTML=function(t){return t.replace(e,"&nbsp;").replace(i,"&lt;").replace(n,"&gt;")}(a);var s=window.getComputedStyle(o).width;return t.style.width=s,s}t.addEventListener("input",(function(){c()}));var d=c();return a&&a.minWidth&&"0px"!==d&&(t.style.minWidth=d),c}}()},59197:(t,e,i)=>{var n=i(79367),r=i(59654);e.install=function(t){t.directive("autosize",{bind:function(t,e){var i=t.tagName;"TEXTAREA"==i?n(t):"INPUT"==i&&"text"==t.type&&r(t)},componentUpdated:function(t,e,i){var l=t.tagName;"TEXTAREA"==l?n.update(t):"INPUT"==l&&"text"==t.type&&r(t)},unbind:function(t){n.destroy(t)}})}},17113:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"CloudIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon cloud-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M6.5 20Q4.22 20 2.61 18.43 1 16.85 1 14.58 1 12.63 2.17 11.1 3.35 9.57 5.25 9.15 5.88 6.85 7.75 5.43 9.63 4 12 4 14.93 4 16.96 6.04 19 8.07 19 11 20.73 11.2 21.86 12.5 23 13.78 23 15.5 23 17.38 21.69 18.69 20.38 20 18.5 20Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},40069:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"EmailArrowRightOutlineIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon email-arrow-right-outline-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M13 19C13 18.66 13.04 18.33 13.09 18H4V8L12 13L20 8V13.09C20.72 13.21 21.39 13.46 22 13.81V6C22 4.9 21.1 4 20 4H4C2.9 4 2 4.9 2 6V18C2 19.1 2.9 20 4 20H13.09C13.04 19.67 13 19.34 13 19M20 6L12 11L4 6H20M20 22V20H16V18H20V16L23 19L20 22Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},90207:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"LinkIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon link-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M3.9,12C3.9,10.29 5.29,8.9 7,8.9H11V7H7A5,5 0 0,0 2,12A5,5 0 0,0 7,17H11V15.1H7C5.29,15.1 3.9,13.71 3.9,12M8,13H16V11H8V13M17,7H13V8.9H17C18.71,8.9 20.1,10.29 20.1,12C20.1,13.71 18.71,15.1 17,15.1H13V17H17A5,5 0 0,0 22,12A5,5 0 0,0 17,7Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},58754:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"MinusIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon minus-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M19,13H5V11H19V13Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},61632:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"SendClockIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon send-clock-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M2 3V10L11 12L2 14V21L9.27 17.89A7 7 0 0 0 16 23A7 7 0 0 0 23 16A7 7 0 0 0 16 9L2 3M16 11A5 5 0 0 1 21 16A5 5 0 0 1 16 21A5 5 0 0 1 11 16A5 5 0 0 1 16 11M15 12.5V16.5L18 18.5L18.75 17.25L16.5 15.75V12.5H15Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},93759:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"ShapeIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon shape-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M11,13.5V21.5H3V13.5H11M12,2L17.5,11H6.5L12,2M17.5,13C20,13 22,15 22,17.5C22,20 20,22 17.5,22C15,22 13,20 13,17.5C13,15 15,13 17.5,13Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},49787:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"UnfoldLessHorizontalIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon unfold-less-horizontal-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M16.59,5.41L15.17,4L12,7.17L8.83,4L7.41,5.41L12,10M7.41,18.59L8.83,20L12,16.83L15.17,20L16.58,18.59L12,14L7.41,18.59Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},76985:(t,e,i)=>{"use strict";i.d(e,{Z:()=>r});const n={name:"UnfoldMoreHorizontalIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}},r=(0,i(51900).Z)(n,(function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon unfold-more-horizontal-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M12,18.17L8.83,15L7.42,16.41L12,21L16.59,16.41L15.17,15M12,5.83L15.17,9L16.58,7.59L12,3L7.41,7.59L8.83,9L12,5.83Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])}),[],!1,null,null,null).exports},86119:(t,e,i)=>{"use strict";i.d(e,{Z:()=>l});var n=i(89860),r=i(97220);const l=(0,i(51900).Z)(r.Z,n.s,n.x,!1,null,null,null).exports},27773:(t,e,i)=>{"use strict";i.d(e,{Z:()=>n});const n={name:"UploadIcon",emits:["click"],props:{title:{type:String},fillColor:{type:String,default:"currentColor"},size:{type:Number,default:24}}}},97220:(t,e,i)=>{"use strict";i.d(e,{Z:()=>n});const n=i(27773).Z},89860:(t,e,i)=>{"use strict";i.d(e,{s:()=>n,x:()=>r});var n=function(){var t=this,e=t._self._c;return e("span",t._b({staticClass:"material-design-icon upload-icon",attrs:{"aria-hidden":!t.title,"aria-label":t.title,role:"img"},on:{click:function(e){return t.$emit("click",e)}}},"span",t.$attrs,!1),[e("svg",{staticClass:"material-design-icon__svg",attrs:{fill:t.fillColor,width:t.size,height:t.size,viewBox:"0 0 24 24"}},[e("path",{attrs:{d:"M9,16V10H5L12,3L19,10H15V16H9M5,20V18H19V20H5Z"}},[t.title?e("title",[t._v(t._s(t.title))]):t._e()])])])},r=[]}}]);
//# sourceMappingURL=mail.687.08b0dff59a675c000994.js.map