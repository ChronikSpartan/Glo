instance_destroy();
instance_destroy(oLockedCollider);

if (instance_exists(oLockedDoor))
{
	with(oLockedDoor) instance_change(oDoor, true);
}
