/*
 *@argument0 - position of element
 *@argument1 - Controller instance
 *@argument2 - vspd
 */

    var element = instance_create(argument1.pointUp[argument0], 10, Element);
    element.position = argument0;
    element.vspd = argument2

