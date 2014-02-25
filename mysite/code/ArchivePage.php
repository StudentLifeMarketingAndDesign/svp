<?php
class ArchivePage extends Page {

	public static $db = array(
		'Year' => 'Text'
	);

	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab("Root.Content.Main", new TextField('Year'));
		return $fields;
	}
	
	function Episodes() {//<= CURDATE()
		$year = mysql_real_escape_string($this->Year);
		$episodes = DataObject::get("EpisodePage", "Airdate BETWEEN '" . $year . "-01-01' AND '" . $year . "-12-31'", "Airdate ASC", "");
		return $episodes;
	}
	
}
class ArchivePage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		
	}
}