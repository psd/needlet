#!/bin/sh

bookmarklet="$1"

cat <<-!
<html>
<head><title>Needlet</title></head>
<body>
<h1>Needlet</h1>
<p>Take me to the need on Maslow for a page on GOV.UK:
!

echo "<p>Drag the <a href='"$(cat $bookmarklet)"'>needlet</a> bookmarklet to your bookmarks bar</p>"

cat <<-!
<p><a id="github" href="https://github.com/psd/needlet">Fork me on github</a>!</p>
<p>Made by <a href="http://whatfettle.com">psd</a> and <a href="https://github.com/bishboria">bishboria</a> for <a href="http://www.gov.uk">GOV.UK</a>.</p>
</body>
</html>
!
