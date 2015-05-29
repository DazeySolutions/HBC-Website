<div class="form-group fieldholder-small">
	<% if $Title %><label class="fieldholder-small-label" <% if $ID %>for="$ID"<% end_if %>>$Title</label><% end_if %>
	$Field
	<% if $RightTitle %><p class="help-block right fieldholder-small-label" <% if $ID %>for="$ID"<% end_if %>>$RightTitle</p><% end_if %>
</div>