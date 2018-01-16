# Hellow-world
All My Example Here..........................


This is wordpress sub menu function Code: 

function change_submenu_class($menu) {  
  $menu = preg_replace('/ class="sub-menu"/','/ class="myclass" /',$menu);  
  return $menu;  
}  
add_filter('wp_nav_menu','change_submenu_class');  


Link this code website:
https://coderwall.com/p/6-yxga/change-wp-default-sub-menu-class
