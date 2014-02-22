<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<a href="#" data-toggle="dropdown" class="dropdown-toggle"><?php echo $text_language; ?><b class="caret"></b></a>
    <ul class="dropdown-menu">
    <?php foreach ($languages as $language) { ?>
    <li><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parents('form').submit();" /></li>
    <?php } ?>
    </ul>
    <input type="hidden" name="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
