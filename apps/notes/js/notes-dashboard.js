(()=>{var e,r,o={},a={};function i(e){var t=a[e];if(void 0!==t)return t.exports;var n=a[e]={id:e,loaded:!1,exports:{}};return o[e].call(n.exports,n,n.exports,i),n.loaded=!0,n.exports}i.m=o,i.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return i.d(t,{a:t}),t},i.d=(e,t)=>{for(var n in t)i.o(t,n)&&!i.o(e,n)&&Object.defineProperty(e,n,{enumerable:!0,get:t[n]})},i.f={},i.e=e=>Promise.all(Object.keys(i.f).reduce(((t,n)=>(i.f[n](e,t),t)),[])),i.u=e=>"notes-commons.js?v=bd34eeaf039b6bffcb57",i.g=function(){if("object"==typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(e){if("object"==typeof window)return window}}(),i.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),e={},r="notes:",i.l=(t,n,o,a)=>{if(e[t])e[t].push(n);else{var d,s;if(void 0!==o)for(var l=document.getElementsByTagName("script"),u=0;u<l.length;u++){var c=l[u];if(c.getAttribute("src")==t||c.getAttribute("data-webpack")==r+o){d=c;break}}d||(s=!0,(d=document.createElement("script")).charset="utf-8",d.timeout=120,i.nc&&d.setAttribute("nonce",i.nc),d.setAttribute("data-webpack",r+o),d.src=t),e[t]=[n];var f=(n,r)=>{d.onerror=d.onload=null,clearTimeout(p);var o=e[t];if(delete e[t],d.parentNode&&d.parentNode.removeChild(d),o&&o.forEach((e=>e(r))),n)return n(r)},p=setTimeout(f.bind(null,void 0,{type:"timeout",target:d}),12e4);d.onerror=f.bind(null,d.onerror),d.onload=f.bind(null,d.onload),s&&document.head.appendChild(d)}},i.r=e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},i.nmd=e=>(e.paths=[],e.children||(e.children=[]),e),i.j=966,i.p="/apps/notes/js/",(()=>{var e={966:0};i.f.j=(t,n)=>{var r=i.o(e,t)?e[t]:void 0;if(0!==r)if(r)n.push(r[2]);else{var o=new Promise(((n,o)=>r=e[t]=[n,o]));n.push(r[2]=o);var a=i.p+i.u(t),d=new Error;i.l(a,(n=>{if(i.o(e,t)&&(0!==(r=e[t])&&(e[t]=void 0),r)){var o=n&&("load"===n.type?"missing":n.type),a=n&&n.target&&n.target.src;d.message="Loading chunk "+t+" failed.\n("+o+": "+a+")",d.name="ChunkLoadError",d.type=o,d.request=a,r[1](d)}}),"chunk-"+t,t)}};var t=(t,n)=>{var r,o,[a,d,s]=n,l=0;if(a.some((t=>0!==e[t]))){for(r in d)i.o(d,r)&&(i.m[r]=d[r]);s&&s(i)}for(t&&t(n);l<a.length;l++)o=a[l],i.o(e,o)&&e[o]&&e[o][0](),e[o]=0},n=self.webpackChunknotes=self.webpackChunknotes||[];n.forEach(t.bind(null,0)),n.push=t.bind(null,n.push.bind(n))})(),i.nc=void 0,i.nc=btoa(OC.requestToken),i.p=OC.linkTo("notes","js/"),document.addEventListener("DOMContentLoaded",(()=>{OCA.Dashboard.register("notes",(async e=>{const{default:r}=await i.e(351).then(i.bind(i,20144)),{default:o}=await i.e(351).then(i.bind(i,6074));r.mixin({methods:{t,n}}),(new(r.extend(o))).$mount(e)}))}))})();
//# sourceMappingURL=notes-dashboard.js.map?v=598b0d8a7bd989618018