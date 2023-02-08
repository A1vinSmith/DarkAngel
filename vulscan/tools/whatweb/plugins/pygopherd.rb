##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Pygopherd"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-11-19
]
version "0.1"
description "An open source multi-protocol gopher server written in Python. Also works as an HTTP and WAP server."
website "http://quux.org:70/devel/gopher/pygopherd"

# Google results as at 2011-11-19 #
# 40 for "server top" "view with gopher" "Generated by Pygopherd"

# Dorks #
dorks [
'"server top" "view with gopher" "Generated by Pygopherd"'
]



# Matches #
matches [

# Generated by link
{ :text=>'<BR>Generated by <A HREF="http://www.quux.org/devel/gopher/pygopherd">PyGopherd</A>' },

# Error Page
{ :regexp=>/<HTML><HEAD><TITLE>Selector Not Found<\/TITLE>[\s]+<H1>Selector Not Found<\/H1>/ },

]

end

