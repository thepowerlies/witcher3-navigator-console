
function teleportOrchard(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 4){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\prolog_village\prolog_village.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

exec function gotoWinterOrchard(){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 8){
        GetWitcherPlayer().DisplayHudMessage("Already in Winter Orchard");
    } else
        theGame.ScheduleWorldChangeToPosition("levels\prolog_village_winter\prolog_village.w2w", Vector( 58, 0, 2.4 ), EulerAngles( 0, 0, 0 ) );
}