<?php

class StaffPage extends Page {
	
	public static $db = array(
	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}
 
class StaffPage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
}
?>