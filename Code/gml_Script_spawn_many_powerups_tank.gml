repeat (20)
    instance_create((argument0 + random(argument2)), (argument1 + random(argument3)), oHPickupBig)
repeat (30)
    instance_create((argument0 + random(argument2)), (argument1 + random(argument3)), oHPickup)
if (global.maxpbombs > 0)
{
    repeat (5 - (3 * global.item[0]))
        instance_create((argument0 + random(argument2)), (argument1 + random(argument3)), oPBPickup)
}
