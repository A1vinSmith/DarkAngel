##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "VisualRoute"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-02
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Traceroute and network diagnostic tool"
website "http://www.visualroute.com/"

# ShodanHQ results as at 2011-06-02 #
# 24 for VisualRoute

matches [
	
	# HTTP Server Header
	{ :regexp=>/^VisualRoute /, :search=>"headers[server]" },

	# HTTP Server Header # Version Detection
	{ :version=>/^VisualRoute \((tm|R)\) ([^\s]+)$/, :offset=>1, :search=>"headers[server]" },

	# HTTP Server Header # Edition Detection
	{ :string=>/^VisualRoute \((tm|R)\) ([\d]{4} .+ Edition) \(v([^\)]+)\)$/, :offset=>1, :search=>"headers[server]" },

	# HTTP Server Header # Version Detection
	{ :version=>/^VisualRoute \((tm|R)\) ([\d]{4} .+ Edition) \(v([^\)]+)\)$/, :offset=>2, :search=>"headers[server]" },

]

end

