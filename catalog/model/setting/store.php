<<<<<<< HEAD
<?php
class ModelSettingStore extends Model {
	public function getStores($data = array()) {
		$store_data = $this->cache->get('store');
	
		if (!$store_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "store ORDER BY url");

			$store_data = $query->rows;
		
			$this->cache->set('store', $store_data);
		}

		return $store_data;
	}	
}
=======
<?php
class ModelSettingStore extends Model {
	public function getStores($data = array()) {
		$store_data = $this->cache->get('store');
	
		if (!$store_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "store ORDER BY url");

			$store_data = $query->rows;
		
			$this->cache->set('store', $store_data);
		}

		return $store_data;
	}	
}
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>