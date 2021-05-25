<?php
function get_list_page(){
    $result=db_fetch_array("SELECT * FROM `tbl_page`");
    return $result;
}
function get_page_by_id($id){
    global $list_page;
    if(array_key_exists($id,$list_page)){
        return $list_page[$id];
    }
    return false;
}
