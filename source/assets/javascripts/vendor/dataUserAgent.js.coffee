###doc
---
title: User Agent Data Attributes
name: dataUserAgent
category: Javascripts - Page Data
---
On page load, two data-attributes are added to the `body` tag: `data-useragent`
and `data-platform`. These contain the user agent and platform strings as
declared by the browser.

See [http://rog.ie/blog/html5-boilerplate-addon](http://rog.ie/blog/html5-boilerplate-addon).

<h3>Standard Selector Examples</h3>

Target            | Selector
------------------|----------------------
All Opera         |`[data-useragent*='Opera']`
All Firefox       |`[data-useragent*='Firefox']`
All Safari        |`[data-useragent*='Safari']`
All Chrome        |`[data-useragent*='Chrome']`
IE10 & 11         |`[data-useragent*='Trident']`
IE10 Specifically |`[data-useragent*='MSIE 10']`
Webkit            |`[data-useragent*='WebKit']`
iPhone            |`[data-platform*='iPhone']`
iPad              |`[data-platform*='iPad']`
iPod              |`[data-platform*='iPod']`
Android           |`[data-platform*='Android']`
Windows           |`[data-platform*='Windows']`
Mac OS X          |`[data-platform*='MacIntel']`
Touch *           |`.touch`

<h3>Example Usage</h3>

```
.cssSelector {
  ... styles ...

  [data-useragent*='Opera'] & {
    ... targeted styles here ...
  }
}
```

*=Note that touch tests are unreliable in determining whether a device is a
handheld or not, and should not be relied on for use with handheld styling. Many
laptops have touch capabilities, and more are being released all the time.
###

doc = document.documentElement
doc.setAttribute "data-useragent", navigator.userAgent
doc.setAttribute "data-platform", navigator.platform
doc.className += ((if (!!("ontouchstart" of window) or !!("onmsgesturechange" of window)) then " touch" else ""))
true
