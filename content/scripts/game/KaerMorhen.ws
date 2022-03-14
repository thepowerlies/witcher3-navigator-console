
function teleportMorhen(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 3){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\kaer_morhen\kaer_morhen.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}


// inside castle
exec function gotoKaerMorhenInside(){
    teleportMorhen(50.47, 17.2, 170.75);
}
// over castle
exec function gotoKaerMorhenOver(){
    teleportMorhen(40, 18, 209);
}
// room with Yennefer
exec function gotoKaerMorhenRoom(){
    teleportMorhen(49, -5, 197);
}
// top room with barrels
exec function gotoKaerMorhenTop(){
    teleportMorhen(131, 3, 193);
}
// over lone tower
exec function gotoKaerMorhenTower(){
    teleportMorhen(-98, -108, 216);
}

exec function gotoKaerWitcherCave(){
    teleportMorhen(420, 141, 205.35);
}

// top of the hill after troll cave
exec function gotoKaerTroll(){
    teleportMorhen(107, 1004, 129.07);
}

exec function gotoKaerWeedLab(){
    teleportMorhen(215.67, -389.77, 208.3);
}

// Vesemir's funeral
exec function gotoKaerFuneral(){
    teleportMorhen(66.14, -87.46, 179.5);
}