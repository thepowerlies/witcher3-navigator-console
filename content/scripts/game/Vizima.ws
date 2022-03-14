
function teleportVizima(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 5){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\wyzima_castle\wyzima_castle.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

exec function gotoVizimaMountain(){
    teleportVizima(126, -61, 38.6);
}