<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;

    class Page extends SiteTree
    {
        private static $db = [];

        private static $has_one = [
            'BackgroundImage' => Image::class
        ];


        private static $owns = [
            'BackgroundImage'
        ];


        public function getCMSFields(){
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Main', new UploadField('BackgroundImage', 'Background Image'), 'Content');

            return $fields;

        }

    }
}
