//2

function teleportSkellige(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 2){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\skellige\skellige.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

exec function gotoSkelligeDjinn(){
    teleportSkellige(535, 804, 207);
}

exec function gotoSkelligeGhostShip(){
    teleportSkellige(1971, 1065, 0.15);
}

exec function gotoSkelligeAxeTop(){
    teleportSkellige(-251.42, 935.4, 241);
}
