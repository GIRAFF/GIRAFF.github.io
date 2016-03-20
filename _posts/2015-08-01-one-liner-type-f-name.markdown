---
layout: post
title: Массовое конвертирование *.ape в *.flac
date: '2015-08-01T09:52:00.003-07:00'
author: Yngvarr
tags:
- lossless
- linux
- one-liner
- flac
---

One-liner дня:

{% highlight bash %}
find -type f -name "*.ape" -print0 -exec ffmpeg {}.flac -i {} \; && rename "s/.ape.flac/.flac/g" *
{% endhighlight %}

Конвертирует все ape-файлы из текущей директории во FLAC при помощи ffmpeg.

Спасибо [этому парню](http://tt.erinome.net/2013/03/468) за статью про перебор файлов.