<?php
class HomeFeature extends Page {
	
	public static $db = array(
		'NewURL' => 'Text',
		'ImgURL' => 'Text'
	);
	public static $has_one = array(
		'FeatureImage' => 'FeatureImage'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");	
		$fields->addFieldToTab("Root.Content.Main", new TextField('NewURL'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('ImgURL'));
		$fields->addFieldToTab("Root.Content.Image", new ImageField('FeatureImage','Featured Image (565x290) - see styleguide for details'));
		return $fields;
	}
}
class FeatureImage extends Image {
	function generateFeaturePicture($gd) {
		$gd->setQuality(90);
		return $gd->paddedResize(565,290,"000000");
	}
}

class HomeFeature_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}
?>