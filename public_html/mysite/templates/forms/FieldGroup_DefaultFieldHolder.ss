<div class="fieldgroup from-group <% if $Zebra %> fieldgroup-zebra<% end_if %>" <% if ID %>id="$ID"<% end_if %>>
	<% loop $FieldList %>
		<div class="fieldgroup-field $FirstLast $EvenOdd">
			$FieldHolder
		</div>
	<% end_loop %>
</div>
