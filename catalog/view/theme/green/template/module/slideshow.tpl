<link rel="stylesheet" type="text/css" href="catalog/view/vendor/wow_slider/engine1/style.css" />
  <div id="wowslider-container1">
  <div class="ws_images">
    <ul>
      <?php foreach ($banners as $banner) { ?>
      <?php if ($banner['link']) { ?>
      <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
      <?php } else { ?>
      <li><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
</div>
<script src="catalog/view/vendor/wow_slider/engine1/wowslider.js"></script>
<script src="catalog/view/vendor/wow_slider/engine1/script.js"></script>
<script>
  $(".ws_images div:last").hide();
</script>