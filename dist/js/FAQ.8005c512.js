(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["FAQ"],{"0b2e":function(e,n,t){"use strict";t.r(n);var a=function(){var e=this,n=e.$createElement,t=e._self._c||n;return t("v-main",[t("v-container",{attrs:{fluid:""}},[t("v-row",{attrs:{justify:"center",align:"center"}},[t("v-col",{staticClass:"google-font",attrs:{md:"12",sm:"12",cols:"12",lg:"10"}},[t("v-container",{attrs:{fluid:""}},[t("v-row",{attrs:{align:"start",justify:"start"}},[t("v-col",{staticClass:"my-10",attrs:{md:"11",lg:"9"}},[t("p",{staticClass:"google-font gdg-heading mb-0  grey--text text--darken-2"},[e._v("Frequently asked questions")]),t("p",{staticClass:"my-0 mb-8 h1-subheading"},[e._v("\n                Need Answers? Everything you need to know\n              ")]),t("v-expansion-panels",{attrs:{flat:"",accordion:""}},e._l(e.faqsData,(function(n,a){return t("v-expansion-panel",{key:a,staticClass:"px-0 mx-0",staticStyle:{"border-bottom":"1px solid #e0e0e0"}},[t("v-expansion-panel-header",{staticClass:"px-0"},[t("p",{staticClass:"google-font",staticStyle:{"font-size":"120%",margin:"auto"}},[e._v("\n                      "+e._s(n.question)+"\n                    ")])]),t("v-expansion-panel-content",{staticClass:"grey lighten-4"},[t("p",{staticClass:"google-font text-left my-0 mt-5",staticStyle:{"font-size":"110%"},domProps:{innerHTML:e._s(n.answer)}})])],1)})),1)],1)],1)],1)],1)],1)],1)],1)},o=[],s=t("5c7f"),i={name:"FAQComponent",data:function(){return{faqsData:s}},created:function(){document.title="FAQ | DevFest Jammu 2022"}},r=i,l=t("0c7c"),c=t("6544"),p=t.n(c),d=t("62ad"),u=t("a523"),h=t("5530"),v=t("4e82"),g=t("3206"),f=t("80d2"),m=t("58df"),b=Object(m["a"])(Object(v["a"])("expansionPanels","v-expansion-panel","v-expansion-panels"),Object(g["b"])("expansionPanel",!0)).extend({name:"v-expansion-panel",props:{disabled:Boolean,readonly:Boolean},data:function(){return{content:null,header:null,nextIsActive:!1}},computed:{classes:function(){return Object(h["a"])({"v-expansion-panel--active":this.isActive,"v-expansion-panel--next-active":this.nextIsActive,"v-expansion-panel--disabled":this.isDisabled},this.groupClasses)},isDisabled:function(){return this.expansionPanels.disabled||this.disabled},isReadonly:function(){return this.expansionPanels.readonly||this.readonly}},methods:{registerContent:function(e){this.content=e},unregisterContent:function(){this.content=null},registerHeader:function(e){this.header=e,e.$on("click",this.onClick)},unregisterHeader:function(){this.header=null},onClick:function(e){e.detail&&this.header.$el.blur(),this.$emit("click",e),this.isReadonly||this.isDisabled||this.toggle()},toggle:function(){var e=this;this.$nextTick((function(){return e.$emit("change")}))}},render:function(e){return e("div",{staticClass:"v-expansion-panel",class:this.classes,attrs:{"aria-expanded":String(this.isActive)}},Object(f["k"])(this))}}),x=t("0789"),y=t("9d65"),w=t("a9ad"),G=Object(m["a"])(y["a"],w["a"],Object(g["a"])("expansionPanel","v-expansion-panel-content","v-expansion-panel")),D=G.extend().extend({name:"v-expansion-panel-content",data:function(){return{isActive:!1}},computed:{parentIsActive:function(){return this.expansionPanel.isActive}},watch:{parentIsActive:{immediate:!0,handler:function(e,n){var t=this;e&&(this.isBooted=!0),null==n?this.isActive=e:this.$nextTick((function(){return t.isActive=e}))}}},created:function(){this.expansionPanel.registerContent(this)},beforeDestroy:function(){this.expansionPanel.unregisterContent()},render:function(e){var n=this;return e(x["a"],this.showLazyContent((function(){return[e("div",n.setBackgroundColor(n.color,{staticClass:"v-expansion-panel-content",directives:[{name:"show",value:n.isActive}]}),[e("div",{class:"v-expansion-panel-content__wrap"},Object(f["k"])(n))])]})))}}),k=t("9d26"),A=t("5607"),C=Object(m["a"])(w["a"],Object(g["a"])("expansionPanel","v-expansion-panel-header","v-expansion-panel")),j=C.extend().extend({name:"v-expansion-panel-header",directives:{ripple:A["a"]},props:{disableIconRotate:Boolean,expandIcon:{type:String,default:"$expand"},hideActions:Boolean,ripple:{type:[Boolean,Object],default:!1}},data:function(){return{hasMousedown:!1}},computed:{classes:function(){return{"v-expansion-panel-header--active":this.isActive,"v-expansion-panel-header--mousedown":this.hasMousedown}},isActive:function(){return this.expansionPanel.isActive},isDisabled:function(){return this.expansionPanel.isDisabled},isReadonly:function(){return this.expansionPanel.isReadonly}},created:function(){this.expansionPanel.registerHeader(this)},beforeDestroy:function(){this.expansionPanel.unregisterHeader()},methods:{onClick:function(e){this.$emit("click",e)},genIcon:function(){var e=Object(f["k"])(this,"actions")||[this.$createElement(k["a"],this.expandIcon)];return this.$createElement(x["d"],[this.$createElement("div",{staticClass:"v-expansion-panel-header__icon",class:{"v-expansion-panel-header__icon--disable-rotate":this.disableIconRotate},directives:[{name:"show",value:!this.isDisabled}]},e)])}},render:function(e){var n=this;return e("button",this.setBackgroundColor(this.color,{staticClass:"v-expansion-panel-header",class:this.classes,attrs:{tabindex:this.isDisabled?-1:null,type:"button","aria-expanded":this.isActive},directives:[{name:"ripple",value:this.ripple}],on:Object(h["a"])(Object(h["a"])({},this.$listeners),{},{click:this.onClick,mousedown:function(){return n.hasMousedown=!0},mouseup:function(){return n.hasMousedown=!1}})}),[Object(f["k"])(this,"default",{open:this.isActive},!0),this.hideActions||this.genIcon()])}}),O=(t("0481"),t("210b"),t("604c")),P=t("d9bd"),B=O["a"].extend({name:"v-expansion-panels",provide:function(){return{expansionPanels:this}},props:{accordion:Boolean,disabled:Boolean,flat:Boolean,hover:Boolean,focusable:Boolean,inset:Boolean,popout:Boolean,readonly:Boolean,tile:Boolean},computed:{classes:function(){return Object(h["a"])(Object(h["a"])({},O["a"].options.computed.classes.call(this)),{},{"v-expansion-panels":!0,"v-expansion-panels--accordion":this.accordion,"v-expansion-panels--flat":this.flat,"v-expansion-panels--hover":this.hover,"v-expansion-panels--focusable":this.focusable,"v-expansion-panels--inset":this.inset,"v-expansion-panels--popout":this.popout,"v-expansion-panels--tile":this.tile})}},created:function(){this.$attrs.hasOwnProperty("expand")&&Object(P["a"])("expand","multiple",this),Array.isArray(this.value)&&this.value.length>0&&"boolean"===typeof this.value[0]&&Object(P["a"])(':value="[true, false, true]"',':value="[0, 2]"',this)},methods:{updateItem:function(e,n){var t=this.getValue(e,n),a=this.getValue(e,n+1);e.isActive=this.toggleMethod(t),e.nextIsActive=this.toggleMethod(a)}}}),I=t("f6c4"),_=t("0fd9"),q=Object(l["a"])(r,a,o,!1,null,"5b57c0fd",null);n["default"]=q.exports;p()(q,{VCol:d["a"],VContainer:u["a"],VExpansionPanel:b,VExpansionPanelContent:D,VExpansionPanelHeader:j,VExpansionPanels:B,VMain:I["a"],VRow:_["a"]})},"210b":function(e,n,t){},"5c7f":function(e){e.exports=JSON.parse('[{"question":"What is DevFest?","answer":"DevFest is an annual decentralized tech conference hosted by the Google Developer Groups (GDG) community. GDGs host these events around the globe.<br><br>DevFest 2022 marks the 11th year of DevFest and represents the beginning of the second decade of the GDG community. Through DevFest, you can continue to explore how Google\'s suite of developer tools can expand the impact of local tech professionals and developers like you around the world.<br><br>Whether you\'re passionate about finding new opportunities, elevating your knowledge on the latest Google developer tools, or exploring how to use Google technologies to generate social and economic impact, DevFest offers an amazing platform for developers to connect locally, learn, and build on Google\'s tools."},{"question":"What are Google Developer Groups (GDGs)?","answer":"Google Developer Groups (GDG) is the largest developer community in the world. Over 1000+ GDGs exist in 140+ countries around the globe. The program helps developers connect with one another and learn about building products on all Google platforms.<br><br>Each GDG is a local community hub of professional developers who share expertise and passion for Google\'s developer technology.<br><br>GDG communities coordinate community activities centered around helping developers learn, connect, and grow while building a strong sense of belonging to the local and global Google Developer Groups community."},{"question":"Who can register for DevFest?","answer":"Beginners, experts, literally everyone. Anyone with the passion of learning, who’s fond of technology, passionate programmers , everybody can register and attend."},{"question":"Is it mandatory to register to participate in the event?","answer":"Yes. Each individual may register for only one ticket. You may not register on behalf of anyone else."},{"question":"I’m a beginner in programming. Can I still register?","answer":"Yes. Anybody with the zeal in technology can register. We have special tracks especially for beginners."},{"question":"What will attendees get by participating in the event?","answer":"We have a plethora of AMAZING perks awaiting for you!"},{"question":"How can I become a member of GDG?","answer":"Head to Google developers group website (<a target=\'_blank\' href=\'https://gdg.community.dev/gdg-jammu\'>https://gdg.community.dev/gdg-jammu</a>)"},{"question":"How can I communicate my queries?","answer":"Reach out to us at: [gdgjammu@gmail.com or codertrilokia@gmail.com]"}]')}}]);