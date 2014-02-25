<?php
class EpisodePage extends Page {

	public static $db = array(
		'VimeoURL' => 'Text',
		'YoutubeURL' => 'Text',
		'Producer' => 'Text',
		'Airdate' => 'Date',
		'Season' => 'Text',
		'Ep' => 'Text',
		'Description' => 'Text',
		'ThumbURL' => 'Text'
	);

	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab("Root.Content.Main", new TextField('VimeoURL','Vimeo ID'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('YoutubeURL','YouTube ID'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Producer','Producer Name'));
		$datefield = new DateField('Airdate','Original air date.');
		$datefield->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Content.Main", $datefield);
		$fields->addFieldToTab("Root.Content.Main", new TextField('Season','Season Number'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Ep','Episode Number'));
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Content','Episode description.'));
		return $fields;
	}
	function testThumb() {
		$video_url = "http://vimeo.com/api/v2/video/" . $this->VimeoURL . ".php";
		$hash = unserialize(file_get_contents($video_url));
		return $hash[0]['thumbnail_medium'];
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
	function PreviousEpisodes($amt = 2) {
		if (!$this->Airdate) {
			return new DataObjectSet();
		}
		$Parent = $this->getParent();
		$Airdate = date("Y-m-d",$this->Airdate);
		$Airdate = mysql_real_escape_string($this->Airdate);#Airdate < $this->Airdate
		return DataObject::get("EpisodePage", "ParentID = $Parent->ID AND Airdate < '$Airdate'", "Airdate DESC", Null, $amt);
	}
	function ThisEpisode() {
		$Parent = $this->getParent();
		$Airdate = date("Y-m-d",$this->Airdate);
		$Airdate = mysql_real_escape_string($this->Airdate);
		return DataObject::get("EpisodePage", "Airdate = $Airdate", Null, Null, $amt);
	}
	function FollowingEpisodes($amt = 2) {
		if (!$this->Airdate) {
			return new DataObjectSet();
		}
		$Parent = $this->getParent();
		$Airdate = date("Y-m-d",$this->Airdate);
		$Airdate = mysql_real_escape_string($this->Airdate);
		return DataObject::get("EpisodePage", "ParentID = $Parent->ID AND Airdate >= '$Airdate'", "Airdate ASC", Null, $amt);
	}
	function NextEpisode() {
		if (!$this->Airdate) {
			return new DataObjectSet();
		}
		$Parent = $this->getParent();
		$Airdate = date("Y-m-d",$this->Airdate);
		$Airdate = mysql_real_escape_string($this->Airdate);
		return DataObject::get("EpisodePage", "ParentID = $Parent->ID AND Airdate >= '$Airdate'", "Airdate ASC", Null, "1,1");
	}
	function ShownEpisodes() {
		$previous = $this->PreviousEpisodes();
		$following = $this->FollowingEpisodes(4 - count($previous));
		$dosComposite = $dosComposite = new DataObjectSet();
		$dosComposite->merge($previous);
		$dosComposite->merge($following);
		$dosComposite->sort('Airdate','ASC');
		return $dosComposite;
	}
}
class EpisodePage_Controller extends Page_Controller {

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