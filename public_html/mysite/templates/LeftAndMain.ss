<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="/mysite/js/jquery1113.js"></script>
    <script type="text/javascript">
    	var jQuery19 = $.noConflict(true);
    </script>
    <script type="text/javascript" src="/mysite/js/bootstrap.js"></script>
	<% base_tag %>
	<% require css('mysite/css/responsive.css') %>
	<title>$Title</title>
</head>
<body lang="$Locale.RFC1766" data-frameworkpath="$ModulePath(framework)" data-member-tempid="$CurrentMember.TempIDHash.ATT" class="cms">
	<div class="cms-container">
		$Menu
    	$Content
		$EditorToolbar
	</div>
</body>
</html>
