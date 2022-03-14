

function teleportVelen(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 1){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\novigrad\novigrad.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}

function checkForHOS(): bool {
    var installed: bool = theGame.GetDLCManager().IsDLCAvailable( 'ep1' );
    if(!installed)
        GetWitcherPlayer().DisplayHudMessage("Hearts of Stone is not installed!");
    return installed;
}

exec function gotoMirrorMansion(){
    if(checkForHOS())
        teleportVelen(3613, -228, 37);
}

exec function gotoMirrorCave(){
    if(checkForHOS())
        teleportVelen(3624, -326, 16.25);
}

exec function gotoMirrorSword(){
    if(checkForHOS())
        teleportVelen(3448, -346, 19.87);
}

exec function gotoMirrorFinal(){
    if(checkForHOS())
        teleportVelen(3714, -205, 21.6);
}

exec function gotoVelenImlerith(){
    teleportVelen(1121.16, -973.18, 94.3);
}

exec function gotoKeiraBath(){
    teleportVelen(-262.7, -38.9, -21.88);
}

exec function gotoVelenCronesSoup(){
    teleportVelen(1069.73, -1030.25, 8.69);
}

exec function gotoVelenBaron(){
    teleportVelen(164.73, 161.45, 32.7);
}

exec function gotoPainted(){
    teleportVelen(3075, 3281.1, 23.08);
}

exec function gotoPaintedSnow(){
    teleportVelen(2828.8, 3346.5, 23.5);
}

exec function gotoPaintedSnowOutside(){
    teleportVelen(2851, 3329.5, 16.07);
}