<?php
class EpisodelistPage extends Page {
	static $allowed_children = array("EpisodePage");
	public static $db = array(
	);

	public static $has_one = array(
	);
	function ShowTitle() {
		$Parent = $this->getParent();
		if ($Parent->class == "ShowPage") {
			return $Parent->Title;
		} else {
			return $this->Title;
		}
	}
	function IsShowHolder() {
		$Parent = $this->getParent();
		if ($Parent->class == "ShowPage") {
			return false;
		} else {
			return true;
		}
	}
	function AllEpisodes() {
		$Parent = $this->getParent();
		if ($Parent->class == "ShowPage") {
			return DataObject::get("EpisodePage", "ParentID = $Parent->ID", Null, Null);
		} else {
			return DataObject::get("EpisodePage", "ParentID = $this->ID", Null, Null);
		}
	}
	#function RecentEpisodes() {
		#return DataObject::get("EpisodePage", "ParentID = $this->ID", Null, Null, 3);
		#$Children = $this->Children();
		#return $Children->getRange(0, 3);
	#}

}
class EpisodelistPage_Controller extends Page_Controller {

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