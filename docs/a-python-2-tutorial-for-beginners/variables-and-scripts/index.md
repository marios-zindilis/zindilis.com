<!-- -
Title: Variables and Scripts
Description: Some notes on Python 2 scripts and variables
- -->

Variables and Scripts
=====================

Well, we can make one-liner programs. So what? You want to send programs to 
other people, so that they can use them, without knowing how to write them.

Editing in Notepad
------------------

Writing programs in Python to a file is *very* easy. Python programs are simply 
text documents -- you can open them up in Notepad (or another text editor), and 
have a look at them, just like that. So, go and open Notepad. Type the 
following:

#### Code Example 1: mary.py

```python
# A simple program.
print("Mary had a little lamb,")
print("its fleece was white as snow;")
print("and everywhere that Mary went"),
print("her lamb was sure to go.")
```

Keep this exactly the same, down to where the commas are placed. Save the file 
as `mary.py` and make sure Notepad doesn't add `.txt` to the end of the 
filename (you will have to tell it to save as any file to avoid this). Turn off 
'Hide known file extensions' in Windows Explorer, if it makes it easier.
<!--
== Using the IDLE environment ==

Now, open up the Python IDLE program (should be in your start menu). Click 'File > Open' and find <tt>mary.py</tt> and open it. If you can't find <tt>mary.py</tt>, set the open dialogue to 'Files of type: All Files (*)'. A new window will open, showing the program you just wrote. To run your program, click 'Run > Run Module' (or just press {{key press|F5}}). Your program will now run in the main Python screen (titled 'Python Shell') and will look like this:

;Code Example 2 – <tt>mary.py</tt> output
<pre>
Mary had a little lamb,
its fleece was white as snow;
and everywhere that Mary went her lamb was sure to go.
</pre>

You can also use IDLE to create Python programs, like what you did in Notepad. Simply click 'File > New'. We will be writing all of our programs now in the Python IDLE program—the Notepad thing is just a demonstration to tell you that a <tt>.py</tt> file is just a simple text file, which anyone can see.

There are a couple of things to notice here:

First of all, the comment wasn't shown. That is good, because remember—comments aren't compiled. (Try compiling it after removing the #—it comes out messy.)

Second, is that the 3rd and 4th line got joined. This is because there is a comma just outside the inverted commas that surround the text. In the <tt>print</tt> command, this stops the program from starting a new line on the screen when showing text. (This might not work with Python 3.0 version onwards.  Check your installed version).

You can also run the program from your command line program (e.g., <tt>cmd</tt>). Open the prompt up, type <code>cd path\to\your\file</code> then type <code>python mary.py</code>. Your program will now execute in the command line.

== Variables ==

Now let's start introducing variables. Variables store a value, that can be looked at or changed at a later time. Let's make a program that uses variables. Open up IDLE and click 'File > New Window'. A new window now appears, and it is easy to type in programs. Type the following (or just copy and paste—just read very carefully, and compare the code to the output that the program will make):

;Code Example 3 – Variables
<source lang="python">
#Variables demonstrated
print ("This program is a demo of variables.")
v = 1
print("The value of v is now", v)
v = v + 1
print("v now equals itself plus one, making it worth", v)
v = 51
print("v can store any numerical value, to be used elsewhere.")
print("For example, in a sentence. v is now worth", v)
print("v times 5 equals", v * 5)
print("But v still only remains", v)
print("To make v five times bigger, you would have to type v = v * 5")
v = v * 5
print("There you go, now v equals", v, "and not", v / 5)
</source>

Note that if you just want to modify a variable's value with respect to itself, there are shortcuts. These are called [[w:augmented assignment|augmented assignment operators]]:

{| width=40% border=1
  |+ Table 1 – Augmented operators
|-
  ! Standard form
  ! Augmented
|-
|v = v + 5
|v += 5
|-
|v = v - 5
|v -= 5
|-
|v = v * 5
|v *= 5
|-
|v = v / 5
|v /= 5
|}

== Strings ==

As you can see, variables store values, for use at a later time. You can change them at any time. You can put in more than numbers, though. Variables can hold things like text. A variable that holds text is called a string. Try this program:

;Code Example 4 – Strings
<source lang="python">
#Giving variables text, and adding text.
word1 = "Good"
word2 = "morning"
word3 = "to you too!"
print(word1, word2)
sentence = word1 + " " + word2 + " " + word3
print(sentence)
</source>

The output will be:

;Code Example 5 – String output
<pre>
Good morning
Good morning to you too!
</pre>

As you see, the variables above were holding text. Variable names can also be longer than one letter—here, we had word1, word2, and word3. As you can also see, strings can be added together to make longer words or sentences. However, spaces aren't added in between the words—hence me putting in the " " things (there is one space between those).

[[Category:A Beginner's Python Tutorial]]
- -->
