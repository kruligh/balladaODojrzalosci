/*
 *@argument0 - position of element
 *@argument1 - Controller instance
 */

    var element = instance_create(Controller.pointUp[argument0], 10, Element);
    element.position = argument0;
    element.vspd = argument1;
	element.sprite_index = argument2;
	element.good = argument3;
