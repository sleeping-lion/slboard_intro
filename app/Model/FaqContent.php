<?php
App::uses('SlContentModel', 'Model');
/**
 * FaqContent Model
 *
 */
class FaqContent extends SlContentModel {
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	/**
	 * belongsTo associations
	 *
	 * @var array
	 */

	public $belongsTo = array('Faq' => array('foreignKey' => 'id'));
}
