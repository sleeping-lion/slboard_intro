<div class="jumbotron hero-unit">
	<h1><?php echo __d('site','Main Title') ?></h1>
	<p class="lead"><?php echo __d('site','Main Description') ?></p>
	<p><?php echo __d('site','Now Download') ?></p>
	<?php echo $this->html->link(__d('site','Sample Site'),'http://sample.slboard.kr',array('class'=>"btn btn-large btn-success")) ?>
	<?php echo $this->html->link(__('Download'),'https://github.com/sleeping-lion/slboard_cakephp/archive/master.zip',array('class'=>"btn btn-large btn-primary")) ?>
</div>