// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function f(){ log.history = log.history || []; log.history.push(arguments); if(this.console) { var args = arguments, newarr; args.callee = args.callee.caller; newarr = [].slice.call(args); if (typeof console.log === 'object') log.apply.call(console.log, console, newarr); else console.log.apply(console, newarr);}};

// make it safe to use console.log always
(function(a){function b(){}for(var c="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),d;!!(d=c.pop());){a[d]=a[d]||b;}})
(function(){try{console.log();return window.console;}catch(a){return (window.console={});}}());


// place any jQuery/helper plugins in here, instead of separate, slower script files.
$.fn.datalist=function(){return typeof this[0].list==="object"&&this[0].list!==undefined?this:this.each(function(){var a=$(this),d=$("#"+a.attr("list")),g=d.find("option"),c=a.width(),h=a.height(),b=$("<ul>",{"class":"datalist",width:c,css:{position:"absolute",left:0,top:h+6}});c=$("<div>").css("position","relative");if(d.length)g.each(function(e,f){$("<li>").append('<span class="value">'+f.value+"</span>").append('<span class="label">'+f.label+"</span>").appendTo(b)});else return this;a.wrap(c);
b.hide().insertAfter(a);a.focus(function(){b.show()});a.blur(function(){b.hide()});a.next().find("li").mousedown(function(){var e=$(this).find("span.value").text();a.val(e)})})};