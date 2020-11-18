<?php

namespace {

	class CalendarPage extends Page {
		private static $db = [

		];

		private static $has_one = [];

		private static $icon_class = 'font-icon-calendar';

		public function getCMSFields() {
			$fields = parent::getCMSFields();
			$contentField = $fields->dataFieldByName('Content');
			$contentField->setDescription('Shows up above the calendar');
			return $fields;
		}
	}
}
