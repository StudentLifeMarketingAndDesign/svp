<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\Connect\MySQLSchemaManager;

class Page extends SiteTree
{
    private static $db = [];

    private static $has_one = [];

    private static $create_table_options = [
        MySQLSchemaManager::ID => 'ENGINE=MyISAM'
    ];
}
