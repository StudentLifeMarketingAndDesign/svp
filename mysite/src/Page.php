<?php

namespace {

	use SilverStripe\AssetAdmin\Forms\UploadField;
	use SilverStripe\Assets\Image;
	use SilverStripe\CMS\Model\SiteTree;

	class Page extends SiteTree {
		private static $db = [];

		private static $has_one = [
			'BackgroundImage' => Image::class,
		];

		private static $owns = [
			'BackgroundImage',
		];

		public function getCMSFields() {
			$fields = parent::getCMSFields();

			$fields->addFieldToTab('Root.Main', $bgField = UploadField::create('BackgroundImage', 'Background Image'), 'Content');
			$bgField->setDescription('Please refrain from using text in the background image, since the text in the Content field below will overlap it.');
			return $fields;

		}

	}
}
