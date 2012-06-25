<?php

class Post extends AppModel {
    public $name = 'Post';

    public $validate = array(
        'title' => array(
            'rule' => 'notEmpty'
        ),
        'body' => array(
            'rule' => 'notEmpty'
        )
    );

    //funcao que verifica se usuário é 
    //autorizado a editar ou post ou não, nós estamos chamando a função isOwnedBy() no model Post
	public function isOwnedBy($post, $user) {
	    return $this->field('id', array('id' => $post, 'user_id' => $user)) === $post;
	}
}

?>