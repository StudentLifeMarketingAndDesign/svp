<?php
class HomePage extends Page {

	public static $db = array(
							  
	);

	public static $has_one = array(
		"LinkTo" => "SiteTree",
	);
	
	function getCMSFields() {
		//Requirements::javascript(SAPPHIRE_DIR . "/javascript/RedirectorPage.js");
		$fields = parent::getCMSFields();
		$fields->removeByName('Content', true);
		$fields->addFieldToTab('Root.Content.Main',new HeaderField('LinkToHeader',"Choose an episode to be featured on the homepage."));
		/*$fields->addFieldsToTab('Root.Content.Main',
			array(
				new HeaderField('RedirectorDescHeader',_t('RedirectorPage.HEADER', "This page will redirect users to another page")),
				new OptionsetField(
					"RedirectionType", 
					_t('RedirectorPage.REDIRECTTO', "Redirect to"), 
					array(
						"Internal" => _t('RedirectorPage.REDIRECTTOPAGE', "A page on your website"),
						"External" => _t('RedirectorPage.REDIRECTTOEXTERNAL', "Another website"),
					), 
					"Internal"
				),
				new TreeDropdownField(	
					"LinkToID", 
					_t('RedirectorPage.YOURPAGE', "Page on your website"), 
					"SiteTree"
				),
				new TextField("ExternalURL", _t('RedirectorPage.OTHERURL', "Other website URL"))
			)
		);*/
		$fields->addFieldToTab('Root.Content.Main',new TreeDropdownField("LinkToID", _t('RedirectorPage.YOURPAGE', "Choose an episode to feature."), "SiteTree"));
		
		return $fields;
	}
}
class HomePage_Controller extends RssBlogPostsPage_Controller {

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