<?php
class ProjectHolder extends Page {

	private static $db = array(

	);

	private static $has_one = array(

	);

	private static $allowed_children = array("ProjectPage");

	public function getCMSFields(){
		$f = parent::getCMSFields();

		return $f;

	}


}
