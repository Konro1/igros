<<<<<<< HEAD
<?php 
class ModelPaymentFreeCheckout extends Model {
	public function getMethod($address, $total) {
		$this->language->load('payment/free_checkout');

		if ($total <= 0) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {  
			$method_data = array( 
				'code'       => 'free_checkout',
				'title'      => $this->language->get('text_title'),
				'sort_order' => $this->config->get('free_checkout_sort_order')
			);
		}

		return $method_data;
	}
}
=======
<?php 
class ModelPaymentFreeCheckout extends Model {
	public function getMethod($address, $total) {
		$this->language->load('payment/free_checkout');

		if ($total <= 0) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {  
			$method_data = array( 
				'code'       => 'free_checkout',
				'title'      => $this->language->get('text_title'),
				'sort_order' => $this->config->get('free_checkout_sort_order')
			);
		}

		return $method_data;
	}
}
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>