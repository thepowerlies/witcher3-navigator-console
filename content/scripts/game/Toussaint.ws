

function teleportToussaint(x: float, y: float, z: float){
    if(!theGame.GetDLCManager().IsDLCAvailable( 'abob_001_001' )){
        GetWitcherPlayer().DisplayHudMessage("Blood and Wine is not installed!");
        return;
    }
    if(theGame.GetCommonMapManager().GetCurrentArea() == 11){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("dlc\bob\data\levels\bob\bob.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

exec function gotoToussaintTeshamTower(){
    teleportToussaint(53, -2111, 160);
}

exec function gotoToussaintUnseen(){
    teleportToussaint(-663.28, -1891.5, 83.57);
}

exec function gotoToussaintUnseenAfter(){
    teleportToussaint(-763.81, -2033.6, 63.27);
}

exec function gotoToussaintPrison(){
    teleportToussaint(207, -1200, 11.95);
}

exec function gotoFable(){
    teleportToussaint(2603.9, 1500, 173.16);
}

exec function gotoFableTower(){
    teleportToussaint(2523.47, 1407.37, 219.9);
}

exec function gotoFablePicture(){
    teleportToussaint(-2863.74, -3316.8, 1504);
}