<<<<<<< HEAD
<?php       
class ControllerCommonLogout extends Controller {   
	public function index() { 
		$this->user->logout();

		unset($this->session->data['token']);

		$this->redirect($this->url->link('common/login', '', 'SSL'));
	}
}  
=======
<?php       
class ControllerCommonLogout extends Controller {   
	public function index() { 
		$this->user->logout();

		unset($this->session->data['token']);

		$this->redirect($this->url->link('common/login', '', 'SSL'));
	}
}  
>>>>>>> 7638022f044301e632a2ad52a22d03e919dbc2c0
?>