

function teleportMist(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 6){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\island_of_mist\island_of_mist.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

exec function gotoMist(){
    teleportMist(-10, 276, 0.9);
}

