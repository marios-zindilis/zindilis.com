<!-- -
Title: Markdown
Description: Notes and documentation on the markdown syntax and its converters
First Published: 2015-12-04
- -->

Markdown
========

This page is based on some of the documentation of Markdown from its 
[original website][daring-fireball], and mirrors some of the contents of the 
`python-markdown2` library's documentation from its 
[GitHub repository][python-markdown2]. It is intentionally long and 
syntax-rich, because I use it to test Markdown-to-HTML conversions.

  [daring-fireball]: https://daringfireball.net/projects/markdown/ "Markdown on Daring Fireball"
  [python-markdown2]: https://github.com/trentm/python-markdown2 "python-markdown2 on GitHub"

Introduction
------------

**Markdown** is two things:

1.  It is a language for marking clear text in such a way that it remains
    easy-to-read and easy-to-write even with the additional markup, and it is 
    readable as plain text as well as easily convertible to (X)HTML. 

    This is where Markdown "wins" over other text marking specifications: a 
    text document formatted with Markdown is publishable as-is, in clear text, 
    without looking as if it was formatted with tags. This is possibly the 
    result of using existing plain-text email formatting conventions while 
    forming the Markdown specification.

2.  Also, it is the original converter of Markdown to HTML, that was written in 
    Perl by John Gruber. IT is also named Markdown, and has since served as 
    the reference implementation.

Since the release of the original tool back in 2004, a multitude of conversion 
tools and libraries have been written in many programming languages, some of 
which are listed later in this article.

The Markdown syntax is simple and straightforward to understand and use. The 
best way to get a feel for Markdown's formatting syntax is simply to look 
at a Markdown-formatted document. For example, you can view the Markdown source 
for the text of this very page:
<https://github.com/marios-zindilis/zindilis.com/projects/python-markdown2-performance/markdown.md>.
Furthermore, the source of all of the pages on the website of the 
[original Perl implementation][daring-fireball] can be viewed by appending the 
suffix `.text` to their URL. For example, see the 
[source of the Syntax page][daring-fireball-syntax] and the 
[source of the License page][daring-fireball-license]. The Markdown Perl 
project itself is available under a BSD-like open source license.

  [daring-fireball-syntax]: https://daringfireball.net/projects/markdown/syntax.text "Markdown Syntax"
  [daring-fireball-license]: https://daringfireball.net/projects/markdown/license.text "Markdown License"

### Discussion List

There is a public [mailing list for discussion about Markdown][markdown-ml],
on which any topic related to Markdown -- both its formatting syntax and its 
software -- is fair game for discussion.

  [markdown-ml]: http://six.pairlist.net/mailman/listinfo/markdown-discuss "Markdown Mailing List"

### Acknowledgements ###

John Gruber, the publisher of Markdown and of Markdown.pl, acknowledges the 
work of the late [Aaron Swartz][]:

> [Aaron Swartz][] deserves a tremendous amount of credit for his feedback on 
> the design of Markdown's formatting syntax. Markdown is *much* better thanks
> to Aaron's ideas, feedback, and testing. Also, Aaron's [html2text][] is a 
> very handy (and free) utility for turning HTML into Markdown-formatted plain 
> text.

Also, Gruber thanks [Nathaniel Irons][], [Dan Benjamin][], [Daniel Bogan][], 
and [Jason Perkins][] for their feedback.

  [Aaron Swartz]:		http://www.aaronsw.com/
  [Nathaniel Irons]:	http://bumppo.net/
  [Dan Benjamin]:		http://hivelogic.com/
  [Daniel Bogan]:		http://waferbaby.com/
  [Jason Perkins]:		http://pressedpants.com/
  [html2text]:          http://www.aaronsw.com/2002/html2text/

The Perl Markdown Implementation
--------------------------------

At the time of the first writing of this page (December 2015), the latest 
version of the Perl module is [Markdown 1.0.1][perl-mod-download] (18 KB) -- 
from December 17, 2004.

  [perl-mod-download]: http://daringfireball.net/projects/downloads/Markdown_1.0.1.zip

### Installation and Requirements ###

The Perl Markdown implementation requires Perl 5.6.0 or later, as well as the 
standard Perl library module [Digest::MD5][perl-digest-md5], which is probably 
already installed on your system.

  [perl-digest-md5]: http://search.cpan.org/dist/Digest-MD5/MD5.pm "Perl Digest::MD5 Module"

#### Support for Blogging Engines ####

The Perl Markdown converter works with [Movable Type][movable-type] version 2.6 
or later (including Movable Type 3.0), and you can find step by step
installation instuctions at the Markdown website. It also works well on Movable
Type in combination with SmartyPants 1.5 (or later) See the 
[SmartyPants web page][smartypants] for more information.

  [smartypants]: http://daringfireball.net/projects/smartypants/ "SmartyPants"

The module also works with [Blosxom][blosxom] version 2.0 or later, for writing
all posts in Markdown, or combined with Blosxom's [Meta][blosxom-meta] plug-in
for applying Markdown only to certain posts.

  [blosxom]: http://blosxom.sourceforge.net/ "Blosxom"
  [blosxom-meta]: http://blosxom.sourceforge.net/plugins/meta/meta.htm "Blosxom Meta"

Finally, the Markdown module also with some versions of BBEdit. See the 
Markdown website for more information.

### Command-Line Usage ###

Markdown.pl includes POD documentation which you can read with:

    perldoc Markdown.pl

For example, you can use the `--html4tags` command-line switch to produce HTML 
as opposed to the default XHTML output from a Unix-style command line. E.g.:

    % perl Markdown.pl --html4tags foo.text

Other Implementations
---------------------

I will refer extensively to the `python-markdown2` library later on, but before
that, here is an incomplete list of markdown converters:

*   `php-markdown` by [Michel Fortin][]. Gruber calls it a "*splendid port*", 
    and highly recommendeds it for anyone looking for a PHP implementation of 
    Markdown.

  [Michel Fortin]:		http://www.michelf.com/projects/php-markdown/

