<!-- -
Title: ISO Date Format in Apache Logs
Description: How to format the date in Apache logs
First Published: 2014-05-16
- -->

How to format the date in Apache logs
=====================================

Apache's `mod_log_config` module (installed by default on CentOS 6) allows for 
the `CustomLog` directive, which in turn takes a log format specification. The 
default log format string is usually:

    LogFormat "%h %l %u %t \"%r\" %>s %b" common

In the above line, `common` is the name of the log format, which is later 
references in a `CustomLog` directive, for example:

    CustomLog logs/example.com-access_log common

The meaning of the `%` fields is specified at [the Apache documentation for 
`mod_log_config`](http://httpd.apache.org/docs/2.2/mod/mod_log_config.html). 
What is interesting is that the `%t` parameter can take an optional date 
formatting string, in the form `%{date format}t`. The `date format` part 
should be `strftime(3)`-compatible.

For example, the following date format will produce timestamps like 
`2014-05-16 13:45:32`:

    LogFormat "%h %l %u %{%Y-%m-%d %H:%M:%S}t \"%r\" %>s %b" example

You will then need to reference the `example` name of this log format 
specification as:

    CustomLog logs/example.com-access_log example.

The `%` fields of `strftime` are listed in the [man page for `strftime`](/docs/man/library-calls/strftime.html)


