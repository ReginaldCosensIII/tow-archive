<%@ Page Language="C#" %>
<%@ Import namespace="System.IO" %>
<%@ Import namespace="System.Linq" %>
<%@ Import namespace="System.Collections.Generic" %>

<!DOCTYPE html>
<!--[if lt IE 9 ]>    <html class="lt-ie9 no-js"  lang="en" dir="ltr"> <![endif]-->
<!--[if gte IE 9]><!-->
<html class="no-js" lang="en" dir="ltr" prefix="fb: http://www.facebook.com/2008/fbml
 content: http://purl.org/rss/1.0/modules/content/
 dc: http://purl.org/dc/terms/
 foaf: http://xmlns.com/foaf/0.1/
 og: http://ogp.me/ns#
 rdfs: http://www.w3.org/2000/01/rdf-schema#
 sioc: http://rdfs.org/sioc/ns#
 sioct: http://rdfs.org/sioc/types#
 skos: http://www.w3.org/2004/02/skos/core#
 xsd: http://www.w3.org/2001/XMLSchema#
">
<!--<![endif]-->
<head>
<script type='text/javascript' src='files/glightbox.min.js'></script>
<link rel='stylesheet' href='files/glightbox.min.css' type='text/css' media='all' />

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="https://www.walkersvillemd.gov/sites/all/themes/custom/sites/walkersvillemd/walkersvillemd_theme/favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<script type="text/javascript">(window.NREUM || (NREUM = {})).init = { ajax: { deny_list: ["bam.nr-data.net"] } }; (window.NREUM || (NREUM = {})).loader_config = { licenseKey: "NRJS-acd47eab6e866cba245", applicationID: "784625820" }; window.NREUM || (NREUM = {}), __nr_require = function (t, e, n) { function r(n) { if (!e[n]) { var i = e[n] = { exports: {} }; t[n][0].call(i.exports, function (e) { var i = t[n][1][e]; return r(i || e) }, i, i.exports) } return e[n].exports } if ("function" == typeof __nr_require) return __nr_require; for (var i = 0; i < n.length; i++)r(n[i]); return r }({ 1: [function (t, e, n) { function r() { } function i(t, e, n, r) { return function () { return s.recordSupportability("API/" + e + "/called"), o(t + e, [u.now()].concat(c(arguments)), n ? null : this, r), n ? void 0 : this } } var o = t("handle"), a = t(9), c = t(10), f = t("ee").get("tracer"), u = t("loader"), s = t(4), d = NREUM; "undefined" == typeof window.newrelic && (newrelic = d); var p = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit", "addRelease"], l = "api-", v = l + "ixn-"; a(p, function (t, e) { d[e] = i(l, e, !0, "api") }), d.addPageAction = i(l, "addPageAction", !0), d.setCurrentRouteName = i(l, "routeName", !0), e.exports = newrelic, d.interaction = function () { return (new r).get() }; var m = r.prototype = { createTracer: function (t, e) { var n = {}, r = this, i = "function" == typeof e; return o(v + "tracer", [u.now(), t, n], r), function () { if (f.emit((i ? "" : "no-") + "fn-start", [u.now(), r, i], n), i) try { return e.apply(this, arguments) } catch (t) { throw f.emit("fn-err", [arguments, this, t], n), t } finally { f.emit("fn-end", [u.now()], n) } } } }; a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (t, e) { m[e] = i(v, e) }), newrelic.noticeError = function (t, e) { "string" == typeof t && (t = new Error(t)), s.recordSupportability("API/noticeError/called"), o("err", [t, u.now(), !1, e]) } }, {}], 2: [function (t, e, n) { function r(t) { if (NREUM.init) { for (var e = NREUM.init, n = t.split("."), r = 0; r < n.length - 1; r++)if (e = e[n[r]], "object" != typeof e) return; return e = e[n[n.length - 1]] } } e.exports = { getConfiguration: r } }, {}], 3: [function (t, e, n) { var r = !1; try { var i = Object.defineProperty({}, "passive", { get: function () { r = !0 } }); window.addEventListener("testPassive", null, i), window.removeEventListener("testPassive", null, i) } catch (o) { } e.exports = function (t) { return r ? { passive: !0, capture: !!t } : !!t } }, {}], 4: [function (t, e, n) { function r(t, e) { var n = [a, t, { name: t }, e]; return o("storeMetric", n, null, "api"), n } function i(t, e) { var n = [c, t, { name: t }, e]; return o("storeEventMetrics", n, null, "api"), n } var o = t("handle"), a = "sm", c = "cm"; e.exports = { constants: { SUPPORTABILITY_METRIC: a, CUSTOM_METRIC: c }, recordSupportability: r, recordCustom: i } }, {}], 5: [function (t, e, n) { function r() { return c.exists && performance.now ? Math.round(performance.now()) : (o = Math.max((new Date).getTime(), o)) - a } function i() { return o } var o = (new Date).getTime(), a = o, c = t(11); e.exports = r, e.exports.offset = a, e.exports.getLastTimestamp = i }, {}], 6: [function (t, e, n) { function r(t, e) { var n = t.getEntries(); n.forEach(function (t) { "first-paint" === t.name ? l("timing", ["fp", Math.floor(t.startTime)]) : "first-contentful-paint" === t.name && l("timing", ["fcp", Math.floor(t.startTime)]) }) } function i(t, e) { var n = t.getEntries(); if (n.length > 0) { var r = n[n.length - 1]; if (u && u < r.startTime) return; var i = [r], o = a({}); o && i.push(o), l("lcp", i) } } function o(t) { t.getEntries().forEach(function (t) { t.hadRecentInput || l("cls", [t]) }) } function a(t) { var e = navigator.connection || navigator.mozConnection || navigator.webkitConnection; if (e) return e.type && (t["net-type"] = e.type), e.effectiveType && (t["net-etype"] = e.effectiveType), e.rtt && (t["net-rtt"] = e.rtt), e.downlink && (t["net-dlink"] = e.downlink), t } function c(t) { if (t instanceof y && !w) { var e = Math.round(t.timeStamp), n = { type: t.type }; a(n), e <= v.now() ? n.fid = v.now() - e : e > v.offset && e <= Date.now() ? (e -= v.offset, n.fid = v.now() - e) : e = v.now(), w = !0, l("timing", ["fi", e, n]) } } function f(t) { "hidden" === t && (u = v.now(), l("pageHide", [u])) } if (!("init" in NREUM && "page_view_timing" in NREUM.init && "enabled" in NREUM.init.page_view_timing && NREUM.init.page_view_timing.enabled === !1)) { var u, s, d, p, l = t("handle"), v = t("loader"), m = t(8), g = t(3), y = NREUM.o.EV; if ("PerformanceObserver" in window && "function" == typeof window.PerformanceObserver) { s = new PerformanceObserver(r); try { s.observe({ entryTypes: ["paint"] }) } catch (h) { } d = new PerformanceObserver(i); try { d.observe({ entryTypes: ["largest-contentful-paint"] }) } catch (h) { } p = new PerformanceObserver(o); try { p.observe({ type: "layout-shift", buffered: !0 }) } catch (h) { } } if ("addEventListener" in document) { var w = !1, b = ["click", "keydown", "mousedown", "pointerdown", "touchstart"]; b.forEach(function (t) { document.addEventListener(t, c, g(!1)) }) } m(f) } }, {}], 7: [function (t, e, n) { function r(t, e) { if (!i) return !1; if (t !== i) return !1; if (!e) return !0; if (!o) return !1; for (var n = o.split("."), r = e.split("."), a = 0; a < r.length; a++)if (r[a] !== n[a]) return !1; return !0 } var i = null, o = null, a = /Version\/(\S+)\s+Safari/; if (navigator.userAgent) { var c = navigator.userAgent, f = c.match(a); f && c.indexOf("Chrome") === -1 && c.indexOf("Chromium") === -1 && (i = "Safari", o = f[1]) } e.exports = { agent: i, version: o, match: r } }, {}], 8: [function (t, e, n) { function r(t) { function e() { t(c && document[c] ? document[c] : document[o] ? "hidden" : "visible") } "addEventListener" in document && a && document.addEventListener(a, e, i(!1)) } var i = t(3); e.exports = r; var o, a, c; "undefined" != typeof document.hidden ? (o = "hidden", a = "visibilitychange", c = "visibilityState") : "undefined" != typeof document.msHidden ? (o = "msHidden", a = "msvisibilitychange") : "undefined" != typeof document.webkitHidden && (o = "webkitHidden", a = "webkitvisibilitychange", c = "webkitVisibilityState") }, {}], 9: [function (t, e, n) { function r(t, e) { var n = [], r = "", o = 0; for (r in t) i.call(t, r) && (n[o] = e(r, t[r]), o += 1); return n } var i = Object.prototype.hasOwnProperty; e.exports = r }, {}], 10: [function (t, e, n) { function r(t, e, n) { e || (e = 0), "undefined" == typeof n && (n = t ? t.length : 0); for (var r = -1, i = n - e || 0, o = Array(i < 0 ? 0 : i); ++r < i;)o[r] = t[e + r]; return o } e.exports = r }, {}], 11: [function (t, e, n) { e.exports = { exists: "undefined" != typeof window.performance && window.performance.timing && "undefined" != typeof window.performance.timing.navigationStart } }, {}], ee: [function (t, e, n) { function r() { } function i(t) { function e(t) { return t && t instanceof r ? t : t ? u(t, f, a) : a() } function n(n, r, i, o, a) { if (a !== !1 && (a = !0), !l.aborted || o) { t && a && t(n, r, i); for (var c = e(i), f = m(n), u = f.length, s = 0; s < u; s++)f[s].apply(c, r); var p = d[w[n]]; return p && p.push([b, n, r, c]), c } } function o(t, e) { h[t] = m(t).concat(e) } function v(t, e) { var n = h[t]; if (n) for (var r = 0; r < n.length; r++)n[r] === e && n.splice(r, 1) } function m(t) { return h[t] || [] } function g(t) { return p[t] = p[t] || i(n) } function y(t, e) { l.aborted || s(t, function (t, n) { e = e || "feature", w[n] = e, e in d || (d[e] = []) }) } var h = {}, w = {}, b = { on: o, addEventListener: o, removeEventListener: v, emit: n, get: g, listeners: m, context: e, buffer: y, abort: c, aborted: !1 }; return b } function o(t) { return u(t, f, a) } function a() { return new r } function c() { (d.api || d.feature) && (l.aborted = !0, d = l.backlog = {}) } var f = "nr@context", u = t("gos"), s = t(9), d = {}, p = {}, l = e.exports = i(); e.exports.getOrSetContext = o, l.backlog = d }, {}], gos: [function (t, e, n) { function r(t, e, n) { if (i.call(t, e)) return t[e]; var r = n(); if (Object.defineProperty && Object.keys) try { return Object.defineProperty(t, e, { value: r, writable: !0, enumerable: !1 }), r } catch (o) { } return t[e] = r, r } var i = Object.prototype.hasOwnProperty; e.exports = r }, {}], handle: [function (t, e, n) { function r(t, e, n, r) { i.buffer([t], r), i.emit(t, e, n) } var i = t("ee").get("handle"); e.exports = r, r.ee = i }, {}], id: [function (t, e, n) { function r(t) { var e = typeof t; return !t || "object" !== e && "function" !== e ? -1 : t === window ? 0 : a(t, o, function () { return i++ }) } var i = 1, o = "nr@id", a = t("gos"); e.exports = r }, {}], loader: [function (t, e, n) { function r() { if (!M++) { var t = T.info = NREUM.info, e = m.getElementsByTagName("script")[0]; if (setTimeout(u.abort, 3e4), !(t && t.licenseKey && t.applicationID && e)) return u.abort(); f(x, function (e, n) { t[e] || (t[e] = n) }); var n = a(); c("mark", ["onload", n + T.offset], null, "api"), c("timing", ["load", n]); var r = m.createElement("script"); 0 === t.agent.indexOf("http://") || 0 === t.agent.indexOf("https://") ? r.src = t.agent : r.src = l + "://" + t.agent, e.parentNode.insertBefore(r, e) } } function i() { "complete" === m.readyState && o() } function o() { c("mark", ["domContent", a() + T.offset], null, "api") } var a = t(5), c = t("handle"), f = t(9), u = t("ee"), s = t(7), d = t(2), p = t(3), l = d.getConfiguration("ssl") === !1 ? "http" : "https", v = window, m = v.document, g = "addEventListener", y = "attachEvent", h = v.XMLHttpRequest, w = h && h.prototype, b = !1; NREUM.o = { ST: setTimeout, SI: v.setImmediate, CT: clearTimeout, XHR: h, REQ: v.Request, EV: v.Event, PR: v.Promise, MO: v.MutationObserver }; var E = "" + location, x = { beacon: "bam.nr-data.net", errorBeacon: "bam.nr-data.net", agent: "js-agent.newrelic.com/nr-1216.min.js" }, O = h && w && w[g] && !/CriOS/.test(navigator.userAgent), T = e.exports = { offset: a.getLastTimestamp(), now: a, origin: E, features: {}, xhrWrappable: O, userAgent: s, disabled: b }; if (!b) { t(1), t(6), m[g] ? (m[g]("DOMContentLoaded", o, p(!1)), v[g]("load", r, p(!1))) : (m[y]("onreadystatechange", i), v[y]("onload", r)), c("mark", ["firstbyte", a.getLastTimestamp()], null, "api"); var M = 0 } }, {}], "wrap-function": [function (t, e, n) { function r(t, e) { function n(e, n, r, f, u) { function nrWrapper() { var o, a, s, p; try { a = this, o = d(arguments), s = "function" == typeof r ? r(o, a) : r || {} } catch (l) { i([l, "", [o, a, f], s], t) } c(n + "start", [o, a, f], s, u); try { return p = e.apply(a, o) } catch (v) { throw c(n + "err", [o, a, v], s, u), v } finally { c(n + "end", [o, a, p], s, u) } } return a(e) ? e : (n || (n = ""), nrWrapper[p] = e, o(e, nrWrapper, t), nrWrapper) } function r(t, e, r, i, o) { r || (r = ""); var c, f, u, s = "-" === r.charAt(0); for (u = 0; u < e.length; u++)f = e[u], c = t[f], a(c) || (t[f] = n(c, s ? f + r : r, i, f, o)) } function c(n, r, o, a) { if (!v || e) { var c = v; v = !0; try { t.emit(n, r, o, e, a) } catch (f) { i([f, n, r, o], t) } v = c } } return t || (t = s), n.inPlace = r, n.flag = p, n } function i(t, e) { e || (e = s); try { e.emit("internal-error", t) } catch (n) { } } function o(t, e, n) { if (Object.defineProperty && Object.keys) try { var r = Object.keys(t); return r.forEach(function (n) { Object.defineProperty(e, n, { get: function () { return t[n] }, set: function (e) { return t[n] = e, e } }) }), e } catch (o) { i([o], n) } for (var a in t) l.call(t, a) && (e[a] = t[a]); return e } function a(t) { return !(t && t instanceof Function && t.apply && !t[p]) } function c(t, e) { var n = e(t); return n[p] = t, o(t, n, s), n } function f(t, e, n) { var r = t[e]; t[e] = c(r, n) } function u() { for (var t = arguments.length, e = new Array(t), n = 0; n < t; ++n)e[n] = arguments[n]; return e } var s = t("ee"), d = t(10), p = "nr@original", l = Object.prototype.hasOwnProperty, v = !1; e.exports = r, e.exports.wrapFunction = c, e.exports.wrapInPlace = f, e.exports.argsToArray = u }, {}] }, {}, ["loader"]);</script>
	<meta name="generator" content="Drupal 7 (https://www.drupal.org)" />
	<link rel="canonical" href="https://www.walkersvillemd.gov/" />
	<link rel="shortlink" href="https://www.walkersvillemd.gov/" />
	<title>Walkersville, MD |</title>

	<style>
		@import url("https://www.walkersvillemd.gov/modules/system/system.base.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/system/system.menus.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/system/system.messages.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/system/system.theme.css?rdjbn6");
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/calendar/css/calendar_multiday.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/calendar_tooltips/calendar_tooltips.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/date/date_repeat_field/date_repeat_field.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/fences/field.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/fitvids/fitvids.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/node/node.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/picture/picture_wysiwyg.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/search/search.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/modules/user/user.css?rdjbn6");
	</style>
	<style media="screen">
		@import url("https://www.walkersvillemd.gov/sites/all/modules/features/vts_business_directory/vts_business_directory.css?rdjbn6");
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/modules/custom/vts_calendar_colors/css/vts_calendar_colors.css?rdjbn6");
	</style>
	<style media="screen">
		@import url("https://www.walkersvillemd.gov/sites/all/modules/features/vts_content_types/vts_content_types.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/features/vts_rules/vts_rules.css?rdjbn6");
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/date_repeat_entity/date_repeat_entity.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/views/css/views.css?rdjbn6");
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/colorbox/styles/default/colorbox_style.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/ctools/css/ctools.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/panels/css/panels.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/content_type_extras/css/content_type_extras.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/date/date_views/css/date_views.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/menu_minipanels/css/menu_minipanels.css?rdjbn6");
	</style>
	<style>
		.webform-component-file .form-submit {
			display: none;
			!important
		}
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/modules/contrib/hide_submit/css/hide_submit.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/libraries/superfish/css/superfish.css?rdjbn6");
		@import url("https://www.walkersvillemd.gov/sites/all/libraries/superfish/css/superfish-smallscreen.css?rdjbn6");
	</style>
	<style>
		@import url("https://www.walkersvillemd.gov/sites/all/themes/custom/sites/walkersvillemd/walkersvillemd_theme/css/style.css?rdjbn6");
	</style>
	<style media="print">
		@import url("https://www.walkersvillemd.gov/sites/all/themes/custom/vts_aurora/css/print.css?rdjbn6");
	</style>
	<style media="screen">
		#page {
			background-repeat: no-repeat;
			background-position: center top;
		}

		#page {
			background-image: url('https://www.walkersvillemd.gov/sites/g/files/vyhlif7521/f/styles/mobile_background/public/backgrounds/heritage_barn_1.jpg?itok=k0FFlwRf');
		}
	</style>
	<style media="screen and (min-width: 768px)">
		#page {
			background-image: url('https://www.walkersvillemd.gov/sites/g/files/vyhlif7521/f/backgrounds/heritage_barn_1.jpg');
		}
	</style>
	<script src="https://www.walkersvillemd.gov/misc/jquery.js?v=1.4.4"></script>
	<script src="https://www.walkersvillemd.gov/misc/jquery-extend-3.4.0.js?v=1.4.4"></script>
	<script src="https://www.walkersvillemd.gov/misc/jquery-html-prefilter-3.5.0-backport.js?v=1.4.4"></script>
	<script src="https://www.walkersvillemd.gov/misc/jquery.once.js?v=1.2"></script>
	<script src="https://www.walkersvillemd.gov/misc/drupal.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/fitvids/jquery.fitvids.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/beautytips/js/jquery.bt.min.js?v=0.9.5-rc1"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/beautytips/js/beautytips.min.js?v=7.x-2.x"></script>
	<script src="https://www.walkersvillemd.gov/misc/jquery.cookie.js?v=1.0"></script>
	<script src="https://www.walkersvillemd.gov/misc/jquery.form.js?v=2.52"></script>
	<script src="https://www.walkersvillemd.gov/misc/ajax.js?v=7.77"></script>
	<script>document.createElement("picture");</script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/fitvids/fitvids.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/colorbox/jquery.colorbox-min.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/colorbox/js/colorbox.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/colorbox/styles/default/colorbox_style.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/views/js/base.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/misc/progress.js?v=7.77"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/views/js/ajax_view.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/google_analytics/googleanalytics.js?rdjbn6"></script>
	<script>(function (i, s, o, g, r, a, m) { i["GoogleAnalyticsObject"] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, "script", "https://www.google-analytics.com/analytics.js", "ga"); ga("create", "UA-24843727-94", { "cookieDomain": "auto" }); ga("set", "anonymizeIp", true); ga("send", "pageview");</script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/hide_submit/js/hide_submit.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/superfish/jquery.hoverIntent.minified.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/superfish/sftouchscreen.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/superfish/sfsmallscreen.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/superfish/supposition.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/libraries/superfish/superfish.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/superfish/superfish.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/themes/custom/vts_aurora/js/text_filtering.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/themes/custom/vts_aurora/js/accordion_menu.js?rdjbn6"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/themes/custom/vts_aurora/js/vts_misc.js?rdjbn6"></script>
	<script>jQuery.extend(Drupal.settings, { "basePath": "\/", "pathPrefix": "", "ajaxPageState": { "theme": "walkersvillemd_theme", "theme_token": "uFR4fnhGK9Bx5pVDpNvEUoBTZSkqC05rt7w9CrP4LDM", "js": { "sites\/all\/modules\/contrib\/picture\/picturefill2\/picturefill.min.js": 1, "sites\/all\/modules\/contrib\/picture\/picture.min.js": 1, "sites\/all\/modules\/contrib\/addthis\/addthis.js": 1, "misc\/jquery.js": 1, "misc\/jquery-extend-3.4.0.js": 1, "misc\/jquery-html-prefilter-3.5.0-backport.js": 1, "misc\/jquery.once.js": 1, "misc\/drupal.js": 1, "sites\/all\/libraries\/fitvids\/jquery.fitvids.js": 1, "sites\/all\/modules\/contrib\/beautytips\/js\/jquery.bt.min.js": 1, "sites\/all\/modules\/contrib\/beautytips\/js\/beautytips.min.js": 1, "misc\/jquery.cookie.js": 1, "misc\/jquery.form.js": 1, "misc\/ajax.js": 1, "0": 1, "sites\/all\/modules\/contrib\/fitvids\/fitvids.js": 1, "sites\/all\/libraries\/colorbox\/jquery.colorbox-min.js": 1, "sites\/all\/modules\/contrib\/colorbox\/js\/colorbox.js": 1, "sites\/all\/modules\/contrib\/colorbox\/styles\/default\/colorbox_style.js": 1, "sites\/all\/modules\/contrib\/views\/js\/base.js": 1, "misc\/progress.js": 1, "sites\/all\/modules\/contrib\/views\/js\/ajax_view.js": 1, "sites\/all\/modules\/contrib\/google_analytics\/googleanalytics.js": 1, "1": 1, "sites\/all\/modules\/contrib\/hide_submit\/js\/hide_submit.js": 1, "sites\/all\/libraries\/superfish\/jquery.hoverIntent.minified.js": 1, "sites\/all\/libraries\/superfish\/sftouchscreen.js": 1, "sites\/all\/libraries\/superfish\/sfsmallscreen.js": 1, "sites\/all\/libraries\/superfish\/supposition.js": 1, "sites\/all\/libraries\/superfish\/superfish.js": 1, "sites\/all\/modules\/contrib\/superfish\/superfish.js": 1, "sites\/all\/themes\/custom\/vts_aurora\/js\/text_filtering.js": 1, "sites\/all\/themes\/custom\/vts_aurora\/js\/accordion_menu.js": 1, "sites\/all\/themes\/custom\/vts_aurora\/js\/vts_misc.js": 1 }, "css": { "modules\/system\/system.base.css": 1, "modules\/system\/system.menus.css": 1, "modules\/system\/system.messages.css": 1, "modules\/system\/system.theme.css": 1, "sites\/all\/modules\/contrib\/calendar\/css\/calendar_multiday.css": 1, "sites\/all\/modules\/contrib\/calendar_tooltips\/calendar_tooltips.css": 1, "sites\/all\/modules\/contrib\/date\/date_repeat_field\/date_repeat_field.css": 1, "modules\/field\/theme\/field.css": 1, "sites\/all\/modules\/contrib\/fitvids\/fitvids.css": 1, "modules\/node\/node.css": 1, "sites\/all\/modules\/contrib\/picture\/picture_wysiwyg.css": 1, "modules\/search\/search.css": 1, "modules\/user\/user.css": 1, "sites\/all\/modules\/features\/vts_business_directory\/vts_business_directory.css": 1, "sites\/all\/modules\/custom\/vts_calendar_colors\/css\/vts_calendar_colors.css": 1, "sites\/all\/modules\/features\/vts_content_types\/vts_content_types.css": 1, "sites\/all\/modules\/features\/vts_rules\/vts_rules.css": 1, "sites\/all\/modules\/contrib\/date_repeat_entity\/date_repeat_entity.css": 1, "sites\/all\/modules\/contrib\/views\/css\/views.css": 1, "sites\/all\/modules\/contrib\/colorbox\/styles\/default\/colorbox_style.css": 1, "sites\/all\/modules\/contrib\/ctools\/css\/ctools.css": 1, "sites\/all\/modules\/contrib\/panels\/css\/panels.css": 1, "sites\/all\/modules\/contrib\/content_type_extras\/css\/content_type_extras.css": 1, "sites\/all\/modules\/contrib\/date\/date_views\/css\/date_views.css": 1, "sites\/all\/modules\/contrib\/menu_minipanels\/css\/menu_minipanels.css": 1, "0": 1, "sites\/all\/modules\/contrib\/hide_submit\/css\/hide_submit.css": 1, "sites\/all\/libraries\/superfish\/css\/superfish.css": 1, "sites\/all\/libraries\/superfish\/css\/superfish-smallscreen.css": 1, "sites\/all\/themes\/custom\/sites\/walkersvillemd\/walkersvillemd_theme\/css\/style.css": 1, "sites\/all\/themes\/custom\/vts_aurora\/css\/print.css": 1, "1": 1, "2": 1 } }, "beautytipStyles": { "default": { "fill": "#ffffff", "strokeStyle": "#B7B7B7", "spikeLength": 20, "spikeGirth": 10, "width": "250px", "overlap": 0, "centerPointY": 1, "cornerRadius": 0, "cssStyles": { "fontFamily": "\u0026quot;Lucida Grande\u0026quot;,Helvetica,Arial,Verdana,sans-serif", "fontSize": "12px", "padding": "10px 14px" }, "shadow": "1", "shadowColor": "rgba(0,0,0,.5)", "shadowBlur": 8, "shadowOffsetX": 4, "shadowOffsetY": 4, "strokeWidth": 1, "padding": "10px" }, "plain": [], "netflix": { "positions": ["right", "left"], "fill": "#FFF", "padding": 5, "shadow": true, "shadowBlur": 12, "strokeStyle": "#B9090B", "spikeLength": 50, "spikeGirth": 60, "cornerRadius": 10, "centerPointY": 0.10000000000000001, "overlap": -8, "cssStyles": { "fontSize": "12px", "fontFamily": "arial,helvetica,sans-serif" } }, "facebook": { "fill": "#F7F7F7", "padding": 8, "strokeStyle": "#B7B7B7", "cornerRadius": 0, "cssStyles": { "fontFamily": "\u0022lucida grande\u0022,tahoma,verdana,arial,sans-serif", "fontSize": "11px" } }, "transparent": { "fill": "rgba(0, 0, 0, .8)", "padding": 20, "strokeStyle": "#CC0", "strokeWidth": 3, "spikeLength": 40, "spikeGirth": 40, "cornerRadius": 40, "cssStyles": { "color": "#FFF", "fontWeight": "bold" } }, "big-green": { "fill": "#00FF4E", "padding": 20, "strokeWidth": 0, "spikeLength": 40, "spikeGirth": 40, "cornerRadius": 15, "cssStyles": { "fontFamily": "\u0022lucida grande\u0022,tahoma,verdana,arial,sans-serif", "fontSize": "14px" } }, "google-maps": { "positions": ["top", "bottom"], "fill": "#FFF", "padding": 15, "strokeStyle": "#ABABAB", "strokeWidth": 1, "spikeLength": 65, "spikeGirth": 40, "cornerRadius": 25, "centerPointX": 0.90000000000000002, "cssStyles": [] }, "hulu": { "fill": "#F4F4F4", "strokeStyle": "#666666", "spikeLength": 20, "spikeGirth": 10, "width": 350, "overlap": 0, "centerPointY": 1, "cornerRadius": 0, "cssStyles": { "fontFamily": "\u0022Lucida Grande\u0022,Helvetica,Arial,Verdana,sans-serif", "fontSize": "12px", "padding": "10px 14px" }, "shadow": true, "shadowColor": "rgba(0,0,0,.5)", "shadowBlur": 8, "shadowOffsetX": 4, "shadowOffsetY": 4 } }, "beautytips": { "calendar-tooltips": { "cssSelect": ".calendar-calendar .mini-day-on a, .calendar-calendar .day a, .calendar-calendar .mini-day-on span, .calendar-calendar .day span", "contentSelector": "$(this).next().html()", "trigger": ["mouseover", "click"], "style": "hulu", "list": ["contentSelector", "trigger"] } }, "colorbox": { "opacity": "0.85", "current": "{current} of {total}", "previous": "\u00ab Prev", "next": "Next \u00bb", "close": "Close", "maxWidth": "98%", "maxHeight": "98%", "fixed": true, "mobiledetect": true, "mobiledevicewidth": "480px", "specificPagesDefaultValue": "admin*\nimagebrowser*\nimg_assist*\nimce*\nnode\/add\/*\nnode\/*\/edit\nprint\/*\nprintpdf\/*\nsystem\/ajax\nsystem\/ajax\/*" }, "better_exposed_filters": { "views": { "group_news": { "displays": { "group_news_blurb": { "filters": [] } } }, "town_calendar": { "displays": { "panel_pane_1": { "filters": [] }, "panel_pane_2": { "filters": [] } } }, "group_alerts": { "displays": { "panel_pane_1": { "filters": [] } } } } }, "views": { "ajax_path": "\/views\/ajax", "ajaxViews": { "views_dom_id:2bf300324908d451f74e32212ec4b1e0": { "view_name": "town_calendar", "view_display_id": "panel_pane_1", "view_args": "2022-07", "view_path": "node\/1", "view_base_path": "calendar\/month", "view_dom_id": "2bf300324908d451f74e32212ec4b1e0", "pager_element": 0 } } }, "urlIsAjaxTrusted": { "\/views\/ajax": true, "\/advanced-search": true }, "fitvids": { "custom_domains": [], "selectors": ["body"], "simplifymarkup": true }, "googleanalytics": { "trackOutbound": 1, "trackMailto": 1, "trackDownload": 1, "trackDownloadExtensions": "7z|aac|arc|arj|asf|asx|avi|bin|csv|doc(x|m)?|dot(x|m)?|exe|flv|gif|gz|gzip|hqx|jar|jpe?g|js|mp(2|3|4|e?g)|mov(ie)?|msi|msp|pdf|phps|png|ppt(x|m)?|pot(x|m)?|pps(x|m)?|ppam|sld(x|m)?|thmx|qtm?|ra(m|r)?|sea|sit|tar|tgz|torrent|txt|wav|wma|wmv|wpd|xls(x|m|b)?|xlt(x|m)|xlam|xml|z|zip", "trackColorbox": 1 }, "hide_submit": { "hide_submit_status": true, "hide_submit_method": "disable", "hide_submit_css": "hide-submit-disable", "hide_submit_abtext": "", "hide_submit_atext": "", "hide_submit_hide_css": "hide-submit-processing", "hide_submit_hide_text": "Processing please wait...", "hide_submit_indicator_style": "expand-left", "hide_submit_spinner_color": "#000", "hide_submit_spinner_lines": 12, "hide_submit_hide_fx": false, "hide_submit_reset_time": 0 }, "superfish": { "1": { "id": "1", "sf": { "animation": { "opacity": "show", "height": "show" }, "speed": "fast", "dropShadows": false }, "plugins": { "touchscreen": { "behaviour": "0", "disableHover": true, "mode": "useragent_predefined" }, "smallscreen": { "mode": "window_width", "breakpointUnit": "px", "title": "\u003E Click for Menu \u003C" }, "supposition": true } } }, "ogContext": { "groupType": "node", "gid": "1" } });</script>
</head>
<body class="html front not-logged-in page-node page-node- page-node-1 node-type-home-page og-context og-context-node og-context-node-1  default-styles walkersvillemd-theme">
		<div class="vts-site-template vts-masthead-full-bg vts-menu-full-bg vts-titlebar-full-bg vts-footer-full-bg panels-page no-sidebars">
		<header id="header" role="banner" class="region">
			<div class="container clearfix">
				

				<div class="panel-pane pane-panels-mini pane-site-heading-custom custom-masthead">


					<div class="vts-inner-6-6" id="mini-panel-site_heading_custom">

						<div class="inner-two-column-50-50">
							<div class="inner-two-column-50-50__first">
								<div id="logo"><a href="https://www.walkersvillemd.gov/">
									<img typeof="foaf:Image" src="https://www.walkersvillemd.gov/sites/all/themes/custom/sites/walkersvillemd/walkersvillemd_theme/logo.png" alt="Walkersville, MD" /></a></div>
							</div>
							<div class="inner-two-column-50-50__second">
								
							</div>
						</div>
					</div>


				</div>
			</div>
		</header>

		<div id="main">
			<div class="container clearfix">
				<div id="content" role="main" class="region">
					<div class="panel-pane pane-page-content">
						<div id="block-system-main" class="block block-system">
							<div class="content">
							<h1>Past Meetings</h1>
							<%
							string basePath = "~/Meeting Recordings";
        string basedir = Server.MapPath(basePath);
		
		string[] dirs = Directory.GetDirectories(basedir);
		foreach(var dir in dirs){
		var info = new DirectoryInfo(dir);
		if(!info.Name.StartsWith("_")){
		continue;
		}
		%>
		<dt><h4 style="cursor: pointer; text-decoration: underline;">
		<%= info.Name.Replace("_", "") %>
		</h4>
		</dt>
		<dd style="display: none;">
		<%
        string[] files = Directory.GetFiles(dir);
List<Tuple<DateTime, string, string>> displayVals = new List<Tuple<DateTime, string, string>>();
%>
								<%   foreach (string file in files.Reverse()) { 
									string ext = Path.GetExtension(file);
									if(!ext.Equals(".mp4")){
										continue;
									}
									string fileName = Path.GetFileNameWithoutExtension(file);
									
									string urlStr = basePath.Replace("~", "") + "/" + info.Name +"/" + Path.GetFileName(file);
									fileName = fileName.Replace("fixed", "");
									string displayName = fileName;
									var split = fileName.Split(new char[] { ' ' });
									if(split.Length > 0){
										fileName = split[0];
									}
									var pieces = fileName.Split(new char[] {'-'});
									var list = new List<string>();
									list.AddRange(pieces);
									list.Reverse();
									list = list.Take(3).ToList();
									list.Reverse();
									fileName = string.Join("-", list);
									
									DateTime parsed;
									if(DateTime.TryParse(fileName, out parsed))  {
										displayName = displayName.Substring(0, displayName.IndexOf(fileName) + fileName.Length);
										displayName = displayName.Replace(fileName, ": " + parsed.ToLongDateString()).Replace("-", " ");
											displayVals.Add(Tuple.Create(parsed, displayName, urlStr));
									}else {
									displayVals.Add(Tuple.Create(DateTime.MinValue, displayName, urlStr));
									}
									
									}
								%>
                
				<%   foreach (var val in displayVals.OrderByDescending(a=>a.Item1).ThenBy(a=>a.Item2)) { %>
				<p> 
				<a href="<%=val.Item3 %>" class="glightbox">
				<%=   val.Item2 %>
				</a>
				</p>
           <% }   %>
		   </dd>
		    <% }   %>
			
			
			
			
		    <script>
           
            var lightboxVideo = GLightbox({
                selector: '.glightbox'
            });
            lightboxVideo.on('slide_changed', ({ prev, current }) => {
                console.log('Prev slide', prev);
                console.log('Current slide', current);

                const { slideIndex, slideNode, slideConfig, player } = current;

                if (player) {
                    if (!player.ready) {
                        // If player is not ready
                        player.on('ready', (event) => {
                            // Do something when video is ready
                        });
                    }

                    player.on('play', (event) => {
                        console.log('Started play');
                    });

                    player.on('volumechange', (event) => {
                        console.log('Volume change');
                    });

                    player.on('ended', (event) => {
                        console.log('Video ended');
                    });
                }
            });

          
        </script>
		
  
  <script>
  jQuery(document).ready(function() {
	jQuery('dt').click(function() { jQuery(this).next('dd').toggle(); });
  });
  </script>
							</div>
						</div>


					</div>
				</div>

			</div>
		</div>

		

		<footer id="footer" role="contentinfo" class="region">
			<div class="container clearfix">
				<div class="vts-3-col-no-wrap">

					<div class="three-column-no-wrap">
						<div class="three-column-no-wrap__first">
							<p>
								<img alt="Town of Walkersville Maryland" src="https://www.walkersvillemd.gov/sites/g/files/vyhlif7521/f/footernameseal.png" /></p>
						</div>
						<div class="three-column-no-wrap__second">
							<h5>TOWN HALL</h5>
							<p>21 W. Frederick St.<br />
								P.O. Box 249<br />
								Walkersville, MD 21793<br />
								PH: 301-845-4500<br />
								FX: 301-845-2406<br />
								HOURS: M-F 8:30am - 4:30pm</p>
						</div>
						<div class="three-column-no-wrap__third">
							<p><a href="https://www.walkersvillemd.gov/home/pages/website-disclaimer">Website Disclaimer</a><br />
								<a href="https://www.civicplus.com/">Government Websites by CivicPlus&reg;</a></p>
							<ul id="vts-user-menu">
								<li class="first"><a href="/user/login?current=node/1">Login</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</footer>

	</div>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/picture/picturefill2/picturefill.min.js?v=2.3.1"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/picture/picture.min.js?v=7.77"></script>
	<script src="https://www.walkersvillemd.gov/sites/all/modules/contrib/addthis/addthis.js?rdjbn6"></script>
	<script type="text/javascript">window.NREUM || (NREUM = {}); NREUM.info = { "beacon": "bam.nr-data.net", "licenseKey": "NRJS-acd47eab6e866cba245", "applicationID": "784625820", "transactionName": "MVVUZEdVXhUDVRULVggfd1NBXV8ITUYABVw5XVdeVFNVFD1YDgZcOUZfVUJrQAcFUw==", "queueTime": 0, "applicationTime": 513, "atts": "HRJXEg9PTRs=", "errorBeacon": "bam.nr-data.net", "agent": "" }</script>
</body>
</html>
