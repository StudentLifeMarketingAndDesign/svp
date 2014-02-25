<?php
class ShowHolder extends Page {
	static $allowed_children = array("EpisodelistPage","ShowPage");
	public static $db = array(
	);
	public static $has_one = array(
	);
}
class ShowHolder_Controller extends Page_Controller {
	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}