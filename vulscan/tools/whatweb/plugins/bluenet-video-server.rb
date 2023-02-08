##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "BlueNet-Video-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-18
  # v0.2 # 2011-01-08 # Updated version detection. 
]
version "0.2"
description "BlueNet Video Server - video camera web interface"

# 2 results for intitle:"BlueNet Video Viewer" @ 2010-07-18
# http://www.hackersforcharity.org/ghdb/?function=detail&id=1813

# Dorks #
dorks [
'intitle:"BlueNet Video Viewer"'
]



# Matches #
matches [

	# Default JavaScript redirect
	{ :text=>"window.location.href='/cgi-bin/client_execute.cgi?tUD=0';" },

	# Version Detection # Default title
	{ :version=>/<title>BlueNet Video Viewer Version ([\d\.a-z]+)<\/title>/ },

]

end

# An aggresive plugin could get the version from /cgi-bin/client_execute.cgi?tUD=0

