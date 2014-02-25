<?php
class ShowPage extends Page {
	static $allowed_children = array("EpisodelistPage","EpisodePage");
	public static $db = array(
		
	);

	public static $has_one = array(
	);
	function EpisodesPage() {
		return DataObject::get("EpisodelistPage", "ParentID = $this->ID", Null, Null, 1);
	}
	//function LatestEpisode() {
	//	return DataObject::get("EpisodePage", "ParentID = $this->ID", Null, Null, 1);
	//}
	//function RecentEpisodes() {
	//	return DataObject::get("EpisodePage", "ParentID = $this->ID", Null, Null, "1,2");
	//}
	function LatestEpisode() {
		return DataObject::get("EpisodePage", "ParentID = $this->ID", "Airdate DESC", Null, 1);
	}
	function RecentEpisodes() {
		return DataObject::get("EpisodePage", "ParentID = $this->ID", "Airdate DESC", Null, "1,2");
	}
	function Episodes() {
		return DataObject::get("EpisodePage", "ParentID = $this->ID", "Airdate DESC", Null, Null);
	}
	

}
class ShowPage_Controller extends Page_Controller {

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