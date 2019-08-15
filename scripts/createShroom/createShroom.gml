/*
 *@argument0 - position of element
 *@argument1 - Controller instance
 *@argument2 - speed
 *@argument3 - timer
 */

    var element = instance_create(Controller.pointUp[argument0], 10, Shroom);
    element.position = argument0;
    element.changeSpd = argument1;
    element.timer = argument2;
