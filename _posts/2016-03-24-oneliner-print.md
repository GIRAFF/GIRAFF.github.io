---
layout: post
title: Печать брошюр
author: Yngvarr
tags:
- linux
- one-liner
- print
---

Сегодняшняя команда дня переводит файл book.ps в удобную для печати брошюр.

{% highlight bash %}
psbook book.ps | psnup -l -2 > result.ps
{% endhighlight %}

Теперь файл result.ps можно спокойно распечатать в таком порядке:

* Печатать чётные;
* Сложить листы в обратном порядке;
* Печатать нечётные;
* ???????
* PROFIT!!!!!
