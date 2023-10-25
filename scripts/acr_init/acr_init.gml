// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function acr_init(){
	//gml_pragma("global", "init()");
	
	#region 
	
	part_type_shape(_P, pt_shape_disk);
	part_type_life(_P, 20, 40);
	
	var _P = part_type_create()
	global.ptBasic = _P
	
	#endregion
}