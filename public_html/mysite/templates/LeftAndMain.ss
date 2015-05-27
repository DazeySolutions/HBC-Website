<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<% base_tag %>
	<% require css('framework/admin/css/responsive.css') %>
	<title>$Title</title>
</head>
<body lang="$Locale.RFC1766" data-frameworkpath="$ModulePath(framework)" data-member-tempid="$CurrentMember.TempIDHash.ATT">
	$Menu
    $Content
	$EditorToolbar
</body>
</html>
