<div id="$Name" class="field form-group">
	<% if $Title %><label class="left" for="$ID">$Title</label><% end_if %>
	<div class="middleColumn">
		$Field
	</div>
	<% if $RightTitle %><p class="help-block" for="$ID">$RightTitle</p><% end_if %>
	<% if $Message %><p class="help-block message $MessageType">$Message</p><% end_if %>
	<% if $Description %><p class="help-blockdescription">$Description</p><% end_if %>
</div>
