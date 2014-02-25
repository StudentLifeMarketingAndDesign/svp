<?php
class StaffMember extends Page {
	
	public static $db = array(
		'Position' => 'Text',
		'Person' => 'Text',
		'Email' => 'Text'
	);
	public static $has_one = array(
		'LeaderImage' => 'LeaderImage'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		//$fields->removeFieldFromTab("Root.Content.Main","Content");	
		$fields->addFieldToTab("Root.Content.Main", new TextField('Person'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Email'));
		$fields->addFieldToTab("Root.Content.Image", new ImageField('LeaderImage'));
		return $fields;
	}
}
class LeaderImage extends Image {
	function generateLeaderPicture($gd) {
		$gd->setQuality(90);
		//return $gd->paddedResize(100,120);
		return $gd->paddedResize(150,150,"000000");
	}
}

class StaffMember_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}
?>