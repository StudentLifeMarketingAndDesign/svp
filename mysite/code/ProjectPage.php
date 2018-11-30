<?php
class ProjectPage extends Page {

	private static $db = array(
		"EmbedCode" => "HTMLText",
	);

	private static $has_one = array(
		"Photo" => "Image",
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		// $fields->removeByName("Content");

		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Photo (dimensions)"));
		$fields->addFieldToTab("Root.Main", new TextareaField("EmbedCode", "Embed Code"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));

		$fields->removeByName("Metadata");
		$fields->removeByName("BackgroundImage");

		return $fields;

	}

	//private static $allowed_children = array("");

}
