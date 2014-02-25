<?php
class InteriorPage extends Page {

	public static $db = array(
		'YoutubeURL' => 'Text',
		'ThumbURL' => 'Text'
	);

	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		//$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab("Root.Content.Main", new TextField('YoutubeURL','YouTube ID'));
		return $fields;
	}
	
	function onBeforeWrite() {
		if ($this->VimeoURL) {
			$video_url = "http://vimeo.com/" . $this->VimeoURL;
			$file = fopen($video_url, "r");
			$filedata = stream_get_contents($file);
			$html_content = strpos($filedata,"<link rel=\"videothumbnail");
			$link_string = substr($filedata, $html_content, 128);
			$video_id_array = explode("\"", $link_string);
			$thumbnail_url = mysql_real_escape_string($video_id_array[3]);
			$video_url = "http://vimeo.com/api/v2/video/" . $this->VimeoURL . ".php";
			$hash = unserialize(file_get_contents($video_url));
			#return $hash[0]['thumbnail_medium'];
			$thumbnail_url = mysql_real_escape_string($hash[0]['thumbnail_large']);
			$this->ThumbURL = $thumbnail_url;
			#$this->write();
			#DB::query('UPDATE ' . $this . ' SET ThumbURL=\'' . $thumbnail_url . '\' WHERE ID=' . $this->ID); 
		}
		if ($this->YoutubeURL) {
			$thumbnail_url = "http://img.youtube.com/vi/".$this->YoutubeURL."/0.jpg";
			$this->ThumbURL = $thumbnail_url;
		}
		parent::onBeforeWrite();
	}
	function RecentEpisodes() {
		$Parent = $this->getParent();
		return DataObject::get("EpisodePage", "ParentID = $Parent->ID", Null, Null, 3);
	}
}
class InteriorPage_Controller extends RssBlogPostsPage_Controller {

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