<<<<<<< HEAD
<?php
class Template {
	public $data = array();

	public function fetch($filename) {
		$file = DIR_TEMPLATE . $filename;

		if (file_exists($file)) {
			extract($this->data);

			ob_start();

			include($file);

			$content = ob_get_clean();

			return $content;
		} else {
			trigger_error('Error: Could not load template ' . $file . '!');
			exit();				
		}
	}
}
=======
<?php
class Template {
	public $data = array();

	public function fetch($filename) {
		$file = DIR_TEMPLATE . $filename;

		if (file_exists($file)) {
			extract($this->data);

			ob_start();

			include($file);

			$content = ob_get_clean();

			return $content;
		} else {
			trigger_error('Error: Could not load template ' . $file . '!');
			exit();				
		}
	}
}
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>