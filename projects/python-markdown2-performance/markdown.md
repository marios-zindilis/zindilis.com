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
[GitHub repository][python-markdown2]. It is used to test Markdown-to-HTML
conversions, and therefore it is intentionally long.

  [daring-fireball]: https://daringfireball.net/projects/markdown/ 
    "Markdown on Daring Fireball"
  [python-markdown2]: https://github.com/trentm/python-markdown2 
    "python-markdown2 on GitHub"

Contents:

1.  [Introduction](#introduction)
2.  [The Markdown Syntax](#markdown-syntax)
3.  [The Perl Markdown Implementation](#perl-markdown-implementation)
4.  [Other Markdown Implementations](#other-markdown-implementations)
5.  [The Python Markdown2 Library](#python-markdown2-library)

Introduction <a name="introduction"></a>
------------

**Markdown** is two things:

1.  It is a language for marking clear text in such a way that it remains
    easy-to-read and easy-to-write even with the additional markup, and it is 
    readable as plain text as well as easily convertible to (X)HTML. 

    This is where Markdown "wins" over other text marking specifications: a 
    text document formatted with Markdown is publishable as-is, in clear text, 
    without looking as if it was formatted with tags. This is possibly the 
    result of reusing existing plain-text email formatting conventions while 
    forming the Markdown specification, such as some elements of the
    [Setext][setext] markup language, initially released in 1992.

2.  Also, Markdown is the original converter of the syntax to HTML, that was 
    written in Perl by John Gruber. That is also named Markdown, and has since 
    served as the reference implementation.

  [setext]: https://en.wikipedia.org/wiki/Setext "Setext"

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
[source of the Syntax page][md-syntax-src] and the 
[source of the License page][md-license-src]. The Markdown Perl project itself 
is available under a BSD-like open source license.

  [md-syntax-src]: https://daringfireball.net/projects/markdown/syntax.text 
    "Markdown Syntax"
  [md-license-src]: https://daringfireball.net/projects/markdown/license.text 
    "Markdown License"

### Discussion List

There is a public [mailing list for discussion about Markdown][markdown-ml],
on which any topic related to Markdown -- both its formatting syntax and its 
software -- is fair game for discussion.

  [markdown-ml]: http://six.pairlist.net/mailman/listinfo/markdown-discuss 
    "Markdown Mailing List"

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

The Markdown Syntax <a name="markdown-syntax"></a>
-------------------

As mentioned earlier, Markdown was created in a way that plain text files 
remain readable after being formatted in Markdown. The simplicity of the core
features of Markdown is such that one can start working with it after just 
seeing a few examples of it. To assist with your first steps, you can use the 
[Dingus][dingus], an online converter.

  [dingus]: https://daringfireball.net/projects/markdown/dingus 
    "Dingus Online Markdown Coverter"

### Paragraphs

Paragraphs are consecutive lines of text, separated by one or more empty lines.
An empty line is one that does not contain any character in it, or it only
contains spaces and/or tabs. The text in a paragraph should start at the
beginning of the line. For example:

    This is a paragraph in a text. It
    has a few sentences in it, and it 
    doesn't say that much.
    
    This is another paragraph. It is 
    separated by the previous paragraph
    by one empty line.

That example converts to the following HTML syntax:

    <p>This is a paragraph in a text. It
    has a few sentences in it, and it 
    doesn't say that much.<p>
    
    <p>This is another paragraph. It is 
    separated by the previous paragraph
    by one empty line.</p>

### Headings

Markdown borrows the syntax for headings from two previous text markup
specifications: [Setext][setext], already mentioned earlier in this document,
and [atx][atx], proposed by [Aaron Swartz][] in 2002. Setext only provides for
`H1` and `H2` level headings, with the former being underlined with equal signs
(`=`) and the latter being underlined by minus signs (`-`). ATX, on the other
hand, provides syntax for all 6 heading levels available in HTML, by starting
the heading line with 1 to 6 hash characters (`#`). For example:

    Markdown Syntax
    ===============

    This is a paragraph in a text. It
    has a few sentences in it, and it 
    doesn't say that much.

    More Stuff
    ----------
    
    This is another paragraph. It is 
    separated by the previous paragraph
    by one empty line.

    ### Even More Stuff

    Here be more amazing content!

That example converts to the following HTML syntax:

    <h1>Markdown Syntax</h1>

    <p>This is a paragraph in a text. It
    has a few sentences in it, and it 
    doesn't say that much.<p>

    <h2>More Stuff</h2>

    <p>This is another paragraph. It is 
    separated by the previous paragraph
    by one empty line.</p>

    <h3>Even More Stuff</h3>

    <p>Here be more amazing content!</p>

### Quotes

Quotes in Markdown, or Blockquotes as they are named in HTML, are paragraphs of
text that start with the character '`>`', yet another influence of preceding
email formatting conventions. For example:

    Awesome Quotes
    ==============

    Hey, I thought I would share some 
    awesome quotes here.

    Bruce Lee
    ---------

    > A wise man can learn more 
    > from a foolish question 
    > than a fool can learn 
    > from a wise answer.

This converts to:

    <h1>Awesome Quotes</h1>
    
    <p>Hey, I thought I would share some 
    awesome quotes here.</p>

    <h2>Bruce Lee</h2>

    <blockquote>
    <p>A wise man can learn more 
    from a foolish question 
    than a fool can learn 
    from a wise answer.</p>
    </blockquote>

### Emphasis

Markdown provides for emphasis in text with the use of either underscores (`_`)
or asterisks (`*`). Text wrapped in a single underscore or asterisk is
emphasized text, which is typically italicized when drawn in a web browser,
whereas text wrapped in double underscores or asterisks is strongly emphasized,
which is typically drawn as bold text in web browsers. For example:

    _Love_ the life you __live__.
    *Live* the life you **love**.

This becomes in HTML:

    <p><em>Love</em> the life you <strong>live</strong>.
    <em>Live</em> the life you <strong>love</strong>.</p>

### Lists

The Markdown specification includes syntax for unordered and ordered lists. The
former are represented as lines of text that start with either an asterisk 
(`*`) or a plus (`+`) or a minus sign (`-`). The latter, by lines that start
with a number, followed by a period. Other syntax, such as emphasis or
paragraphs can be included in a list item. For example:

    *   Apples
    *   Oranges
    *   Bananas

This becomes an unordered list:

    <ul>
    <li>Apples</li>
    <li>Oranges</li>
    <li>Bananas</li>
    </ul>

Another example:

    1.  On Monday I need to go shopping
        for groceries.

        I also need to take the car to
        get serviced.

    2.  On Tuesday, I will cook for some 
        friends.

This becomes an ordered list, with two paragraphs in the first element:

    <ol>
    <li><p>On Monday I need to go shopping
    for groceries.</p>
    <p>I also need to take the car to
    get serviced.</p></li>
    </li>On Tuesday, I will cook for some 
    friends.</li>
    </ol>

### Links

When you need to create a link in Markdown, you enclose the text that you want
to become a link in square brackets. You then have two ways to define the 
target of the link. 

The first way is to define the target in parentheses immediately after the 
link text. For example:

    [Markdown](https://daringfireball.net/projects/markdown/)

This becomes in HTML:

    <p><a href="https://daringfireball.net/projects/markdown/">Markdown</a></p>

Additionally, you can specify an optional text in the parentheses, which ends 
up as the value of the `title` attribute of the `a` element in HTML, e.g:

    [Markdown](https://daringfireball.net/projects/markdown/ "Markdown Website")

The other way to define links, is to specify a reference ID in brackets, after
the linked text. Those IDs reference link definitions that can be in any place
inside the Markdown document. This allows you to aggregate all your links at 
the bottom of your document, if you want, or pretty much anywhere else. E.g:

    You can learn more about Git 
    at [the Git website][git-website], 
    and in the [Pro Bit book][pro-git]. 
    You can then try it out online at 
    [GitHub][github] or install your 
    own server with [GitLab][gitlab].

    [git-website]: https://git-scm.com/ "Git Website"
    [pro-git]: https://progit.org/ "Pro Git Book"
    [github]: https://github.com/ "GitHub"
    [gitlab]: https://gitlab.com/ "GitLab"

That becomes:

    <p>You can learn more about Git
    at <a title="Git Website" href="https://git-scm.com/">the Git Website</a>,
    and in the <a title="Pro Git Book" href="https://progit.com">Pro Git book</a>.
    You can then try it out online at
    <a title="GitHub" href="https://github.com">GitHub</a> or install your
    own server with <a title="GitLab" href="https://gitlab.com">GitLab</a>.</p>

A common usage of this style is to specify the IDs of the link references as 
numbers. Finally, you can just drop URLs in your Markdown document, and the 
converter will convert the into links if they are surrounded by angle brackets.
This is useful for links to email addresses, for example:

    You can reach me at <name@example.com>.

### Images

Simirarly to links, you either use parentheses immediately after the `alt` text
of the image, or a reference ID that is defined later on in the same document. 
Both ways can have an optional title for the image in quotes. The `alt` text is 
what is displayed in case your picture cannot be found. The following two 
Markdown examples, result in the exact same HTML code:

    ![Picture of a cute cat](https://cats.cat/cute.png "A cute cat")
    ![Picture of a cute cat][cute-cat]

    [cute-cat]: https://cats.cat/cute.png "A cute cat"

Both those examples are converted to:

    <img src="https://cats.cat/cute.png" alt="Picture of a cute cat" title="A cute cat" />

### Code

In Markdown, you can mark code both inline with your text, as well as in 
blocks. In both cases, when Markdown is converted to HTML, some characters that
are not safe in HTML, such as `<`, `>` and `&` are converted to the respective 
HTML entities. Inline code is wrapped in single or double backticks 
(<code>`</code> or <code>``</code>) whereas code blocks are indented by four 
spaces or by one tab. Here is an example that includes both inline, as well as 
block code:

    In HTML5, the `DOCTYPE` definition is much shorter:

        <!DOCTYPE html>

That example converts to:

    <p>In HTML the <code>DOCTYPE</code> definition is much shorter:</p>
    
    <pre><code>&lt;!DOCTYPE HTML&gt;</code></pre>

A use of double backticks, is when you want to have single backticks inside 
your code example.

### Horizontal Rule

You can insert a horizontal line in your document by using three or more minus
sings, or asterisks or underscores in a line. You can also optionally insert 
spaces between them. For example, the following Markdown syntax will generate 
two paragraphs separated by a horizontal line:

    This is the paragraph 
    before the horizontal line.
    
    - - - - - - - - - - - - - -

    This is the paragraph
    after the horizontal line.

### Other Syntax and Extensions/Extras

The above methods of marking paragraphs, headings, quotes, emphasis, lists,
links, images and code, are the extend of the Markdown specification. These 
features make Markdown easy to write and read as plain text, and they are easy 
to learn and adopt. If you want to read a nicely written, complete explanation
of the Markdown syntax, see the [Markdown Syntax Documentation][md-syntax-doc]
at the Markdown website.

  [md-syntax-doc]: https://daringfireball.net/projects/markdown/syntax 
    "Markdown Syntax Documentation"

When published in HTML, those capabilities represent a subset of the 
possibilities available with HTML. If you want to use some HTML features that
are not available when converted from Markdown, there are two things that you
can do.

First, you can just write HTML inside your Markdown document. The Markdown 
converter will then keep the HTML intact during the conversion. For example, 
something that Markdown does not provide is syntax for tables. If you need 
tables in your published documents, you can simply write them in HTML.

A couple of things to keep in mind whene writing HTML in Markdown: block level
elements should be surrounded by at least one empty line, and any Markdown 
syntax inside HTML syntax is not converted.

The other method is to use one of several extensions of the Markdown 
specification, which define a multitude of additional features, such as tables, 
colourful code examples, tables of contents at the beginning of the document,
and others. These extra capabilities are typically called **Extras** or
**Extensions** in the context of the alternative Markdown definitions.

If you intend on using one of those, keep in mind that in many cases, those 
additional features decrease the ability of the Markdown document to be read as 
plain text.

The Perl Markdown Implementation <a name="perl-markdown-implementation"></a>
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

Other Markdown Implementations <a name="other-markdown-implementations"></a>
------------------------------

I will refer extensively to the `python-markdown2` library later on, but before
that, here is an incomplete list of markdown converters:

*   `php-markdown` by [Michel Fortin][]. Gruber calls it a "*splendid port*", 
    and highly recommends it for anyone looking for a PHP implementation of 
    Markdown.

  [Michel Fortin]:		http://www.michelf.com/projects/php-markdown/

*   [Python-Markdown][] is a Python implementation, almost 
    completely compliant with the reference implementation.

  [Python-Markdown]: https://pythonhosted.org/Markdown/ "Python-Markdown"

*   [Python Markdown2][python-markdown2] is another Python implementation, and
    is discussed extensively later on.

The Python Markdown2 Library <a name="python-markdown2-library"></a>
----------------------------

The **[Python Markdown2][python-markdown2]** library is the main focus of this
writing, since this document is part of my project to try to improve that
library's performance.

### Introduction

**[Python Markdown2][python-markdown2]** is a complete Python implementation of 
the Markdown specification. It was written to closely match the behaviour of 
the original Perl-implemented Markdown.pl. Markdown2 also comes with a number 
of extensions (called "extras") for things like syntax coloring, tables, 
header-ids, etc. See the "Extra Syntax" section below. "markdown2" supports all 
Python versions from 2.4 to 3.3 (and pypy and jython, though those aren't
frequently tested). Python Markdown2 was written by [Trent Mick][].

  [Trent Mick]: https://twitter.com/trentmick "Trent Mick on Twitter"

Tests performed at the time that the Python Markdown2 project was started, 
showed that it was faster that the first [Python-Markdown][] library, and more 
correct in its conversion from Markdown syntax to HTML (see the
[Performance Notes][py-md2-performance-notes] and the 
[Testing Notes][py-md2-testing-notes]). At the time that this document is 
written though, those results are being disputed -- more on this later.

  [py-md2-performance-notes]: https://github.com/trentm/python-markdown2/wiki/Performance-Notes
    "Python Markdown2 Performance Notes"
  [py-md2-testing-notes]: https://github.com/trentm/python-markdown2/wiki/Testing-Notes
    "Python Markdown2 Testing Notes"

Python Markdown2 is developed on GitHub, and the developers welcome Pull 
Requests from the community. If you are looking for something to work on, take
a look at the 
[TODO](https://github.com/trentm/python-markdown2/blob/master/TODO.txt), and
make sure your patch fulfills the following requirements:

* It must pass PEP8.
* It must include relevant test coverage.
* Bug fixes must include a regression test that exercises the bug.
* The entire test suite must pass.
* The README and/or docs are updated accordingly.

### Install Python Markdown2

You can install Python Markdown2 on your system, by running *one* of the 
following:

    pip install markdown2
    pypm install markdown2      # if you use ActivePython (activestate.com/activepython)
    easy_install markdown2      # if this is the best you have
    python setup.py install     # if you downloaded the source code

However, if you download the source code from GitHub, everything you need to 
use the library is in "lib/markdown2.py". If it is easier for you, you can just 
copy that file to somewhere on your PythonPath (to use as a module) or 
executable path (to use as a script).

### Quick Usage

As a module:

    >>> import markdown2
    >>> markdown2.markdown("*boo!*")  # or use `html = markdown_path(PATH)`
    u'<p><em>boo!</em></p>\n'

    >>> from markdown2 import Markdown
    >>> markdowner = Markdown()
    >>> markdowner.convert("*boo!*")
    u'<p><em>boo!</em></p>\n'
    >>> markdowner.convert("**boom!**")
    u'<p><strong>boom!</strong></p>\n'

As a script (CLI):

    $ python markdown2.py foo.md > foo.html

I think pip-based installation will enable this as well:

    $ markdown2 foo.md > foo.html

For more details, see the 
[project wiki](https://github.com/trentm/python-markdown2/wiki),
the docstrings in 
[lib/markdown2.py](https://github.com/trentm/python-markdown2/blob/master/lib/markdown2.py)
and the output of `python markdown2.py --help`.

### Extra Syntax (aka extensions)

Many Markdown processors include support for additional optional syntax
(often called "extensions") and markdown2 is no exception. With markdown2 these
are called "extras".  Using the "footnotes" extra as an example, here is how
you use an extra ... as a module:

    $ python markdown2.py --extras footnotes foo.md > foo.html

as a script:

    >>> import markdown2
    >>> markdown2.markdown("*boo!*", extras=["footnotes"])
    u'<p><em>boo!</em></p>\n'

There are a number of currently implemented extras for tables, footnotes,
syntax coloring of `<pre>`-blocks, auto-linking patterns, table of contents,
Smarty Pants (for fancy quotes, dashes, etc.) and more. Python Markdown2 
extras are discussed later in this article.

### Running the Test Suite

The Python Markdown2 implementation passes a fairly extensive test suite. 
To run it:

    make test

The crux of the test suite is a number of "cases" directories -- each with a
set of matching `.text` (input) and `.html` (expected output) files. These are:

    tm-cases/                   Tests authored for python-markdown2 (tm=="Trent Mick")
    markdowntest-cases/         Tests from the 3rd-party MarkdownTest package
    php-markdown-cases/         Tests from the 3rd-party MDTest package
    php-markdown-extra-cases/   Tests also from MDTest package

Testing is discussed further on in this article.

### Extras ###

By default, the Python Markdown2 library tries to produce the exact same HTML
output that the Perl reference implementation does. It does however include a
set of **extras**, additional features that extend the library's functionality.

#### Extra: Code Friedly ####

The `code-friendly` extra disables the use of leading, trailing and --most 
importantly-- **intra-word** emphasis and strong using underscores. These can 
easily get in the way when writing documents about source code that uses 
[snake_case](https://en.wikipedia.org/wiki/Snake_case) for programming language 
keywords, such as `variables_like_this` or (common in Python) like the 
following: `_my_internal_var`, `__version__`, `__init__`, `__repr__`, etc.

##### Command-Line Usage

    $ cat foo.txt
    use 'self.this_long_attr' for the *real* mccoy
    $ markdown2 -x code-friendly foo.txt
    <p>use 'self.this_long_attr' for the <em>real</em> mccoy</p>

##### Module Usage

    >>> markdown2.markdown("use 'self.this_long_attr' for the *real* mccoy")
    "<p>use 'self.this<em>long</em>attr' for the <em>real</em> mccoy</p>\n"
    >>> markdown2.markdown("use 'self.this_long_attr' for the *real* mccoy",
    ...                    extras=["code-friendly"])
    "<p>use 'self.this_long_attr' for the <em>real</em> mccoy</p>\n"

##### Discussion

It is quite common for other Markdown implementations to disable intra-word 
emphasis either by default or with an extra. Examples are StackOverflow, Github 
Flavored Markdown and the PHP Markdown Extra -- though their details differ 
slightly. Some quick details about the behaviour of Python Markdown2 on this 
matter are included in [issue 38](https://github.com/trentm/python-markdown2/issues#issue/38). 
At the time of this writing, `python-markdown2` doesn't have a facility that 
disables **just** intra-word emphasis like some of the above. 

#### Extra: `cuddled-lists`

The `cuddled-lists` extra allows a list to be cuddled to a preceding paragraph.
By default, a blank line is necessary between a leading paragraph and a 
bulleted list. For example, with this extra, this text:

    I did these things:
    * bullet1
    * bullet2
    * bullet3

becomes this:

    <p>I did these things:</p>
    
    <ul>
    <li>bullet1</li>
    <li>bullet2</li>
    <li>bullet3</li>
    </ul>

instead of the normal:

    <p>I did these things:
    * bullet1
    * bullet2
    * bullet3</p>

##### Command-Line Usage

    $ python markdown2.py -x cuddled-lists FOO.txt

##### Module Usage

    >>> markdown2.markdown(text, extras=["cuddled-lists"])

#### Extra: `fenced-code-blocks`

The `fenced-code-blocks` extra allows a code block to not have to be indented 
by fencing it with '```' on a line before and after. Based on 
[GFM](<http://github.github.com/github-flavored-markdown/).

This code:

>     ```
>     print "hi"
>     ```

becomes: 

```
print "hi"
```

It includes support for code syntax highlighting as per GFM. You must have
the [pygments](http://pygments.org/) Python module installed for this to work.
 
>     ```python
>     if True:
>         print "hi"
>     ```

```python
if True:
    print "hi"
```

The `fenced-code-blocks` extra obsoletes the previous `code-color` extra, which
used three colons to specify the language (e.g. `:::PYTHON`). It was changed to 
three backticks, to match GFM.

To really show colors you need to add one of pygment css files, see 
<https://github.com/richleland/pygments-css>.




<!--
TODO: 

1.  Extras
2.  Testing
3.  Performance

Merge here wiki pages:
    footnotes
    link patterns
    markdown in html
    metadata
    nofollow
    Performance Notes
    pyshell
    tables
    Testing Notes
    use file vars
    wiki tables

Other:

*   I don't understand how code-friendly works.
-->
