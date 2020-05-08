// __/\\\________/\\\_______________________________________________________________________/\\\\\\\\\__/\\\\\\_________________________________        
//  _\/\\\_______\/\\\____________________________________________________________________/\\\////////__\////\\\_________________________________       
//   _\//\\\______/\\\___/\\\__________________/\\\_______/\\\___________________________/\\\/______________\/\\\_________________________________      
//   __\//\\\____/\\\___\///___/\\\\\\\\\\__/\\\\\\\\\\\_\///______/\\\\\\\\____________/\\\________________\/\\\_____/\\\\\\\\\_____/\\/\\\\\\___     
//    ___\//\\\__/\\\_____/\\\_\/\\\//////__\////\\\////___/\\\___/\\\//////____________\/\\\________________\/\\\____\////////\\\___\/\\\////\\\__    
//     ____\//\\\/\\\_____\/\\\_\/\\\\\\\\\\____\/\\\______\/\\\__/\\\___________________\//\\\_______________\/\\\______/\\\\\\\\\\__\/\\\__\//\\\_   
//      _____\//\\\\\______\/\\\_\////////\\\____\/\\\_/\\__\/\\\_\//\\\___________________\///\\\_____________\/\\\_____/\\\/////\\\__\/\\\___\/\\\_  
//       ______\//\\\_______\/\\\__/\\\\\\\\\\____\//\\\\\___\/\\\__\///\\\\\\\\______________\////\\\\\\\\\__/\\\\\\\\\_\//\\\\\\\\/\\_\/\\\___\/\\\_ 
//        _______\///________\///__\//////////______\/////____\///_____\////////__________________\/////////__\/////////___\////////\//__\///____\///__

// vistic-clan.net
// Map by VC' Arkani

//#include maps\mp\_zombiescript;
main()
{
    maps\mp\_load::main();  
    maps\mp\_compass::setupMiniMap("compass_map_mp_surv_forsaken");

    game["allies"] = "marines";
    game["axis"] = "opfor";
    game["attackers"] = "axis";
    game["defenders"] = "allies";
    game["allies_soldiertype"] = "desert";
    game["axis_soldiertype"] = "desert";

    setdvar( "r_specularcolorscale", "10" );
    setdvar("r_glowbloomintensity0",".25");
    setdvar("r_glowbloomintensity1",".25");
    setdvar("r_glowskybleedintensity0",".3");
    setdvar("compassmaxrange","1000");

    //level.barricadefx=loadfx("dust/dust_trail_IR");

    thread credit();
    thread credit2();

    //waittillStart();

    //buildAmmoStock("ammostock");
    //buildWeaponUpgrade("weaponupgrade");

    //createspawning();
    //startSurvWaves();
    
    //buildBarricade("staticbarricade", 7, 400, level.barricadefx, level.barricadefx);
}
createspawning()
{
    buildsurvspawn("spawngroup1",1);
    buildsurvspawn("spawngroup2",1);
    buildsurvspawn("spawngroup3",1);
    buildsurvspawn("spawngroup4",1);
    buildsurvspawn("spawngroup5",1);
    buildsurvspawn("spawngroup6",1);
    buildsurvspawn("spawngroup7",1);
    buildsurvspawn("spawngroup8",1);
    buildsurvspawn("spawngroup9",1);
}
credit2()
{
    while(1)
    {
        iprintln("This map is created by ^1Arkani");
        wait 15;
        iprintln("Visit ^1Vistic^7-^1Clan^7.net!");
        wait 15;
        iprintln("Special Thanks to ^1Aria ^7for testing!");
        wait 15;
        iprintln("Special Thanks to ^1Lixfe ^7for making the ways!");
        wait 15;
    }
}
credit()
{
    name = newHudElem();
    name.x = 650;
    name.y = 450;
    name.alignX = "center";
    name.alignY = "middle";
    name.fontScale = 1.4;
    name.font = "objective";
    name.glowAlpha = 1;
    name.hideWhenInMenu = true;
   	name.glowColor = (1,0.2,0);
   	name.glowAlpha = 1;
   	name.hideWhenInMenu = true;	
	name.color = (1,1,0.9);
    name setText("Map by Arkani");
 
}