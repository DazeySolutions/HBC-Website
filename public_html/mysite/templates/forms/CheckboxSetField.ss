<div id="$ID" class="$extraClass">
	<% if $Options.Count %>
		<% loop $Options %>
			<label class="checkbox-inline">
				<input id="$ID" class="checkbox" name="$Name" type="checkbox" value="$Value"<% if $isChecked %> checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> /> $Title
			</label> 
		<% end_loop %>
	<% else %>
		<label>No options available</label>
	<% end_if %>
</div>
