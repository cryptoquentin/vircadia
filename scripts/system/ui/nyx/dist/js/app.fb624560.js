(function(t){function e(e){for(var n,r,o=e[0],l=e[1],c=e[2],u=0,v=[];u<o.length;u++)r=o[u],Object.prototype.hasOwnProperty.call(s,r)&&s[r]&&v.push(s[r][0]),s[r]=0;for(n in l)Object.prototype.hasOwnProperty.call(l,n)&&(t[n]=l[n]);d&&d(e);while(v.length)v.shift()();return a.push.apply(a,c||[]),i()}function i(){for(var t,e=0;e<a.length;e++){for(var i=a[e],n=!0,o=1;o<i.length;o++){var l=i[o];0!==s[l]&&(n=!1)}n&&(a.splice(e--,1),t=r(r.s=i[0]))}return t}var n={},s={app:0},a=[];function r(e){if(n[e])return n[e].exports;var i=n[e]={i:e,l:!1,exports:{}};return t[e].call(i.exports,i,i.exports,r),i.l=!0,i.exports}r.m=t,r.c=n,r.d=function(t,e,i){r.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:i})},r.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},r.t=function(t,e){if(1&e&&(t=r(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var i=Object.create(null);if(r.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)r.d(i,n,function(e){return t[e]}.bind(null,n));return i},r.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return r.d(e,"a",e),e},r.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},r.p="";var o=window["webpackJsonp"]=window["webpackJsonp"]||[],l=o.push.bind(o);o.push=e,o=o.slice();for(var c=0;c<o.length;c++)e(o[c]);var d=l;a.push([0,"chunk-vendors"]),i()})({0:function(t,e,i){t.exports=i("56d7")},"56d7":function(t,e,i){"use strict";i.r(e);i("e260"),i("e6cf"),i("cca6"),i("a79d");var n,s=i("2b0e"),a=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("v-app",[i("v-app-bar",{attrs:{app:""},scopedSlots:t._u([{key:"extension",fn:function(){return[i("v-spacer"),i("v-tooltip",{attrs:{bottom:""},scopedSlots:t._u([{key:"activator",fn:function(e){var n=e.on;return[i("v-btn",t._g({staticClass:"mr-3",attrs:{small:"",fab:"",color:"primary"},on:{click:function(e){return t.triggerParentToEntity()}}},n),[i("v-icon",[t._v("mdi-account-child")])],1)]}}])},[i("span",[t._v("Parent self to entity")])]),i("v-tooltip",{attrs:{bottom:""},scopedSlots:t._u([{key:"activator",fn:function(e){var n=e.on;return[i("v-btn",t._g({staticClass:"mr-3",attrs:{small:"",fab:"",color:"primary"},on:{click:function(e){return t.triggerSitOnEntity()}}},n),[i("v-icon",[t._v("mdi-sofa-single")])],1)]}}])},[i("span",[t._v("Sit on entity")])]),i("v-tooltip",{attrs:{bottom:""},scopedSlots:t._u([{key:"activator",fn:function(e){var n=e.on;return[i("v-btn",t._g({attrs:{small:"",fab:"",color:"green"},on:{click:function(e){t.tabs=2}}},n),[i("v-icon",[t._v("mdi-cog")])],1)]}}])},[i("span",[t._v("Settings")])]),i("v-spacer")]},proxy:!0}])},[t.triggeredEntity.name?i("v-toolbar-title",[t._v(" "+t._s(t.triggeredEntity.name)+" ")]):t._e(),t.triggeredEntity.name?t._e():i("v-toolbar-title",[t._v(" Unnamed ")]),i("v-spacer"),i("v-btn",{attrs:{small:"",fab:"",color:"red"},on:{click:function(e){return t.closeEntityMenu()}}},[i("v-icon",[t._v("mdi-close-thick")])],1)],1),i("v-main",[i("v-container",{staticClass:"fill-height",attrs:{fluid:""}},[i("v-card",{staticClass:"pa-2",attrs:{height:"100%",width:"100%"}},[i("v-tabs-items",{attrs:{height:"100%",width:"100%"},model:{value:t.tabs,callback:function(e){t.tabs=e},expression:"tabs"}},[i("v-tab-item",[t.registeredEntityMenus[t.triggeredEntity.id]?i("v-list",[i("v-list",t._l(t.registeredEntityMenus[t.triggeredEntity.id].actions,(function(e){return i("Action",{key:e.name,attrs:{triggeredEntity:t.triggeredEntity,action:e},on:{"emit-framework-message":t.sendFrameworkMessage}})})),1)],1):t.registeredEntityMenus[t.triggeredEntity.id]?t._e():i("div",{staticClass:"text-center"},[i("v-list-item-subtitle",{staticClass:"text-h6"},[t._v(" No Actions Available ")])],1)],1),i("v-tab-item",[i("v-card",{staticClass:"mx-auto",attrs:{height:"100%",width:"100%"}},[i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Entity Type ")]),i("v-list-item-subtitle",[t._v(t._s(t.triggeredEntity.type))])],1)],1),i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Entity Host Type ")]),i("v-list-item-subtitle",[t._v(t._s(t.triggeredEntity.entityHostType))])],1)],1),i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Last Edited By ")]),i("v-list-item-subtitle",[t._v(t._s(t.triggeredEntity.lastEditedByName))])],1)],1),i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Description ")]),i("v-list-item-subtitle",[t._v(t._s(t.triggeredEntity.description))])],1)],1),i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Position (Vec3) ")]),i("v-list-item-subtitle",[i("span",{staticClass:"red--text"},[t._v("x: ")]),t._v(t._s(t.triggeredEntity.position.x)),i("br"),i("span",{staticClass:"green--text"},[t._v("y: ")]),t._v(t._s(t.triggeredEntity.position.y)),i("br"),i("span",{staticClass:"blue--text"},[t._v("z: ")]),t._v(t._s(t.triggeredEntity.position.z)+" ")])],1)],1),i("v-list-item",{attrs:{"two-line":""}},[i("v-list-item-content",[i("div",{staticClass:"overline"},[t._v(" Rotation (Quat) ")]),i("v-list-item-subtitle",[i("span",{staticClass:"red--text"},[t._v("x: ")]),t._v(t._s(t.triggeredEntity.rotation.x)),i("br"),i("span",{staticClass:"green--text"},[t._v("y: ")]),t._v(t._s(t.triggeredEntity.rotation.y)),i("br"),i("span",{staticClass:"blue--text"},[t._v("z: ")]),t._v(t._s(t.triggeredEntity.rotation.z)),i("br"),i("span",[t._v("w: ")]),t._v(t._s(t.triggeredEntity.rotation.w)+" ")])],1)],1)],1)],1),i("v-tab-item",[i("v-card",{staticClass:"mx-auto",attrs:{height:"100%",width:"100%"}},[i("v-card-text",{staticClass:"pt-0"},[i("v-card-title",[t._v(" Trigger Entity Menu ")]),i("v-divider"),i("v-row",[i("v-card-title",{staticClass:"subtitle-1"},[i("v-checkbox",{staticClass:"shrink mr-2 mt-0",attrs:{"hide-details":""},model:{value:t.settings.entityMenu.useMouseTriggers,callback:function(e){t.$set(t.settings.entityMenu,"useMouseTriggers",e)},expression:"settings.entityMenu.useMouseTriggers"}}),t._v(" Mouse / Controller ")],1)],1),i("v-row",[i("v-combobox",{attrs:{items:t.settings.entityMenu.possibleMouseTriggers,disabled:!t.settings.entityMenu.useMouseTriggers,label:"Triggered by",multiple:"",outlined:"",dense:""},model:{value:t.settings.entityMenu.selectedMouseTriggers,callback:function(e){t.$set(t.settings.entityMenu,"selectedMouseTriggers",e)},expression:"settings.entityMenu.selectedMouseTriggers"}})],1),i("v-row",[i("v-combobox",{attrs:{items:t.settings.entityMenu.possibleMouseModifiers,disabled:!0,label:"Modifiers",multiple:"",outlined:"",dense:""},model:{value:t.settings.entityMenu.selectedMouseModifiers,callback:function(e){t.$set(t.settings.entityMenu,"selectedMouseModifiers",e)},expression:"settings.entityMenu.selectedMouseModifiers"}})],1),i("v-divider"),i("v-card-title",[t._v(" Sit Offsets ")]),i("v-divider"),i("v-row",[i("v-text-field",{attrs:{label:"x",type:"number"},model:{value:t.settings.sit.offset.position.x,callback:function(e){t.$set(t.settings.sit.offset.position,"x",e)},expression:"settings.sit.offset.position.x"}}),i("v-text-field",{attrs:{label:"y",type:"number"},model:{value:t.settings.sit.offset.position.y,callback:function(e){t.$set(t.settings.sit.offset.position,"y",e)},expression:"settings.sit.offset.position.y"}}),i("v-text-field",{attrs:{label:"z",type:"number"},model:{value:t.settings.sit.offset.position.z,callback:function(e){t.$set(t.settings.sit.offset.position,"z",e)},expression:"settings.sit.offset.position.z"}})],1)],1)],1)],1)],1)],1)],1)],1),i("v-bottom-navigation",{attrs:{app:""}},[i("v-tabs",{attrs:{"fixed-tabs":""},model:{value:t.tabs,callback:function(e){t.tabs=e},expression:"tabs"}},[i("v-tabs-slider"),i("v-tab",{staticClass:"primary--text"},[i("v-icon",{staticClass:"mr-2"},[t._v("mdi-format-list-bulleted")]),t._v(" Actions ")],1),i("v-tab",{staticClass:"primary--text"},[i("v-icon",{staticClass:"mr-2"},[t._v("mdi-cube")]),t._v(" Properties ")],1),i("v-tab",{staticClass:"primary--text",staticStyle:{display:"none"}},[i("v-icon",[t._v("mdi-cog")])],1)],1)],1)],1)},r=[],o=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",["button"===t.action.type?i("div",[i("v-divider"),i("v-list-item",{attrs:{width:"100%"},on:{click:function(e){return t.triggeredMenuItem(t.action.type,t.action.name)}}},[i("v-list-item-content",[i("v-list-item-title",{domProps:{textContent:t._s(t.action.name)}})],1)],1)],1):t._e(),"slider"===t.action.type?i("div",[i("v-divider"),i("div",{attrs:{width:"100%"}},[i("v-list-item-content",[i("v-slider",{attrs:{label:t.action.name,color:t.action.color,value:t.action.initialValue,min:t.action.minValue,max:t.action.maxValue,step:t.action.step},on:{change:function(e){return t.sliderUpdated(t.action.type,t.action.name,e)}}})],1)],1)],1):t._e(),"textField"===t.action.type?i("div",[i("v-divider"),i("div",{attrs:{width:"100%"}},[i("v-list-item-content",[i("v-text-field",{attrs:{label:t.action.name,value:t.action.initialValue,hint:t.action.hint},model:{value:t.textFields[t.action.name],callback:function(e){t.$set(t.textFields,t.action.name,e)},expression:"textFields[action.name]"}},[i("v-tooltip",{attrs:{slot:"append",left:""},slot:"append",scopedSlots:t._u([{key:"activator",fn:function(e){var n=e.on,s=e.attrs;return[i("v-icon",t._g(t._b({attrs:{color:"green"},on:{click:function(e){return t.textFieldUpdated(t.action.type,t.action.name)}}},"v-icon",s,!1),n),[t._v(" mdi-check ")])]}}],null,!1,3870303982)},[i("span",[t._v("Apply")])])],1)],1)],1)],1):t._e(),"colorPicker"===t.action.type?i("div",[i("v-divider"),i("div",{attrs:{width:"100%"}},[i("v-list-item-content",[i("v-color-picker",{attrs:{value:t.action.initialColor},on:{"update:color":function(e){return t.colorPickerUpdated(t.action.type,t.action.name,e)}}})],1)],1)],1):t._e()])},l=[],c={name:"Action",components:{},props:["action","triggeredEntity"],data:function(){return{textFields:{}}},computed:{},methods:{colorPickerUpdated:function(t,e,i){var n={triggeredEntityID:this.triggeredEntity.id,data:{type:t,name:e,colors:i}};this.$emit("emit-framework-message","menu-item-triggered",n)},sliderUpdated:function(t,e,i){var n={triggeredEntityID:this.triggeredEntity.id,data:{type:t,name:e,value:i}};this.$emit("emit-framework-message","menu-item-triggered",n)},textFieldUpdated:function(t,e){var i={triggeredEntityID:this.triggeredEntity.id,data:{type:t,name:e,value:this.textFields[e]}};this.$emit("emit-framework-message","menu-item-triggered",i)},triggeredMenuItem:function(t,e){var i={triggeredEntityID:this.triggeredEntity.id,data:{type:t,name:e}};this.$emit("emit-framework-message","menu-item-triggered",i)}},watch:{},created:function(){}},d=c,u=i("2877"),v=i("6544"),g=i.n(v),p=i("03a4"),m=i("ce7e"),f=i("132d"),y=i("da13"),b=i("5d23"),_=i("ba0d"),h=i("8654"),x=i("3a2f"),E=Object(u["a"])(d,o,l,!1,null,null,null),M=E.exports;function w(){return"undefined"===typeof EventBridge}g()(E,{VColorPicker:p["a"],VDivider:m["a"],VIcon:f["a"],VListItem:y["a"],VListItemContent:b["a"],VListItemTitle:b["c"],VSlider:_["a"],VTextField:h["a"],VTooltip:x["a"]}),w()||EventBridge.scriptEventReceived.connect((function(t){if(t=JSON.parse(t),"script-to-web-registered-entity-menus"===t.command&&n.updateRegisteredEntityMenus(t.data),"script-to-web-triggered-entity-info"===t.command&&n.updateTriggeredEntityInfo(t.data),"script-to-web-update-settings"===t.command){if(null===t.data.settings||""===t.data.settings)return;n.updateSettings(t.data)}}));var k={name:"App",components:{Action:M},data:function(){return{settings:{entityMenu:{useMouseTriggers:!0,selectedMouseTriggers:[],possibleMouseTriggers:["Primary","Secondary","Tertiary"],possibleMouseModifiers:["Shift","Meta","Control","Alt"]},sit:{offset:{position:{x:0,y:0,z:0}}}},tabs:0,registeredEntityMenus:{"{768542d0-e962-49e3-94fb-85651d56f5ae}":{actions:[{type:"button",name:"Equip"},{type:"colorPicker",name:"Color Picker",initialColor:{r:"1",g:"1",b:"1",a:"1"}},{type:"slider",name:"Alpha",step:.1,color:"yellow",initialValue:"0.1",minValue:0,maxValue:1},{type:"button",name:"Unequip"}]}},triggeredEntity:{id:"{768542d0-e962-49e3-94fb-85651d56f5ae}",name:"TESTTTTTTTT",type:"test",lastEditedBy:"test",lastEditedByName:"test",description:"This is a test description.",entityHostType:"Domain",position:{x:1,y:1,z:1},rotation:{x:1,y:1,z:1,w:1}}}},computed:{},methods:{updateRegisteredEntityMenus:function(t){this.registeredEntityMenus=t.registeredEntityMenus,this.triggeredEntity=t.lastTriggeredEntityInfo},updateTriggeredEntityInfo:function(t){this.triggeredEntity=t},updateSettings:function(t){this.settings=t.settings},triggerSitOnEntity:function(){this.sendFrameworkMessage("sit-on-entity-triggered",{})},triggerParentToEntity:function(){this.sendFrameworkMessage("parent-to-entity-triggered",{})},triggerMoveModeOnEntity:function(){this.sendFrameworkMessage("entity-move-mode-triggered",{})},closeEntityMenu:function(){this.sendFrameworkMessage("close-entity-menu","")},sendFrameworkMessage:function(t,e){var i={command:t,data:e};w()||EventBridge.emitWebEvent(JSON.stringify(i))}},watch:{settings:{deep:!0,handler:function(){var t={settings:this.settings};this.sendFrameworkMessage("web-to-script-settings-changed",t)}}},created:function(){n=this,this.$vuetify.theme.dark="true",this.sendFrameworkMessage("ready","")}},T=k,V=i("7496"),C=i("40dc"),S=i("b81c"),P=i("8336"),I=i("b0af"),O=i("99d9"),F=i("ac7c"),$=i("2b5d"),A=i("a523"),j=i("8860"),z=i("f6c4"),B=i("0fd9"),D=i("2fa4"),L=i("71a3"),U=i("c671"),N=i("fe57"),R=i("aac8"),J=i("9a96"),H=i("2a7f"),q=Object(u["a"])(T,a,r,!1,null,null,null),Q=q.exports;g()(q,{VApp:V["a"],VAppBar:C["a"],VBottomNavigation:S["a"],VBtn:P["a"],VCard:I["a"],VCardText:O["a"],VCardTitle:O["b"],VCheckbox:F["a"],VCombobox:$["a"],VContainer:A["a"],VDivider:m["a"],VIcon:f["a"],VList:j["a"],VListItem:y["a"],VListItemContent:b["a"],VListItemSubtitle:b["b"],VMain:z["a"],VRow:B["a"],VSpacer:D["a"],VTab:L["a"],VTabItem:U["a"],VTabs:N["a"],VTabsItems:R["a"],VTabsSlider:J["a"],VTextField:h["a"],VToolbarTitle:H["a"],VTooltip:x["a"]});var W=i("f309");s["a"].use(W["a"]);var G=new W["a"]({});s["a"].config.productionTip=!1,new s["a"]({vuetify:G,render:function(t){return t(Q)}}).$mount("#app")}});
//# sourceMappingURL=app.fb624560.js.map