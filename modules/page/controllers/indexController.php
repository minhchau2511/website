

<?php

function construct() {

    load_model('index');
    
    
}

function indexAction() {
  
    load_view('index');
   
}
function detailAction(){
    $id=(int)$_GET['id'];
    global $list_page;
    $list_page=get_list_page();
    
    // show_array($list_page);
    $item=get_page_by_id($id);
    $data['item']=$item;
    load_view('detail',$data);
}
