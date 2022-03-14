
function teleportSpiral(x: float, y: float, z: float){
    if(theGame.GetCommonMapManager().GetCurrentArea() == 7){
        thePlayer.Teleport(Vector(x, y, z));
    } else {
        theGame.ScheduleWorldChangeToPosition("levels\the_spiral\spiral.w2w", Vector(x, y, z), EulerAngles(0, 0, 0));
    }
}


exec function gotoSpiralDesert(){
    teleportSpiral(-1496.9, -2563.36, 163.67);
}

exec function gotoSpiralValley(){
    teleportSpiral(-677.5, -2163, 95.64);
}

exec function gotoSpiralWater(){
    teleportSpiral(1021, -3627, 413);
}

exec function gotoSpiralCold(){
    teleportSpiral(1085, -3606, 414.62);
}

exec function gotoSpiralElf(){
    teleportSpiral(1482, -1096.7, 115.5);
}