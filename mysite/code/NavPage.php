<?php
class NavPage extends Page {
	static $allowed_children = array("RedirectorPage");
	public static $db = array(
		
	);

	public static $has_one = array(
	);
}
class NavPage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		
	}
}