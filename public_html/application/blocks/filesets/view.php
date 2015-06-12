<?php  defined('C5_EXECUTE') or die("Access Denied.");?>
<div id="tree"></div>
<script>
$.getScript("<?php echo $view->getThemePath() ?>/assets/js/bootstrap-treeview.min.js", function(){
	var tree = [
	<?php foreach($docs as $key=>$doc){?>
		{
			"text": "<?php echo $key ?>",
			<?php if(is_array($doc)) {?>
			"nodes": [
				<?php foreach($doc as $sub_key=>$doc_2){?>	
					"text": "<?php echo $sub_key ?>",
					<?php if(is_array($doc_2)) {?>
					"nodes": [
						<?php foreach($doc_2 as $sub_sub_key=>$doc_3){?>	
						{
							"text": "<?php echo $sub_sub_key ?>",
							"href": "<?php echo $doc_3 ?>""
						},
						<?php } ?>		
					]
					<?php } else {?>
					"href": "<?php echo $doc_2?>"
					<?php } ?>
				<?php } ?>	
			]
			<?php } else {?>
			"href": "<?php echo $doc?>"
			<?php } ?>	
		},
	<?php } ?>
	];
	$("#tree").treeview({data: tree});
});
</script>