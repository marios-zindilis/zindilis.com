<!-- -
Title: Regular expressions in python-markdown2 (part 1)
Description: Study of the regular expressions used in python-markdown2 library
First Published: 2015-11-07
- -->

Regular Expressions in python-markdown2 (part 1)
================================================

This article is a look into one of the regular expressions used in the 
[python-markdown2][python-markdown2] Python module for converting Markdown 
syntax to HTML. It was written for pure fun, and in celebration of its own 
pointlessness.

Standardize line endings
------------------------

This regular expression appears very early in the conversion process:

```python
text = re.sub("\r\n|\r", "\n", text)
```

Its use is fairly obvious, it changes all single carriage returns (`\r`) and 
all carriage returns followed by a newline (`\r\n`) to single newlines (`\n`).
The same effect can be achieved in Python with two `str.replace()` statements 
and in fact that would be much faster. For example:

```python
%timeit 'Apples\r\nOranges\r\nKiwis\rGrapes\r'.replace('\r\n', '\n')
1000000 loops, best of 3: 270 ns per loop

%timeit 'Apples\r\nOranges\r\nKiwis\rGrapes\r'.replace('\r', '\n')
1000000 loops, best of 3: 195 ns per loop

%timeit re.sub(r'\r\n|\r', '\n', 'Apples\r\nOranges\r\nKiwis\rGrapes\r')
100000 loops, best of 3: 2.31 us per loop
```

So the two runs of `str.replace()` add up to 465 nanoseconds, whereas one run 
of `re.sub()` takes 2.31 microseconds, that is 2310 nanoseconds, or about 
**five times slower**. 

The question is: *Does it matter?* Well, my copy of 
*The Hitch Hiker's Guide to the Galaxy* that includes all five books in the 
series, is 776 pages long, and each full page has 42 lines (yes, I counted 
twice, and now I am wondering if it was done on purpose). Following up on the 
previous calculations, if you had to convert that book from Markdown to HTML, 
(about 32592 lines), it would take you a whole 0.02 seconds to do that with 
`re.sub()`, or about 0.004 seconds to do that with `str.replace()`. 
Therefore, the answer to my previous question: *Does it matter?* is 42.

Now the question becomes: *Does it **really** matter?* Well, if you had to 
convert all 30 million paperback books that Amazon has for sale (number found 
through a search on amazon.com), and assuming each book is as healthy in size 
as <abbr title="The Hitch Hicker's Guide To The Galaxy">THHGTTG</abbr>, then it 
would take you a week to do that with `re.sub()`, but only a day and a 
half to do it with `str.replace()`. Thus, for the Python developer out there 
who is pondering on converting 30 million books from Markdown to HTML, the 
answer is: Go with `str.replace()`. For the rest of us it's still 42.

<!-- Links -->
[python-markdown2]: https://github.com/trentm/python-markdown2 "python-markdown2 on Github"

<div id="disqus_thread"></div>
<script>

var disqus_config = function () {
this.page.url = 'https://zindilis.com/blog/2015/11/07/regex-in-python-markdown2-pt1.html'; // Replace PAGE_URL with your page's canonical URL variable
this.page.identifier = '/blog/2015/11/07/regex-in-python-markdown2-pt1.html'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
};

(function() { // DON'T EDIT BELOW THIS LINE
var d = document, s = d.createElement('script');

s.src = '//marios-zindilis.disqus.com/embed.js';

s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
