##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "The-Amazing-Little-Poll"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-06-04
  "Andrew Horton", # v0.2 # 2019-07-10 # Added website field.
]
version "0.2"
description "The Amazing Little Poll is a very simple php polling script."
website "http://www.mr-corner.com/LittlePoll/index.html"

# ShodanHQ results as at 2012-06-04 #
# 35 for pollidcookie votingstep

# Google results as at 2012-06-04 #
# 11 for intitle:"Little Poll Admin Center" "The Amazing Little Poll Admin Center"

# Dorks #
dorks [
'intitle:"Little Poll Admin Center" "The Amazing Little Poll Admin Center"'
]

# Matches #
matches [

# ./lp_admin.php # Admin Page # h1 Heading # Version Detection
{ :version=>/<h1>The Amazing Little Poll Admin Center v([^<]+)<\/h1>/ },

# ./lp_admin.php # Admin Page # Form
{ :text=>'<form action="lp_admin.php" method="post" name="form0">Admin Password:<input type="hidden" name="adminstep" value="1"><input type="Password" name="pwd" size="20"><br><input type="Submit" value="OK"></form>' },

# ./lp_settings.inc # Password Detection
{ :url=>"lp_settings.inc", :string=>/\/\/ Change this password so no one else can access the lp_admin\.php via the web\s+\$pwd="([^"]+)";/ },

# Set-Cookie # pollidcookie
{ :search=>"headers[set-cookie]", :regexp=>/pollidcookie=/ },

]

end

