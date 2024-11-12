import{s as K,v as ae,x as pe,f as wt,g as Kt,y as Lt,ba as Zt,ap as Jt,h as Qt,j as en,l as g,L as ge,bb as he,bc as Te,o as b,c as F,b as Z,u as P,d as W,I as Fe,as as tn,w as J,J as He,t as Tt,K as nn,M as an,n as on}from"./index-1c6b3dd3.js";import{N as _t,a as rn}from"./Image-8dc634c7.js";import"./use-locale-119c58a2.js";const ln=K("thing",`
 display: flex;
 transition: color .3s var(--n-bezier);
 font-size: var(--n-font-size);
 color: var(--n-text-color);
`,[K("thing-avatar",`
 margin-right: 12px;
 margin-top: 2px;
 `),K("thing-avatar-header-wrapper",`
 display: flex;
 flex-wrap: nowrap;
 `,[K("thing-header-wrapper",`
 flex: 1;
 `)]),K("thing-main",`
 flex-grow: 1;
 `,[K("thing-header",`
 display: flex;
 margin-bottom: 4px;
 justify-content: space-between;
 align-items: center;
 `,[ae("title",`
 font-size: 16px;
 font-weight: var(--n-title-font-weight);
 transition: color .3s var(--n-bezier);
 color: var(--n-title-text-color);
 `)]),ae("description",[pe("&:not(:last-child)",`
 margin-bottom: 4px;
 `)]),ae("content",[pe("&:not(:first-child)",`
 margin-top: 12px;
 `)]),ae("footer",[pe("&:not(:first-child)",`
 margin-top: 12px;
 `)]),ae("action",[pe("&:not(:first-child)",`
 margin-top: 12px;
 `)])])]),sn=Object.assign(Object.assign({},Lt.props),{title:String,titleExtra:String,description:String,descriptionStyle:[String,Object],content:String,contentStyle:[String,Object],contentIndented:Boolean}),cn=wt({name:"Thing",props:sn,setup(a,{slots:n}){const{mergedClsPrefixRef:c,inlineThemeDisabled:s,mergedRtlRef:d}=Kt(a),A=Lt("Thing","-thing",ln,Zt,a,c),S=Jt("Thing",d,c),U=Qt(()=>{const{self:{titleTextColor:r,textColor:m,titleFontWeight:M,fontSize:ee},common:{cubicBezierEaseInOut:G}}=A.value;return{"--n-bezier":G,"--n-font-size":ee,"--n-text-color":m,"--n-title-font-weight":M,"--n-title-text-color":r}}),w=s?en("thing",void 0,U,a):void 0;return()=>{var r;const{value:m}=c,M=S?S.value:!1;return(r=w==null?void 0:w.onRender)===null||r===void 0||r.call(w),g("div",{class:[`${m}-thing`,w==null?void 0:w.themeClass,M&&`${m}-thing--rtl`],style:s?void 0:U.value},n.avatar&&a.contentIndented?g("div",{class:`${m}-thing-avatar`},n.avatar()):null,g("div",{class:`${m}-thing-main`},!a.contentIndented&&(n.header||a.title||n["header-extra"]||a.titleExtra||n.avatar)?g("div",{class:`${m}-thing-avatar-header-wrapper`},n.avatar?g("div",{class:`${m}-thing-avatar`},n.avatar()):null,n.header||a.title||n["header-extra"]||a.titleExtra?g("div",{class:`${m}-thing-header-wrapper`},g("div",{class:`${m}-thing-header`},n.header||a.title?g("div",{class:`${m}-thing-header__title`},n.header?n.header():a.title):null,n["header-extra"]||a.titleExtra?g("div",{class:`${m}-thing-header__extra`},n["header-extra"]?n["header-extra"]():a.titleExtra):null),n.description||a.description?g("div",{class:`${m}-thing-main__description`,style:a.descriptionStyle},n.description?n.description():a.description):null):null):g(ge,null,n.header||a.title||n["header-extra"]||a.titleExtra?g("div",{class:`${m}-thing-header`},n.header||a.title?g("div",{class:`${m}-thing-header__title`},n.header?n.header():a.title):null,n["header-extra"]||a.titleExtra?g("div",{class:`${m}-thing-header__extra`},n["header-extra"]?n["header-extra"]():a.titleExtra):null):null,n.description||a.description?g("div",{class:`${m}-thing-main__description`,style:a.descriptionStyle},n.description?n.description():a.description):null),n.default||a.content?g("div",{class:`${m}-thing-main__content`,style:a.contentStyle},n.default?n.default():a.content):null,n.footer?g("div",{class:`${m}-thing-main__footer`},n.footer()):null,n.action?g("div",{class:`${m}-thing-main__action`},n.action()):null))}}});/*! @license DOMPurify 3.0.5 | (c) Cure53 and other contributors | Released under the Apache license 2.0 and Mozilla Public License 2.0 | github.com/cure53/DOMPurify/blob/3.0.5/LICENSE */const{entries:vt,setPrototypeOf:Et,isFrozen:un,getPrototypeOf:mn,getOwnPropertyDescriptor:fn}=Object;let{freeze:R,seal:O,create:dn}=Object,{apply:Ye,construct:Ve}=typeof Reflect<"u"&&Reflect;Ye||(Ye=function(n,c,s){return n.apply(c,s)});R||(R=function(n){return n});O||(O=function(n){return n});Ve||(Ve=function(n,c){return new n(...c)});const pn=N(Array.prototype.forEach),gt=N(Array.prototype.pop),oe=N(Array.prototype.push),Ae=N(String.prototype.toLowerCase),ze=N(String.prototype.toString),hn=N(String.prototype.match),D=N(String.prototype.replace),Tn=N(String.prototype.indexOf),_n=N(String.prototype.trim),L=N(RegExp.prototype.test),re=En(TypeError);function N(a){return function(n){for(var c=arguments.length,s=new Array(c>1?c-1:0),d=1;d<c;d++)s[d-1]=arguments[d];return Ye(a,n,s)}}function En(a){return function(){for(var n=arguments.length,c=new Array(n),s=0;s<n;s++)c[s]=arguments[s];return Ve(a,c)}}function l(a,n,c){var s;c=(s=c)!==null&&s!==void 0?s:Ae,Et&&Et(a,null);let d=n.length;for(;d--;){let A=n[d];if(typeof A=="string"){const S=c(A);S!==A&&(un(n)||(n[d]=S),A=S)}a[A]=!0}return a}function Q(a){const n=dn(null);for(const[c,s]of vt(a))n[c]=s;return n}function _e(a,n){for(;a!==null;){const s=fn(a,n);if(s){if(s.get)return N(s.get);if(typeof s.value=="function")return N(s.value)}a=mn(a)}function c(s){return console.warn("fallback value for",s),null}return c}const At=R(["a","abbr","acronym","address","area","article","aside","audio","b","bdi","bdo","big","blink","blockquote","body","br","button","canvas","caption","center","cite","code","col","colgroup","content","data","datalist","dd","decorator","del","details","dfn","dialog","dir","div","dl","dt","element","em","fieldset","figcaption","figure","font","footer","form","h1","h2","h3","h4","h5","h6","head","header","hgroup","hr","html","i","img","input","ins","kbd","label","legend","li","main","map","mark","marquee","menu","menuitem","meter","nav","nobr","ol","optgroup","option","output","p","picture","pre","progress","q","rp","rt","ruby","s","samp","section","select","shadow","small","source","spacer","span","strike","strong","style","sub","summary","sup","table","tbody","td","template","textarea","tfoot","th","thead","time","tr","track","tt","u","ul","var","video","wbr"]),Be=R(["svg","a","altglyph","altglyphdef","altglyphitem","animatecolor","animatemotion","animatetransform","circle","clippath","defs","desc","ellipse","filter","font","g","glyph","glyphref","hkern","image","line","lineargradient","marker","mask","metadata","mpath","path","pattern","polygon","polyline","radialgradient","rect","stop","style","switch","symbol","text","textpath","title","tref","tspan","view","vkern"]),We=R(["feBlend","feColorMatrix","feComponentTransfer","feComposite","feConvolveMatrix","feDiffuseLighting","feDisplacementMap","feDistantLight","feDropShadow","feFlood","feFuncA","feFuncB","feFuncG","feFuncR","feGaussianBlur","feImage","feMerge","feMergeNode","feMorphology","feOffset","fePointLight","feSpecularLighting","feSpotLight","feTile","feTurbulence"]),gn=R(["animate","color-profile","cursor","discard","font-face","font-face-format","font-face-name","font-face-src","font-face-uri","foreignobject","hatch","hatchpath","mesh","meshgradient","meshpatch","meshrow","missing-glyph","script","set","solidcolor","unknown","use"]),Ge=R(["math","menclose","merror","mfenced","mfrac","mglyph","mi","mlabeledtr","mmultiscripts","mn","mo","mover","mpadded","mphantom","mroot","mrow","ms","mspace","msqrt","mstyle","msub","msup","msubsup","mtable","mtd","mtext","mtr","munder","munderover","mprescripts"]),An=R(["maction","maligngroup","malignmark","mlongdiv","mscarries","mscarry","msgroup","mstack","msline","msrow","semantics","annotation","annotation-xml","mprescripts","none"]),St=R(["#text"]),yt=R(["accept","action","align","alt","autocapitalize","autocomplete","autopictureinpicture","autoplay","background","bgcolor","border","capture","cellpadding","cellspacing","checked","cite","class","clear","color","cols","colspan","controls","controlslist","coords","crossorigin","datetime","decoding","default","dir","disabled","disablepictureinpicture","disableremoteplayback","download","draggable","enctype","enterkeyhint","face","for","headers","height","hidden","high","href","hreflang","id","inputmode","integrity","ismap","kind","label","lang","list","loading","loop","low","max","maxlength","media","method","min","minlength","multiple","muted","name","nonce","noshade","novalidate","nowrap","open","optimum","pattern","placeholder","playsinline","poster","preload","pubdate","radiogroup","readonly","rel","required","rev","reversed","role","rows","rowspan","spellcheck","scope","selected","shape","size","sizes","span","srclang","start","src","srcset","step","style","summary","tabindex","title","translate","type","usemap","valign","value","width","xmlns","slot"]),$e=R(["accent-height","accumulate","additive","alignment-baseline","ascent","attributename","attributetype","azimuth","basefrequency","baseline-shift","begin","bias","by","class","clip","clippathunits","clip-path","clip-rule","color","color-interpolation","color-interpolation-filters","color-profile","color-rendering","cx","cy","d","dx","dy","diffuseconstant","direction","display","divisor","dur","edgemode","elevation","end","fill","fill-opacity","fill-rule","filter","filterunits","flood-color","flood-opacity","font-family","font-size","font-size-adjust","font-stretch","font-style","font-variant","font-weight","fx","fy","g1","g2","glyph-name","glyphref","gradientunits","gradienttransform","height","href","id","image-rendering","in","in2","k","k1","k2","k3","k4","kerning","keypoints","keysplines","keytimes","lang","lengthadjust","letter-spacing","kernelmatrix","kernelunitlength","lighting-color","local","marker-end","marker-mid","marker-start","markerheight","markerunits","markerwidth","maskcontentunits","maskunits","max","mask","media","method","mode","min","name","numoctaves","offset","operator","opacity","order","orient","orientation","origin","overflow","paint-order","path","pathlength","patterncontentunits","patterntransform","patternunits","points","preservealpha","preserveaspectratio","primitiveunits","r","rx","ry","radius","refx","refy","repeatcount","repeatdur","restart","result","rotate","scale","seed","shape-rendering","specularconstant","specularexponent","spreadmethod","startoffset","stddeviation","stitchtiles","stop-color","stop-opacity","stroke-dasharray","stroke-dashoffset","stroke-linecap","stroke-linejoin","stroke-miterlimit","stroke-opacity","stroke","stroke-width","style","surfacescale","systemlanguage","tabindex","targetx","targety","transform","transform-origin","text-anchor","text-decoration","text-rendering","textlength","type","u1","u2","unicode","values","viewbox","visibility","version","vert-adv-y","vert-origin-x","vert-origin-y","width","word-spacing","wrap","writing-mode","xchannelselector","ychannelselector","x","x1","x2","xmlns","y","y1","y2","z","zoomandpan"]),Rt=R(["accent","accentunder","align","bevelled","close","columnsalign","columnlines","columnspan","denomalign","depth","dir","display","displaystyle","encoding","fence","frame","height","href","id","largeop","length","linethickness","lspace","lquote","mathbackground","mathcolor","mathsize","mathvariant","maxsize","minsize","movablelimits","notation","numalign","open","rowalign","rowlines","rowspacing","rowspan","rspace","rquote","scriptlevel","scriptminsize","scriptsizemultiplier","selection","separator","separators","stretchy","subscriptshift","supscriptshift","symmetric","voffset","width","xmlns"]),Ee=R(["xlink:href","xml:id","xlink:title","xml:space","xmlns:xlink"]),Sn=O(/\{\{[\w\W]*|[\w\W]*\}\}/gm),yn=O(/<%[\w\W]*|[\w\W]*%>/gm),Rn=O(/\${[\w\W]*}/gm),bn=O(/^data-[\-\w.\u00B7-\uFFFF]/),wn=O(/^aria-[\-\w]+$/),Nt=O(/^(?:(?:(?:f|ht)tps?|mailto|tel|callto|sms|cid|xmpp):|[^a-z]|[a-z+.\-]+(?:[^a-z+.\-:]|$))/i),Ln=O(/^(?:\w+script|data):/i),vn=O(/[\u0000-\u0020\u00A0\u1680\u180E\u2000-\u2029\u205F\u3000]/g),Dt=O(/^html$/i);var bt=Object.freeze({__proto__:null,MUSTACHE_EXPR:Sn,ERB_EXPR:yn,TMPLIT_EXPR:Rn,DATA_ATTR:bn,ARIA_ATTR:wn,IS_ALLOWED_URI:Nt,IS_SCRIPT_OR_DATA:Ln,ATTR_WHITESPACE:vn,DOCTYPE_NAME:Dt});const Nn=()=>typeof window>"u"?null:window,Dn=function(n,c){if(typeof n!="object"||typeof n.createPolicy!="function")return null;let s=null;const d="data-tt-policy-suffix";c&&c.hasAttribute(d)&&(s=c.getAttribute(d));const A="dompurify"+(s?"#"+s:"");try{return n.createPolicy(A,{createHTML(S){return S},createScriptURL(S){return S}})}catch{return console.warn("TrustedTypes policy "+A+" could not be created."),null}};function Ot(){let a=arguments.length>0&&arguments[0]!==void 0?arguments[0]:Nn();const n=o=>Ot(o);if(n.version="3.0.5",n.removed=[],!a||!a.document||a.document.nodeType!==9)return n.isSupported=!1,n;const c=a.document,s=c.currentScript;let{document:d}=a;const{DocumentFragment:A,HTMLTemplateElement:S,Node:U,Element:w,NodeFilter:r,NamedNodeMap:m=a.NamedNodeMap||a.MozNamedAttrMap,HTMLFormElement:M,DOMParser:ee,trustedTypes:G}=a,le=w.prototype,It=_e(le,"cloneNode"),Ct=_e(le,"nextSibling"),Mt=_e(le,"childNodes"),Se=_e(le,"parentNode");if(typeof S=="function"){const o=d.createElement("template");o.content&&o.content.ownerDocument&&(d=o.content.ownerDocument)}let y,te="";const{implementation:ye,createNodeIterator:xt,createDocumentFragment:kt,getElementsByTagName:Pt}=d,{importNode:Ut}=c;let I={};n.isSupported=typeof vt=="function"&&typeof Se=="function"&&ye&&ye.createHTMLDocument!==void 0;const{MUSTACHE_EXPR:Re,ERB_EXPR:be,TMPLIT_EXPR:we,DATA_ATTR:Ft,ARIA_ATTR:Ht,IS_SCRIPT_OR_DATA:zt,ATTR_WHITESPACE:je}=bt;let{IS_ALLOWED_URI:Xe}=bt,h=null;const qe=l({},[...At,...Be,...We,...Ge,...St]);let T=null;const Ke=l({},[...yt,...$e,...Rt,...Ee]);let p=Object.seal(Object.create(null,{tagNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},attributeNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},allowCustomizedBuiltInElements:{writable:!0,configurable:!1,enumerable:!0,value:!1}})),ne=null,Le=null,Ze=!0,ve=!0,Je=!1,Qe=!0,$=!1,H=!1,Ne=!1,De=!1,Y=!1,se=!1,ce=!1,et=!0,tt=!1;const Bt="user-content-";let Oe=!0,ie=!1,V={},j=null;const nt=l({},["annotation-xml","audio","colgroup","desc","foreignobject","head","iframe","math","mi","mn","mo","ms","mtext","noembed","noframes","noscript","plaintext","script","style","svg","template","thead","title","video","xmp"]);let it=null;const at=l({},["audio","video","img","source","image","track"]);let Ie=null;const ot=l({},["alt","class","for","id","label","name","pattern","placeholder","role","summary","title","value","style","xmlns"]),ue="http://www.w3.org/1998/Math/MathML",me="http://www.w3.org/2000/svg",x="http://www.w3.org/1999/xhtml";let X=x,Ce=!1,Me=null;const Wt=l({},[ue,me,x],ze);let z;const Gt=["application/xhtml+xml","text/html"],$t="text/html";let _,q=null;const Yt=d.createElement("form"),rt=function(e){return e instanceof RegExp||e instanceof Function},xe=function(e){if(!(q&&q===e)){if((!e||typeof e!="object")&&(e={}),e=Q(e),z=Gt.indexOf(e.PARSER_MEDIA_TYPE)===-1?z=$t:z=e.PARSER_MEDIA_TYPE,_=z==="application/xhtml+xml"?ze:Ae,h="ALLOWED_TAGS"in e?l({},e.ALLOWED_TAGS,_):qe,T="ALLOWED_ATTR"in e?l({},e.ALLOWED_ATTR,_):Ke,Me="ALLOWED_NAMESPACES"in e?l({},e.ALLOWED_NAMESPACES,ze):Wt,Ie="ADD_URI_SAFE_ATTR"in e?l(Q(ot),e.ADD_URI_SAFE_ATTR,_):ot,it="ADD_DATA_URI_TAGS"in e?l(Q(at),e.ADD_DATA_URI_TAGS,_):at,j="FORBID_CONTENTS"in e?l({},e.FORBID_CONTENTS,_):nt,ne="FORBID_TAGS"in e?l({},e.FORBID_TAGS,_):{},Le="FORBID_ATTR"in e?l({},e.FORBID_ATTR,_):{},V="USE_PROFILES"in e?e.USE_PROFILES:!1,Ze=e.ALLOW_ARIA_ATTR!==!1,ve=e.ALLOW_DATA_ATTR!==!1,Je=e.ALLOW_UNKNOWN_PROTOCOLS||!1,Qe=e.ALLOW_SELF_CLOSE_IN_ATTR!==!1,$=e.SAFE_FOR_TEMPLATES||!1,H=e.WHOLE_DOCUMENT||!1,Y=e.RETURN_DOM||!1,se=e.RETURN_DOM_FRAGMENT||!1,ce=e.RETURN_TRUSTED_TYPE||!1,De=e.FORCE_BODY||!1,et=e.SANITIZE_DOM!==!1,tt=e.SANITIZE_NAMED_PROPS||!1,Oe=e.KEEP_CONTENT!==!1,ie=e.IN_PLACE||!1,Xe=e.ALLOWED_URI_REGEXP||Nt,X=e.NAMESPACE||x,p=e.CUSTOM_ELEMENT_HANDLING||{},e.CUSTOM_ELEMENT_HANDLING&&rt(e.CUSTOM_ELEMENT_HANDLING.tagNameCheck)&&(p.tagNameCheck=e.CUSTOM_ELEMENT_HANDLING.tagNameCheck),e.CUSTOM_ELEMENT_HANDLING&&rt(e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck)&&(p.attributeNameCheck=e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck),e.CUSTOM_ELEMENT_HANDLING&&typeof e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements=="boolean"&&(p.allowCustomizedBuiltInElements=e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements),$&&(ve=!1),se&&(Y=!0),V&&(h=l({},[...St]),T=[],V.html===!0&&(l(h,At),l(T,yt)),V.svg===!0&&(l(h,Be),l(T,$e),l(T,Ee)),V.svgFilters===!0&&(l(h,We),l(T,$e),l(T,Ee)),V.mathMl===!0&&(l(h,Ge),l(T,Rt),l(T,Ee))),e.ADD_TAGS&&(h===qe&&(h=Q(h)),l(h,e.ADD_TAGS,_)),e.ADD_ATTR&&(T===Ke&&(T=Q(T)),l(T,e.ADD_ATTR,_)),e.ADD_URI_SAFE_ATTR&&l(Ie,e.ADD_URI_SAFE_ATTR,_),e.FORBID_CONTENTS&&(j===nt&&(j=Q(j)),l(j,e.FORBID_CONTENTS,_)),Oe&&(h["#text"]=!0),H&&l(h,["html","head","body"]),h.table&&(l(h,["tbody"]),delete ne.tbody),e.TRUSTED_TYPES_POLICY){if(typeof e.TRUSTED_TYPES_POLICY.createHTML!="function")throw re('TRUSTED_TYPES_POLICY configuration option must provide a "createHTML" hook.');if(typeof e.TRUSTED_TYPES_POLICY.createScriptURL!="function")throw re('TRUSTED_TYPES_POLICY configuration option must provide a "createScriptURL" hook.');y=e.TRUSTED_TYPES_POLICY,te=y.createHTML("")}else y===void 0&&(y=Dn(G,s)),y!==null&&typeof te=="string"&&(te=y.createHTML(""));R&&R(e),q=e}},lt=l({},["mi","mo","mn","ms","mtext"]),st=l({},["foreignobject","desc","title","annotation-xml"]),Vt=l({},["title","style","font","a","script"]),fe=l({},Be);l(fe,We),l(fe,gn);const ke=l({},Ge);l(ke,An);const jt=function(e){let t=Se(e);(!t||!t.tagName)&&(t={namespaceURI:X,tagName:"template"});const i=Ae(e.tagName),u=Ae(t.tagName);return Me[e.namespaceURI]?e.namespaceURI===me?t.namespaceURI===x?i==="svg":t.namespaceURI===ue?i==="svg"&&(u==="annotation-xml"||lt[u]):!!fe[i]:e.namespaceURI===ue?t.namespaceURI===x?i==="math":t.namespaceURI===me?i==="math"&&st[u]:!!ke[i]:e.namespaceURI===x?t.namespaceURI===me&&!st[u]||t.namespaceURI===ue&&!lt[u]?!1:!ke[i]&&(Vt[i]||!fe[i]):!!(z==="application/xhtml+xml"&&Me[e.namespaceURI]):!1},B=function(e){oe(n.removed,{element:e});try{e.parentNode.removeChild(e)}catch{e.remove()}},Pe=function(e,t){try{oe(n.removed,{attribute:t.getAttributeNode(e),from:t})}catch{oe(n.removed,{attribute:null,from:t})}if(t.removeAttribute(e),e==="is"&&!T[e])if(Y||se)try{B(t)}catch{}else try{t.setAttribute(e,"")}catch{}},ct=function(e){let t,i;if(De)e="<remove></remove>"+e;else{const v=hn(e,/^[\r\n\t ]+/);i=v&&v[0]}z==="application/xhtml+xml"&&X===x&&(e='<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body>'+e+"</body></html>");const u=y?y.createHTML(e):e;if(X===x)try{t=new ee().parseFromString(u,z)}catch{}if(!t||!t.documentElement){t=ye.createDocument(X,"template",null);try{t.documentElement.innerHTML=Ce?te:u}catch{}}const E=t.body||t.documentElement;return e&&i&&E.insertBefore(d.createTextNode(i),E.childNodes[0]||null),X===x?Pt.call(t,H?"html":"body")[0]:H?t.documentElement:E},ut=function(e){return xt.call(e.ownerDocument||e,e,r.SHOW_ELEMENT|r.SHOW_COMMENT|r.SHOW_TEXT,null,!1)},Xt=function(e){return e instanceof M&&(typeof e.nodeName!="string"||typeof e.textContent!="string"||typeof e.removeChild!="function"||!(e.attributes instanceof m)||typeof e.removeAttribute!="function"||typeof e.setAttribute!="function"||typeof e.namespaceURI!="string"||typeof e.insertBefore!="function"||typeof e.hasChildNodes!="function")},de=function(e){return typeof U=="object"?e instanceof U:e&&typeof e=="object"&&typeof e.nodeType=="number"&&typeof e.nodeName=="string"},k=function(e,t,i){I[e]&&pn(I[e],u=>{u.call(n,t,i,q)})},mt=function(e){let t;if(k("beforeSanitizeElements",e,null),Xt(e))return B(e),!0;const i=_(e.nodeName);if(k("uponSanitizeElement",e,{tagName:i,allowedTags:h}),e.hasChildNodes()&&!de(e.firstElementChild)&&(!de(e.content)||!de(e.content.firstElementChild))&&L(/<[/\w]/g,e.innerHTML)&&L(/<[/\w]/g,e.textContent))return B(e),!0;if(!h[i]||ne[i]){if(!ne[i]&&dt(i)&&(p.tagNameCheck instanceof RegExp&&L(p.tagNameCheck,i)||p.tagNameCheck instanceof Function&&p.tagNameCheck(i)))return!1;if(Oe&&!j[i]){const u=Se(e)||e.parentNode,E=Mt(e)||e.childNodes;if(E&&u){const v=E.length;for(let f=v-1;f>=0;--f)u.insertBefore(It(E[f],!0),Ct(e))}}return B(e),!0}return e instanceof w&&!jt(e)||(i==="noscript"||i==="noembed"||i==="noframes")&&L(/<\/no(script|embed|frames)/i,e.innerHTML)?(B(e),!0):($&&e.nodeType===3&&(t=e.textContent,t=D(t,Re," "),t=D(t,be," "),t=D(t,we," "),e.textContent!==t&&(oe(n.removed,{element:e.cloneNode()}),e.textContent=t)),k("afterSanitizeElements",e,null),!1)},ft=function(e,t,i){if(et&&(t==="id"||t==="name")&&(i in d||i in Yt))return!1;if(!(ve&&!Le[t]&&L(Ft,t))){if(!(Ze&&L(Ht,t))){if(!T[t]||Le[t]){if(!(dt(e)&&(p.tagNameCheck instanceof RegExp&&L(p.tagNameCheck,e)||p.tagNameCheck instanceof Function&&p.tagNameCheck(e))&&(p.attributeNameCheck instanceof RegExp&&L(p.attributeNameCheck,t)||p.attributeNameCheck instanceof Function&&p.attributeNameCheck(t))||t==="is"&&p.allowCustomizedBuiltInElements&&(p.tagNameCheck instanceof RegExp&&L(p.tagNameCheck,i)||p.tagNameCheck instanceof Function&&p.tagNameCheck(i))))return!1}else if(!Ie[t]){if(!L(Xe,D(i,je,""))){if(!((t==="src"||t==="xlink:href"||t==="href")&&e!=="script"&&Tn(i,"data:")===0&&it[e])){if(!(Je&&!L(zt,D(i,je,"")))){if(i)return!1}}}}}}return!0},dt=function(e){return e.indexOf("-")>0},pt=function(e){let t,i,u,E;k("beforeSanitizeAttributes",e,null);const{attributes:v}=e;if(!v)return;const f={attrName:"",attrValue:"",keepAttr:!0,allowedAttributes:T};for(E=v.length;E--;){t=v[E];const{name:C,namespaceURI:Ue}=t;if(i=C==="value"?t.value:_n(t.value),u=_(C),f.attrName=u,f.attrValue=i,f.keepAttr=!0,f.forceKeepAttr=void 0,k("uponSanitizeAttribute",e,f),i=f.attrValue,f.forceKeepAttr||(Pe(C,e),!f.keepAttr))continue;if(!Qe&&L(/\/>/i,i)){Pe(C,e);continue}$&&(i=D(i,Re," "),i=D(i,be," "),i=D(i,we," "));const ht=_(e.nodeName);if(ft(ht,u,i)){if(tt&&(u==="id"||u==="name")&&(Pe(C,e),i=Bt+i),y&&typeof G=="object"&&typeof G.getAttributeType=="function"&&!Ue)switch(G.getAttributeType(ht,u)){case"TrustedHTML":{i=y.createHTML(i);break}case"TrustedScriptURL":{i=y.createScriptURL(i);break}}try{Ue?e.setAttributeNS(Ue,C,i):e.setAttribute(C,i),gt(n.removed)}catch{}}}k("afterSanitizeAttributes",e,null)},qt=function o(e){let t;const i=ut(e);for(k("beforeSanitizeShadowDOM",e,null);t=i.nextNode();)k("uponSanitizeShadowNode",t,null),!mt(t)&&(t.content instanceof A&&o(t.content),pt(t));k("afterSanitizeShadowDOM",e,null)};return n.sanitize=function(o){let e=arguments.length>1&&arguments[1]!==void 0?arguments[1]:{},t,i,u,E;if(Ce=!o,Ce&&(o="<!-->"),typeof o!="string"&&!de(o))if(typeof o.toString=="function"){if(o=o.toString(),typeof o!="string")throw re("dirty is not a string, aborting")}else throw re("toString is not a function");if(!n.isSupported)return o;if(Ne||xe(e),n.removed=[],typeof o=="string"&&(ie=!1),ie){if(o.nodeName){const C=_(o.nodeName);if(!h[C]||ne[C])throw re("root node is forbidden and cannot be sanitized in-place")}}else if(o instanceof U)t=ct("<!---->"),i=t.ownerDocument.importNode(o,!0),i.nodeType===1&&i.nodeName==="BODY"||i.nodeName==="HTML"?t=i:t.appendChild(i);else{if(!Y&&!$&&!H&&o.indexOf("<")===-1)return y&&ce?y.createHTML(o):o;if(t=ct(o),!t)return Y?null:ce?te:""}t&&De&&B(t.firstChild);const v=ut(ie?o:t);for(;u=v.nextNode();)mt(u)||(u.content instanceof A&&qt(u.content),pt(u));if(ie)return o;if(Y){if(se)for(E=kt.call(t.ownerDocument);t.firstChild;)E.appendChild(t.firstChild);else E=t;return(T.shadowroot||T.shadowrootmode)&&(E=Ut.call(c,E,!0)),E}let f=H?t.outerHTML:t.innerHTML;return H&&h["!doctype"]&&t.ownerDocument&&t.ownerDocument.doctype&&t.ownerDocument.doctype.name&&L(Dt,t.ownerDocument.doctype.name)&&(f="<!DOCTYPE "+t.ownerDocument.doctype.name+`>
`+f),$&&(f=D(f,Re," "),f=D(f,be," "),f=D(f,we," ")),y&&ce?y.createHTML(f):f},n.setConfig=function(o){xe(o),Ne=!0},n.clearConfig=function(){q=null,Ne=!1},n.isValidAttribute=function(o,e,t){q||xe({});const i=_(o),u=_(e);return ft(i,u,t)},n.addHook=function(o,e){typeof e=="function"&&(I[o]=I[o]||[],oe(I[o],e))},n.removeHook=function(o){if(I[o])return gt(I[o])},n.removeHooks=function(o){I[o]&&(I[o]=[])},n.removeAllHooks=function(){I={}},n}var On=Ot();const In={key:0,class:"image-wrapper"},Cn=["innerHTML"],Mn=["innerHTML"],xn={key:1,class:"sub-menu fa-solid fa-angle-right"},Hn=wt({__name:"ContextElement",props:{index:{},row:{}},emits:["update","action"],setup(a,{emit:n}){const c=he(()=>Te(()=>import("./ProgressBar-8ebe05fd.js"),["./ProgressBar-8ebe05fd.js","./index-1c6b3dd3.js","./index-574e89d3.css","./ProgressBar-90e86b8a.css"],import.meta.url)),s=he(()=>Te(()=>import("./Slider-0a601654.js"),["./Slider-0a601654.js","./index-1c6b3dd3.js","./index-574e89d3.css","./Slider-42af48cc.js","./Slider-ca489348.css"],import.meta.url)),d=he(()=>Te(()=>import("./ButtonActionBar-7c63f052.js"),["./ButtonActionBar-7c63f052.js","./index-1c6b3dd3.js","./index-574e89d3.css","./ButtonActionBar-0b419f6d.css"],import.meta.url)),A=he(()=>Te(()=>import("./Icon-8ed8361e.js"),["./Icon-8ed8361e.js","./index-1c6b3dd3.js","./index-574e89d3.css","./Icon-20171aa1.js"],import.meta.url)),S=r=>`button ${r.disabled?"disabled":""} ${r.action?"hover-effect":""}`,U=async r=>{n("update",r)},w=r=>r===void 0?"":On.sanitize(r);return(r,m)=>(b(),F("div",{class:on(S(r.row)),onClick:m[0]||(m[0]=M=>n("action",r.index,r.row,M))},[r.row.icon?(b(),Z(P(A),{key:0,icon:r.row.icon},null,8,["icon"])):W("",!0),Fe(P(cn),{title:r.row.title,class:"full-width"},tn({description:J(()=>[r.row.image?(b(),F("div",In,[typeof r.row.image=="string"?(b(),Z(P(_t),{key:0,src:r.row.image,class:"image-border","preview-disabled":r.row.imagePreview===void 0},null,8,["src","preview-disabled"])):W("",!0),typeof r.row.image=="object"?(b(),Z(P(rn),{key:1},{default:J(()=>[Fe(P(nn),{class:"gallery-grid",justify:"center"},{default:J(()=>[(b(!0),F(ge,null,an(r.row.image,(M,ee)=>(b(),Z(P(_t),{key:ee,src:M,class:"image-border","preview-disabled":r.row.imagePreview===void 0},{placeholder:J(()=>[He(" Loading ")]),_:2},1032,["src","preview-disabled"]))),128))]),_:1})]),_:1})):W("",!0)])):W("",!0),r.row.html?(b(),F("div",{key:1,innerHTML:w(r.row.description)},null,8,Cn)):(b(),F(ge,{key:2},[He(Tt(r.row.description),1)],64)),r.row.progress?(b(),Z(P(c),{key:3,progress:r.row},null,8,["progress"])):W("",!0),r.row.slider?(b(),Z(P(s),{key:4,row:r.row},null,8,["row"])):W("",!0)]),_:2},[r.row.update||r.row.copy?{name:"header-extra",fn:J(()=>[Fe(P(d),{row:r.row,onUpdate:U},null,8,["row"])]),key:"0"}:void 0,r.row.footer?{name:"footer",fn:J(()=>[r.row.html?(b(),F("div",{key:0,innerHTML:w(r.row.footer)},null,8,Mn)):(b(),F(ge,{key:1},[He(Tt(r.row.footer),1)],64))]),key:"1"}:void 0]),1032,["title"]),r.row.submenu?(b(),F("li",xn)):W("",!0)],2))}});export{Hn as default};
