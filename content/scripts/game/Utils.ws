// open the surrounding doors
exec function openDoors(optional range: int, optional max: int)
{
		var entityList: array<CGameplayEntity>;
		var i: int;
		var entity: CEntity;
		var count: int = 0;

		if(!range)
		    range = 30;
        if(!max)
            max = 10;

		FindGameplayEntitiesInRange(entityList, thePlayer, range, max);
        for	( i = 0; i < entityList.Size(); i+= 1 )
        {
            entity = (CEntity) entityList[i];
            if(((W3NewDoor)entity))
            {
                ((W3NewDoor)entity).Unlock();
                count = count + 1;
            }
        }
        GetWitcherPlayer().DisplayHudMessage(count + " Doors Unlocked");
}

// get player position
exec function getMyPosition()
{
    var position: Vector = thePlayer.GetWorldPosition();
    var toShow: string = "X:" + position.X + "<br>Y:" + position.Y + "<br>Z:" + position.Z;
    theGame.GetGuiManager().ShowUserDialogAdv(0, "Current position:", toShow, false, UDB_Ok);
}

// goes forward in facing direction
exec function goForward(dist : float)
{
    var heading :float = thePlayer.GetHeading();
    var position :Vector = thePlayer.GetWorldPosition();
    thePlayer.Teleport(position + VecFromHeading(heading) * dist);
}

exec function goUpward(dist : float)
{
    var position :Vector = thePlayer.GetWorldPosition();
    thePlayer.Teleport(Vector(position.X, position.Y, position.Z + dist, 1));
}

exec function teleport(x: float, y: float, z: float){
    thePlayer.Teleport(Vector(x, y, z, 1));
}

/*
exec function getCurrentArea(){
    GetWitcherPlayer().DisplayHudMessage(theGame.GetCommonMapManager().GetCurrentArea());
} */
