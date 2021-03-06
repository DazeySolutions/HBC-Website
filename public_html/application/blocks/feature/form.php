<?php defined('C5_EXECUTE') or die("Access Denied."); ?>

<fieldset>
    <legend><?php echo t('Icon')?></legend>
        <div class="form-group ccm-block-feature-select-icon" style="margin-right: 35px;">
            <?php echo $form->select('icon', $icons, $icon);?>
            <i data-preview="icon" <?php if ($icon) { ?>class="fa fa-<?php echo $icon?>"<?php } ?>></i>
        </div>
</fieldset>

<fieldset>
    <legend><?php echo t('Text')?></legend>

    <div class="form-group">
        <?php echo $form->label('title', t('Title'))?>
        <?php echo $form->text('title', $title); ?>
    </div>

    <div class="form-group">
        <?php echo $form->label('paragraph', t('Paragraph:'));?>
        <?php
            $editor = Core::make('editor');
            echo $editor->outputBlockEditModeEditor('paragraph', $paragraph);
        ?>
    </div>

</fieldset>

<fieldset>
    <legend><?php echo t('Link')?></legend>

    <div class="form-group">
        <select name="linkType" data-select="feature-link-type" class="form-control">
            <option value="0" <?php echo (empty($externalLink) && empty($internalLinkCID) ? 'selected="selected"' : '')?>><?php echo t('None')?></option>
            <option value="1" <?php echo (empty($externalLink) && !empty($internalLinkCID) ? 'selected="selected"' : '')?>><?php echo t('Another Page')?></option>
            <option value="2" <?php echo (!empty($externalLink) ? 'selected="selected"' : '')?>><?php echo t('External URL')?></option>
            <option value="3" <?php echo (!empty($phone) ? 'selected="selected"' : '')?>><?php echo t('Phone')?></option>
            <option value="4" <?php echo (!empty($email) ? 'selected="selected"' : '')?>><?php echo t('Email')?></option>
        </select>
    </div>

    <div data-select-contents="feature-link-type-internal" style="display: none;" class="form-group">
        <?php echo $form->label('internalLinkCID', t('Choose Page:'))?>
        <?php echo Loader::helper('form/page_selector')->selectPage('internalLinkCID', $internalLinkCID); ?>
    </div>

    <div data-select-contents="feature-link-type-external" style="display: none;" class="form-group">
        <?php echo $form->label('externalLink', t('URL'))?>
        <?php echo $form->text('externalLink', $externalLink); ?>
    </div>
    
    <div data-select-contents="feature-link-type-phone" style="display: none;" class="form-group">
        <?php echo $form->label('phoneNumber', t('Phone'))?>
        <?php echo $form->text('phoneNumber', $phoneNumber); ?>
    </div>

    <div data-select-contents="feature-link-type-email" style="display: none;" class="form-group">
        <?php echo $form->label('email', t('Email'))?>
        <?php echo $form->text('email', $email); ?>
    </div>
</fieldset>

<script type="text/javascript">
$(function() {
    $('div.ccm-block-feature-select-icon').on('change', 'select', function() {
        $('i[data-preview="icon"]').removeClass();
        if($(this).val()) {
            $('i[data-preview="icon"]').addClass('fa fa-' + $(this).val());
        }
    });
    $('select[data-select=feature-link-type]').on('change', function() {
       if ($(this).val() == '0') {
           $('div[data-select-contents=feature-link-type-internal]').hide();
           $('div[data-select-contents=feature-link-type-external]').hide();
           $('div[data-select-contents=feature-link-type-phone]').hide();
           $('div[data-select-contents=feature-link-type-email]').hide();
       }
       if ($(this).val() == '1') {
           $('div[data-select-contents=feature-link-type-internal]').show();
           $('div[data-select-contents=feature-link-type-external]').hide();
           $('div[data-select-contents=feature-link-type-phone]').hide();
           $('div[data-select-contents=feature-link-type-email]').hide();
       }
       if ($(this).val() == '2') {
           $('div[data-select-contents=feature-link-type-internal]').hide();
           $('div[data-select-contents=feature-link-type-external]').show();
           $('div[data-select-contents=feature-link-type-phone]').hide();
           $('div[data-select-contents=feature-link-type-email]').hide();
       }
       if ($(this).val() == '3') {
           $('div[data-select-contents=feature-link-type-internal]').hide();
           $('div[data-select-contents=feature-link-type-external]').hide();
           $('div[data-select-contents=feature-link-type-phone]').show();
           $('div[data-select-contents=feature-link-type-email]').hide();
       }
       if ($(this).val() == '4') {
           $('div[data-select-contents=feature-link-type-internal]').hide();
           $('div[data-select-contents=feature-link-type-external]').hide();
           $('div[data-select-contents=feature-link-type-phone]').hide();
           $('div[data-select-contents=feature-link-type-email]').show();
       }
    }).trigger('change');
});
</script>

<style type="text/css">
    div.ccm-block-feature-select-icon {
        position: relative;
    }
    div.ccm-block-feature-select-icon i {
        position: absolute;
        right: -25px;
        top: 10px;
    }
</style>
