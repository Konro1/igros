<<<<<<< HEAD
<?php
class Session {
	public $data = array();
			
	public function __construct() {
		if (!session_id()) {
			ini_set('session.use_cookies', 'On');
			ini_set('session.use_trans_sid', 'Off');
			
			session_set_cookie_params(0, '/');
			session_start();
		}
			
		$this->data =& $_SESSION;
	}
	
	function getId() {
		return session_id();
	}
}
=======
<?php
class Session {
	public $data = array();
			
	public function __construct() {
		if (!session_id()) {
			ini_set('session.use_cookies', 'On');
			ini_set('session.use_trans_sid', 'Off');
			
			session_set_cookie_params(0, '/');
			session_start();
		}
			
		$this->data =& $_SESSION;
	}
	
	function getId() {
		return session_id();
	}
}
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>