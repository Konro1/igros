<div class="featured col-md-9">
  <div class="box-heading well well-sm">
    <h4><?php echo $heading_title; ?></h4>  
  </div>
  <div class="box-content">
    <?php foreach ($products as $product) { ?>
    <div class="col-md-4 featured-grid">
      <?php if ($product['thumb']) { ?>
      <div class="image">
        <a href="<?php echo $product['href']; ?>">
          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
        </a>
      </div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
      <div class="cart">
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button-cart">
        <i class="glyphicon glyphicon-plus"></i>&nbsp;<span onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span>
        </a>
        <a href="<?php echo $product['href']; ?>" class="button-view"> Переглянути </a>
      </div>
    </div>
    <?php } ?>
  </div>
</div>
