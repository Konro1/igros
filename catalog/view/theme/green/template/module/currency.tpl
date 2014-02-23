<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
   <a href="#" data-toggle="dropdown" class="dropdown-toggle"><?php echo $text_currency; ?> <b class="caret"></b></a>
   <ul class="dropdown-menu">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li>
        <a role="menuitem" tabindex="-1" title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
    </li>
    <?php } else { ?>
    <li>
        <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
    </li>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <li>
        <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parents('form').submit();"><?php echo $currency['symbol_left']; ?></a>
    </li>
    <?php } else { ?>
    <li>
        <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parents('form').submit();"><?php echo $currency['symbol_right']; ?></a>
    </li>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</ul>
</form>
<?php } ?>
