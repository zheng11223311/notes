(function(e){function t(t){for(var n,i,s=t[0],r=t[1],l=t[2],u=0,d=[];u<s.length;u++)i=s[u],Object.prototype.hasOwnProperty.call(c,i)&&c[i]&&d.push(c[i][0]),c[i]=0;for(n in r)Object.prototype.hasOwnProperty.call(r,n)&&(e[n]=r[n]);b&&b(t);while(d.length)d.shift()();return a.push.apply(a,l||[]),o()}function o(){for(var e,t=0;t<a.length;t++){for(var o=a[t],n=!0,s=1;s<o.length;s++){var r=o[s];0!==c[r]&&(n=!1)}n&&(a.splice(t--,1),e=i(i.s=o[0]))}return e}var n={},c={app:0},a=[];function i(t){if(n[t])return n[t].exports;var o=n[t]={i:t,l:!1,exports:{}};return e[t].call(o.exports,o,o.exports,i),o.l=!0,o.exports}i.m=e,i.c=n,i.d=function(e,t,o){i.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:o})},i.r=function(e){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},i.t=function(e,t){if(1&t&&(e=i(e)),8&t)return e;if(4&t&&"object"===typeof e&&e&&e.__esModule)return e;var o=Object.create(null);if(i.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var n in e)i.d(o,n,function(t){return e[t]}.bind(null,n));return o},i.n=function(e){var t=e&&e.__esModule?function(){return e["default"]}:function(){return e};return i.d(t,"a",t),t},i.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},i.p="app://./";var s=window["webpackJsonp"]=window["webpackJsonp"]||[],r=s.push.bind(s);s.push=t,s=s.slice();for(var l=0;l<s.length;l++)t(s[l]);var b=r;a.push([0,"chunk-vendors"]),o()})({0:function(e,t,o){e.exports=o("56d7")},1278:function(e,t,o){"use strict";o("766b")},"276c":function(e,t,o){},"42d9":function(e,t,o){},"56d7":function(e,t,o){"use strict";o.r(t);var n=o("7a23");const c=Object(n["o"])("div",{id:"nav"},null,-1),a=Object(n["o"])("p",null,"缓存页面",-1),i=Object(n["o"])("p",null,"没有缓存的页面",-1);function s(e,t,o,s,r,l){const b=Object(n["P"])("router-view");return Object(n["G"])(),Object(n["n"])(n["b"],null,[c,Object(n["q"])(b,null,{default:Object(n["bb"])(({Component:t})=>[e.$route.meta.keepAlive?(Object(n["G"])(),Object(n["l"])(n["c"],{key:0},[(Object(n["G"])(),Object(n["l"])(Object(n["R"])(t),null,{default:Object(n["bb"])(()=>[a]),_:2},1024))],1024)):Object(n["m"])("",!0),e.$route.meta.keepAlive?Object(n["m"])("",!0):(Object(n["G"])(),Object(n["l"])(Object(n["R"])(t),{key:1},{default:Object(n["bb"])(()=>[i]),_:2},1024))]),_:1})],64)}var r={components:{}},l=o("6b0d"),b=o.n(l);const u=b()(r,[["render",s]]);var d=u,p=o("6c02");const O={id:"wrapper"},j={class:"top"},h={class:"search"},k={class:"btn"},m=Object(n["p"])(" 查看所有书籍 "),v=["title"],f=["src"],y={key:2};function g(e,t,o,c,a,i){const s=Object(n["P"])("a-input-search"),r=Object(n["P"])("appstore-outlined"),l=Object(n["P"])("a-button"),b=Object(n["P"])("a-table");return Object(n["G"])(),Object(n["n"])("div",O,[Object(n["o"])("div",j,[Object(n["o"])("div",h,[Object(n["q"])(s,{placeholder:"请输入书名","enter-button":"",size:"large",value:a.value,"onUpdate:value":t[0]||(t[0]=e=>a.value=e),onSearch:i.onSearch},null,8,["value","onSearch"])]),Object(n["o"])("div",k,[Object(n["q"])(l,{type:"primary",size:"large",onClick:t[1]||(t[1]=e=>i.LookAllBooks())},{icon:Object(n["bb"])(()=>[Object(n["q"])(r)]),default:Object(n["bb"])(()=>[m]),_:1})])]),Object(n["q"])(b,{columns:a.columns,"data-source":a.list,bordered:""},{bodyCell:Object(n["bb"])(({column:e,text:t})=>["name"===e.dataIndex?(Object(n["G"])(),Object(n["n"])("a",{key:0,title:t},Object(n["T"])(t),9,v)):Object(n["m"])("",!0),"imgUrl"===e.dataIndex?(Object(n["G"])(),Object(n["n"])("img",{key:1,style:{width:"100%"},src:t},null,8,f)):Object(n["m"])("",!0),"intro"===e.dataIndex?(Object(n["G"])(),Object(n["n"])("a",y,Object(n["T"])(t),1)):Object(n["m"])("",!0)]),_:1},8,["columns","data-source"])])}var C=o("bc3a"),q=o.n(C);let{get:$,post:w}=q.a;const _=(e,t=1,o=20)=>$(`http://api.easou.com/api/bookapp/searchdzh.m?word=${e}&page_id=${t}&count=${o}&cid=eef_&os=ios&appverion=1049`),P=(e,t=1,o=100,n)=>$(`https://book.easou.com/ta/listAjax.m?esid=3139HXIBSUm&gid=${e}&nid=${n}&order=0&page=${t}&size=${o}`),x=(e,t=1)=>$(`https://book.easou.com/ta/showAjax.m?gid=${e}&st=${t}&autoPay=1`);var G=o("56cd"),B=o("42a3"),I={name:"LandingPage",data(){return{list:[],columns:[{title:"ID",dataIndex:"gid",key:"ID",width:"5%"},{title:"书名",dataIndex:"name",key:"bookname",width:"10%"},{title:"封面",dataIndex:"imgUrl",key:"address",width:"10%"},{title:"描述",key:"tags",dataIndex:"desc",width:"55%"},{title:"下载",key:"action",width:"20%"}],bookids:[],value:""}},components:{AppstoreOutlined:B["a"]},methods:{onSearch(e,t){_(e).then(t=>{this.list=t.data.all_book_items,this.openNotification(e);for(const e of this.list)this.bookids.push(e.gid);this.$forceUpdate()}).catch(e=>{console.log(e),G["a"].open({message:"请求数据失败!",description:"网络错误,请检查网络是否连通",onClick:()=>{}})})},openNotification(e){G["a"].open({message:"请求数据成功!",description:e+" - 相关数据返回成功!!",onClick:()=>{}})},LookAllBooks(){""!=this.value?this.$router.push("/books?value="+this.value):G["a"].open({message:"输入为空!",description:" 请输入书名",onClick:()=>{console.log("提示内容被点击111")}})}}};o("9090");const A=b()(I,[["render",g],["__scopeId","data-v-ce32c19c"]]);var K=A;const S=Object(n["p"])(" 返回 "),L={id:"books"},M=["alt","src"];function T(e,t,o,c,a,i){const s=Object(n["P"])("arrow-left-outlined"),r=Object(n["P"])("a-button"),l=Object(n["P"])("a-card-meta"),b=Object(n["P"])("a-card");return Object(n["G"])(),Object(n["n"])(n["b"],null,[Object(n["q"])(r,{type:"primary",size:"large",onClick:t[0]||(t[0]=t=>e.$router.push("/"))},{icon:Object(n["bb"])(()=>[Object(n["q"])(s)]),default:Object(n["bb"])(()=>[S]),_:1}),Object(n["o"])("div",L,[(Object(n["G"])(!0),Object(n["n"])(n["b"],null,Object(n["N"])(a.list,e=>(Object(n["G"])(),Object(n["l"])(b,{hoverable:"",style:{width:"18%",margin:"20px 30px",height:"55vh"},key:e.gid,onClick:t=>i.goToBookContent(e.gid,e.nid)},{cover:Object(n["bb"])(()=>[Object(n["o"])("img",{alt:e.name,src:e.imgUrl,style:{height:"40vh"}},null,8,M)]),default:Object(n["bb"])(()=>[Object(n["q"])(l,{title:e.name},{description:Object(n["bb"])(()=>[Object(n["p"])(Object(n["T"])(e.desc),1)]),_:2},1032,["title"])]),_:2},1032,["onClick"]))),128))])],64)}var U=o("1cd4"),N={name:"Books",data(){return{list:[{imgUrl:"",name:"",gid:"",desc:"",nid:""}]}},components:{ArrowLeftOutlined:U["a"]},methods:{getBookId(){""!=this.$route.query.value?_(this.$route.query.value).then(e=>{this.list=e.data.all_book_items,G["a"].open({message:"请求数据成功!",description:this.$route.query.value+" - 相关书籍返回成功!!",onClick:()=>{console.log("提示内容被点击")}})}):G["a"].open({message:"不存在书籍!",description:" 请输入书名,点击此处返回",onClick:()=>{this.$router.go(-1)}})},goToBookContent(e,t){void 0!=e&&void 0!=t?this.$router.push("/bookContent?bookid="+e+"&nid="+t+"&value="+this.$route.query.value):G["a"].open({message:"请求失败!",description:" 小说不存在,请重新选择小书!",onClick:()=>{console.log("提示内容被点击111")}})}},activated(){console.log("缓存组件被激活")},created(){this.getBookId()}};o("9e9a");const z=b()(N,[["render",T],["__scopeId","data-v-48b007dc"]]);var D=z;const H=e=>(Object(n["J"])("data-v-f7dc7c48"),e=e(),Object(n["H"])(),e),R={id:"bookcontent"},J={class:"btn"},F=Object(n["p"])(" 查看所有书籍 "),E=Object(n["p"])(" 返回主页 "),V={class:"content"},X={class:"side"},Q=H(()=>Object(n["o"])("span",null,"加载更多",-1)),W={class:"side1"},Y=H(()=>Object(n["o"])("p",null,"缓存页面",-1)),Z=H(()=>Object(n["o"])("p",null,"没有缓存的页面",-1));function ee(e,t,o,c,a,i){const s=Object(n["P"])("arrow-left-outlined"),r=Object(n["P"])("a-button"),l=Object(n["P"])("home-outlined"),b=Object(n["P"])("MenuUnfoldOutlined"),u=Object(n["P"])("MenuFoldOutlined"),d=Object(n["P"])("PieChartOutlined"),p=Object(n["P"])("a-menu-item"),O=Object(n["P"])("a-menu"),j=Object(n["P"])("router-view");return Object(n["G"])(),Object(n["n"])("div",R,[Object(n["o"])("div",J,[Object(n["q"])(r,{type:"primary",size:"large",onClick:t[0]||(t[0]=t=>e.$router.replace("/books?value="+this.$route.query.value))},{icon:Object(n["bb"])(()=>[Object(n["q"])(s)]),default:Object(n["bb"])(()=>[F]),_:1}),Object(n["q"])(r,{type:"primary",size:"large",onClick:t[1]||(t[1]=t=>e.$router.replace("/"))},{icon:Object(n["bb"])(()=>[Object(n["q"])(l)]),default:Object(n["bb"])(()=>[E]),_:1})]),Object(n["o"])("div",V,[Object(n["o"])("div",X,[Object(n["q"])(r,{type:"primary",style:{"margin-bottom":"16px"},onClick:i.toggleCollapsed},{default:Object(n["bb"])(()=>[a.collapsed?(Object(n["G"])(),Object(n["l"])(b,{key:0})):(Object(n["G"])(),Object(n["l"])(u,{key:1}))]),_:1},8,["onClick"]),Object(n["q"])(O,{openKeys:a.openKeys,"onUpdate:openKeys":t[3]||(t[3]=e=>a.openKeys=e),selectedKeys:a.selectedKeys,"onUpdate:selectedKeys":t[4]||(t[4]=e=>a.selectedKeys=e),mode:"inline",theme:"dark","inline-collapsed":a.collapsed},{default:Object(n["bb"])(()=>[(Object(n["G"])(!0),Object(n["n"])(n["b"],null,Object(n["N"])(a.chapterList,e=>(Object(n["G"])(),Object(n["l"])(p,{key:e.sort,title:e.chapterName,onClick:t=>i.showBookContent(a.bookid,e.sort)},{icon:Object(n["bb"])(()=>[Object(n["q"])(d)]),default:Object(n["bb"])(()=>[Object(n["o"])("span",null,Object(n["T"])(e.chapterName),1)]),_:2},1032,["title","onClick"]))),128)),Object(n["q"])(p,{key:"more",onClick:t[2]||(t[2]=e=>i.loadMore())},{icon:Object(n["bb"])(()=>[Object(n["q"])(d)]),default:Object(n["bb"])(()=>[Q]),_:1})]),_:1},8,["openKeys","selectedKeys","inline-collapsed"])]),Object(n["o"])("div",W,[Object(n["q"])(j,null,{default:Object(n["bb"])(({Component:t})=>[e.$route.meta.keepAlive?(Object(n["G"])(),Object(n["l"])(n["c"],{key:0},[(Object(n["G"])(),Object(n["l"])(Object(n["R"])(t),null,{default:Object(n["bb"])(()=>[Y]),_:2},1024))],1024)):Object(n["m"])("",!0),e.$route.meta.keepAlive?Object(n["m"])("",!0):(Object(n["G"])(),Object(n["l"])(Object(n["R"])(t),{key:1},{default:Object(n["bb"])(()=>[Z]),_:2},1024))]),_:1})])])])}var te=o("fdf4"),oe=o("3e17"),ne=o("96b3"),ce=o("0791"),ae=o("f64c"),ie={name:"BookContent",data(){return{collapsed:!1,selectedKeys:["1"],openKeys:["sub1"],preOpenKeys:["sub1"],chapterList:[],currentPage:1,bookid:""}},components:{ArrowLeftOutlined:U["a"],MenuFoldOutlined:te["a"],MenuUnfoldOutlined:oe["a"],PieChartOutlined:ne["a"],AppstoreOutlined:B["a"],HomeOutlined:ce["a"]},methods:{requestBookContent(){this.bookid=this.$route.query.bookid,""!=this.$route.query.bookid&&""!=this.$route.query.nid?P(this.$route.query.bookid,this.currentPage,20,this.$route.query.nid).then(e=>{var t,o;0!=(null===e||void 0===e||null===(t=e.data)||void 0===t||null===(o=t.chapters)||void 0===o?void 0:o.length)&&0!=e?(this.chapterList=e.data.chapters,this.showBookContent(this.$route.query.bookid,1),ae["a"].success("章节请求成功,点击阅读章节!")):console.log("vip 章节或没有内容")}).catch(e=>{console.log(e),G["a"].open({message:"请求数据失败!",description:"网络错误,请检查网络是否连通",onClick:()=>{}})}):G["a"].open({message:"请求错误!",description:" 小说不存在! 点击此处返回",onClick:()=>{this.$router.go(-1),console.log("提示内容被点击111")}})},toggleCollapsed(){this.collapsed=!this.collapsed,this.openKeys=this.collapsed?[]:this.preOpenKeys},loadMore(){P(this.$route.query.bookid,this.currentPage+1,20,this.$route.query.nid).then(e=>{this.currentPage++,this.chapterList=[...this.chapterList,...e.data.chapters],ae["a"].success("更多章节加载成功,点击阅读章节!")}).catch(e=>{console.log(e),G["a"].open({message:"请求数据失败!",description:"网络错误,请检查网络是否连通",onClick:()=>{}})})},showBookContent(e,t){this.$router.push("/bookContent/showbookcontent?bookid="+e+"&nid="+this.$route.query.nid+"&sortid="+t+"&value="+this.$route.query.value)}},created(){console.log("创建激活")},mounted(){console.log("挂载激活"),this.requestBookContent()}};o("7d5a");const se=b()(ie,[["render",ee],["__scopeId","data-v-f7dc7c48"]]);var re=se;const le={id:"showbookcontent",ref:"a"},be=["innerHTML"];function ue(e,t,o,c,a,i){return Object(n["G"])(),Object(n["n"])("div",le,[Object(n["o"])("h1",null,Object(n["T"])(a.bookData.chapterName),1),Object(n["o"])("div",{class:"boxcontent",innerHTML:a.bookData.content},null,8,be)],512)}var de={name:"ShowBookContent",data(){return{bookData:{}}},components:{},methods:{requestShowContent(e){ae["a"].info("章节加载中..."),x(this.$route.query.bookid,e).then(e=>{this.bookData=e.data,ae["a"].success("<<"+e.data.chapterName+">> 章节内容已加载,祝您阅读愉快!")})}},created(){console.log("创建激活1"),this.requestShowContent(1)},updated(){console.log("更新激活1")},watch:{$route:function(e,t){void 0!=e.query.bookid&&e.href!=t.href&&(ae["a"].info("章节加载中..."),x(e.query.bookid,e.query.sortid).then(e=>{this.bookData=e.data,this.$refs.a.parentElement.scrollTop=0,"内容获取失败，请刷新重试。"==e.data.content?ae["a"].warning("VIP 章节无法获取"):ae["a"].success("<<"+e.data.chapterName+">> 章节内容已加载,祝您阅读愉快!")}))}}};o("1278");const pe=b()(de,[["render",ue],["__scopeId","data-v-b7c4be0c"]]);var Oe=pe;const je=[{path:"/",name:"LandingPage",component:K,meta:{keepAlive:!0}},{path:"/books",name:"Books",component:D,meta:{keepAlive:!1}},{path:"/bookContent",name:"BookContent",component:re,meta:{keepAlive:!0},children:[{path:"showbookcontent",name:"ShowBookContent",component:Oe,meta:{keepAlive:!1}}]}],he=Object(p["a"])({history:Object(p["b"])("app://./"),routes:je});var ke=he,me=o("5502"),ve=Object(me["a"])({state:{},mutations:{},actions:{},modules:{}}),fe=o("b558"),ye=o("0020"),ge=o("a79d"),Ce=o("5efb"),qe=o("cdeb"),$e=o("55f1");o("202f");const we=Object(n["k"])(d);we.use(fe["a"]).use(ye["a"]).use(ge["a"]).use(Ce["a"]).use(qe["a"]).use($e["a"]),we.use(ve).use(ke).mount("#app")},"766b":function(e,t,o){},"7d5a":function(e,t,o){"use strict";o("42d9")},9090:function(e,t,o){"use strict";o("276c")},"9e9a":function(e,t,o){"use strict";o("ce16")},ce16:function(e,t,o){}});
//# sourceMappingURL=app.bdbd1c2b.js.map