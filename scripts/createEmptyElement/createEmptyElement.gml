/*
 *@argument0 - position of element
 *@argument1 - Controller instance
 */

    var element = instance_create(Controller.pointUp[argument0], 10, EmptyElement);
    element.position = argument0;
    element.vspd = argument1;
