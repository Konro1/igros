<?php echo $header; ?>
<div id="content">
  <?php echo $column_left; ?>
  <div class="col-md-3 pull-right">
    <?php echo $column_right; ?>
  </div>
  <div class="col-md-9">
    <?php echo $content_top; ?>
    <div class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
    </div>
    <div class="well well-sm"><h1><?php echo $heading_title; ?></h1></div>
    <?php if ($thumb || $description) { ?>
    <div class="category-info">
      <?php if ($thumb) { ?>
      <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
      <?php } ?>
      <?php if ($description) { ?>
      <?php echo $description; ?>
      <?php } ?>
    </div>
    <?php } ?>
    <?php if ($categories) { ?>
    <h2><?php echo $text_refine; ?></h2>
    <div class="category-list">
      <?php if (count($categories) <= 5) { ?>
      <?php foreach ($categories as $category) { ?>
      <div class="col-md-2">
        <?php if ($category['image']): ?>
          <img src="<?php echo $category['image'] ?>" alt="">
        <?php endif ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      </div>
      <?php } ?>
      <?php } else { ?>
      <?php for ($i = 0; $i < count($categories);) { ?>
      <ul>
        <?php $j = $i + ceil(count($categories) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($categories[$i])) { ?>
        <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <?php } ?>
    </div>
    <?php } ?>
    <?php if ($products) { ?>
    <div class="product-filter">
      <div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
      <div class="limit form-inline">
        <label for=""><b><?php echo $text_limit; ?></b></label>
        <select onchange="location = this.value;" class="form-control">
          <?php foreach ($limits as $limits) { ?>
          <?php if ($limits['value'] == $limit) { ?>
          <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="sort form-inline">
        <label for=""><b><?php echo $text_sort; ?></b></label>
        <select onchange="location = this.value;" class="form-control">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
    </div>
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="product-list">
      <?php foreach ($products as $product) { ?>
      <div class="col-md-3">
        <?php if ($product['thumb']) { ?>
        <div class="image">
          <a href="<?php echo $product['href']; ?>">
            <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"/>
          </a>
        </div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="description"><?php echo $product['description']; ?></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <br />
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
        <div class="cart">
          <a class="button-cart pull-left" href="javascript:void(0)" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class="glyphicon glyphicon-plus"></i><span onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span></a>
          <a class="button-view wishlist pull-right" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
        </div>
      </div>
      <?php } ?>
    </div>
    <div class="pagination"><?php echo $pagination; ?></div>
    <?php } ?>
    <?php if (!$categories && !$products) { ?>
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?></div>
    <script type="text/javascript"><!--
      function display(view) {
       if (view == 'list') {
        $('.product-grid').attr('class', 'product-list');
        
        $('.product-list > div').each(function(index, element) {
         html  = '<div class="right">';
         html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
         var cart_html = '<a class="button-cart pull-left" href="javascript:void(0)" onclick="addToCart(\'<?php echo $product['product_id']; ?>\');"><i class="glyphicon glyphicon-plus"></i><span onclick="addToCart(\'<?php echo $product['product_id']; ?>\');"><?php echo $button_cart; ?></span></a><a class="button-view wishlist pull-right" onclick="addToWishList(\'<?php echo $product['product_id']; ?>\');"><?php echo $button_wishlist; ?></a>';
         html += '  <div class="cart">' + cart_html + '</div>';
         html += '</div>';			
         
         html += '<div class="left">';
         
         var image = $(element).find('.image').html();
         
         if (image != null) { 
          html += '<div class="image">' + image + '</div>';
        }
        
        var price = $(element).find('.price').html();
        
        if (price != null) {
          html += '<div class="price">' + price  + '</div>';
        }
        
        html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
        html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
        
        var rating = $(element).find('.rating').html();
        
        if (rating != null) {
          html += '<div class="rating">' + rating + '</div>';
        }
        
        html += '</div>';
        $(element).removeClass('col-md-3').addClass('col-md-12');
        $(element).html(html);
      });		

$('.display').html('<span class="glyphicon glyphicon-align-justify"></span> <a onclick="display(\'grid\');" class="glyphicon glyphicon-th"></a>');

$.totalStorage('display', 'list'); 
} else {
  $('.product-list').attr('class', 'product-grid');
  
  $('.product-grid > div').each(function(index, element) {
   html = '';
   
   var image = $(element).find('.image').html();
   
   if (image != null) {
    html += '<div class="image">' + image + '</div>';
  }
  
  html += '<div class="name">' + $(element).find('.name').html() + '</div>';
  html += '<div class="description">' + $(element).find('.description').html() + '</div>';
  
  var price = $(element).find('.price').html();
  
  if (price != null) {
    html += '<div class="price">' + price  + '</div>';
  }
  
  var rating = $(element).find('.rating').html();
  
  if (rating != null) {
    html += '<div class="rating">' + rating + '</div>';
  }
  var cart_html = '<a class="button-cart pull-left" href="javascript:void(0)" onclick="addToCart(\'<?php echo $product['product_id']; ?>\');"><i class="glyphicon glyphicon-plus"></i><span onclick="addToCart(\'<?php echo $product['product_id']; ?>\');"><?php echo $button_cart; ?></span></a><a class="button-view wishlist pull-right" onclick="addToWishList(\'<?php echo $product['product_id']; ?>\');"><?php echo $button_wishlist; ?></a>';
          
  html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
  html += '<div class="cart">' + cart_html + '</div>';
  
  $(element).removeClass('col-md-12').addClass('col-md-3');
  $(element).html(html);
});	
  
  $('.display').html('<a onclick="display(\'list\');" class="glyphicon glyphicon-align-justify"></a> <span class="glyphicon glyphicon-th"></span>');
  
  $.totalStorage('display', 'grid');
}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
</div>
<?php echo $footer; ?>