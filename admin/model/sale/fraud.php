<<<<<<< HEAD
<?php
class ModelSaleFraud extends Model {
	public function getFraud($order_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_fraud` WHERE order_id = '" . (int)$order_id . "'");
	
		return $query->row;
	}
}
=======
<?php
class ModelSaleFraud extends Model {
	public function getFraud($order_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_fraud` WHERE order_id = '" . (int)$order_id . "'");
	
		return $query->row;
	}
}
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>