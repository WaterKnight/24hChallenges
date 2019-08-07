//===========================================================================
// 
// The Beach Bicker
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Apr 19 21:29:02 2014
//   Map Author: WaterKnight
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_selection           = null
    camerasetup             gg_cam_intro               = null
    rect                    gg_rct_lunaReturnRect      = null
    trigger                 gg_trg_Unbezeichneter_Ausl__ser_001 = null
    unit                    gg_unit_ncp3_0027          = null
    rect                    gg_rct_eggRevealedZone     = null
    rect                    gg_rct_eggDropCircleRect   = null
    rect                    gg_rct_selectionCritters   = null
    trigger                 gg_trg_Unbezeichneter_Ausl__ser_002 = null
    rect                    gg_rct_respawnLeft         = null
    rect                    gg_rct_respawnRight        = null
    rect                    gg_rct_runeSpeedLeft       = null
    rect                    gg_rct_runeSpeedRight      = null
    rect                    gg_rct_returnLeft          = null
    rect                    gg_rct_returnRight         = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'NSna', -5569.8, 3524.7, 212.109 )
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'ncp3', 0.0, -2048.0, 270.000 )
    set u = CreateUnit( p, 'ncop', -3584.0, 1536.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 3584.0, 1536.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 2560.0, -3584.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 6656.0, -3072.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 5888.0, 3840.0, 270.000 )
    set u = CreateUnit( p, 'ngme', 0.0, 3584.0, 270.000 )
    set u = CreateUnit( p, 'ncop', -6656.0, -3072.0, 270.000 )
    set u = CreateUnit( p, 'ncop', -2560.0, -3584.0, 270.000 )
    set u = CreateUnit( p, 'nbsw', 6400.0, 4352.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 768.0, 6720.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 0.0, 6144.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -1024.0, 7168.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 1024.0, 7168.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 0.0, 8192.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 448.0, 6400.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -768.0, 6720.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -448.0, 6400.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -768.0, 7616.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 768.0, 7616.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', 448.0, 7936.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -448.0, 7936.0, 270.000 )
    set u = CreateUnit( p, 'ncp3', -5888.0, 3840.0, 270.000 )
    set u = CreateUnit( p, 'nbse', -6400.0, 4352.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 0.0, 3072.0, 270.000 )
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'NEle', -767.2, 6706.2, 31.132 )
    set u = CreateUnit( p, 'NGia', -1017.5, 7160.5, 0.648 )
    set u = CreateUnit( p, 'NGho', -768.0, 7601.4, -30.522 )
    set u = CreateUnit( p, 'NCra', 1023.4, 7167.7, 179.649 )
    set u = CreateUnit( p, 'NSha', 763.4, 7627.6, 210.991 )
    call SetUnitState( u, UNIT_STATE_MANA, 0 )
    set u = CreateUnit( p, 'NMak', 787.9, 6715.2, 149.817 )
    set u = CreateUnit( p, 'NMur', -3.9, 8183.8, -89.982 )
    set u = CreateUnit( p, 'NCoa', 461.3, 7928.3, 238.506 )
    call SetUnitState( u, UNIT_STATE_MANA, 0 )
    set u = CreateUnit( p, 'NSir', -447.6, 6400.7, 60.013 )
    call SetUnitState( u, UNIT_STATE_MANA, 0 )
    set u = CreateUnit( p, 'NSna', 469.5, 6374.9, 120.345 )
    set u = CreateUnit( p, 'NHyd', -454.0, 7927.9, -58.626 )
    set u = CreateUnit( p, 'NSas', 4.2, 6133.7, 89.944 )
    call SetUnitState( u, UNIT_STATE_MANA, 0 )
    set u = CreateUnit( p, 'ncrb', 100.3, 7193.8, 17.139 )
    set u = CreateUnit( p, 'nalb', 115.0, 7371.7, 135.993 )
    set u = CreateUnit( p, 'nhmc', 137.6, 7088.7, 56.779 )
    set u = CreateUnit( p, 'nskk', 92.9, 6971.1, 143.079 )
    set u = CreateUnit( p, 'nshe', 205.6, 7189.4, 267.976 )
    set u = CreateUnit( p, 'nsea', -158.2, 7284.3, 117.788 )
    set u = CreateUnit( p, 'nech', 12.5, 7310.9, 166.400 )
    set u = CreateUnit( p, 'necr', -64.5, 7216.6, 294.541 )
    set u = CreateUnit( p, 'nrac', 1.4, 7097.8, 77.060 )
    set u = CreateUnit( p, 'npng', -81.8, 7000.0, 202.352 )
    set u = CreateUnit( p, 'nder', -176.1, 7104.6, 68.326 )
    set u = CreateUnit( p, 'npig', 130.9, 7299.8, 45.946 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreateNeutralHostile(  )
    call CreateNeutralPassive(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_selection = Rect( -1248.0, 5920.0, 1248.0, 8416.0 )
    set gg_rct_lunaReturnRect = Rect( -96.0, -5216.0, 96.0, -5024.0 )
    set gg_rct_eggRevealedZone = Rect( -1024.0, -6144.0, 1024.0, 0.0 )
    set gg_rct_eggDropCircleRect = Rect( -160.0, -2208.0, 160.0, -1888.0 )
    set gg_rct_selectionCritters = Rect( -384.0, 6784.0, 384.0, 7552.0 )
    set gg_rct_respawnLeft = Rect( -6400.0, 3968.0, -6016.0, 4352.0 )
    set gg_rct_respawnRight = Rect( 6016.0, 3968.0, 6400.0, 4352.0 )
    set gg_rct_runeSpeedLeft = Rect( -2624.0, -3648.0, -2496.0, -3520.0 )
    set gg_rct_runeSpeedRight = Rect( 2496.0, -3648.0, 2624.0, -3520.0 )
    set gg_rct_returnLeft = Rect( -6016.0, 3712.0, -5760.0, 3968.0 )
    set gg_rct_returnRight = Rect( 5760.0, 3712.0, 6016.0, 3968.0 )
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_intro = CreateCameraSetup(  )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_ZOFFSET, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_ROTATION, 259.1, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_ANGLE_OF_ATTACK, 328.3, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_TARGET_DISTANCE, 2415.8, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_ROLL, 0.0, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0 )
    call CameraSetupSetField( gg_cam_intro, CAMERA_FIELD_FARZ, 5000.0, 0.0 )
    call CameraSetupSetDestPosition( gg_cam_intro, -29.9, -2750.4, 0.0 )

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Unbezeichneter Auslöser 001
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_001_Actions takes nothing returns nothing
    call CreateFogModifierRectBJ( true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect() )
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_001 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Unbezeichneter_Ausl__ser_001, function Trig_Unbezeichneter_Ausl__ser_001_Actions )
endfunction

//===========================================================================
// Trigger: Unbezeichneter Auslöser 002
//===========================================================================
function Trig_Unbezeichneter_Ausl__ser_002_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Unbezeichneter_Ausl__ser_002 takes nothing returns nothing
    set gg_trg_Unbezeichneter_Ausl__ser_002 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Unbezeichneter_Ausl__ser_002, function Trig_Unbezeichneter_Ausl__ser_002_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Unbezeichneter_Ausl__ser_001(  )
    call InitTrig_Unbezeichneter_Ausl__ser_002(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(2), false )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(3), false )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_USER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_USER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_USER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_USER )

    // Player 8
    call SetPlayerStartLocation( Player(8), 8 )
    call SetPlayerColor( Player(8), ConvertPlayerColor(8) )
    call SetPlayerRacePreference( Player(8), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(8), false )
    call SetPlayerController( Player(8), MAP_CONTROL_USER )

    // Player 9
    call SetPlayerStartLocation( Player(9), 9 )
    call SetPlayerColor( Player(9), ConvertPlayerColor(9) )
    call SetPlayerRacePreference( Player(9), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(9), false )
    call SetPlayerController( Player(9), MAP_CONTROL_USER )

    // Player 10
    call SetPlayerStartLocation( Player(10), 10 )
    call SetPlayerColor( Player(10), ConvertPlayerColor(10) )
    call SetPlayerRacePreference( Player(10), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(10), false )
    call SetPlayerController( Player(10), MAP_CONTROL_USER )

    // Player 11
    call SetPlayerStartLocation( Player(11), 11 )
    call SetPlayerColor( Player(11), ConvertPlayerColor(11) )
    call SetPlayerRacePreference( Player(11), RACE_PREF_NIGHTELF )
    call SetPlayerRaceSelectable( Player(11), false )
    call SetPlayerController( Player(11), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_022
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerTeam( Player(3), 0 )
    call SetPlayerTeam( Player(4), 0 )
    call SetPlayerTeam( Player(5), 0 )
    call SetPlayerTeam( Player(6), 0 )
    call SetPlayerTeam( Player(7), 0 )
    call SetPlayerTeam( Player(8), 0 )
    call SetPlayerTeam( Player(9), 0 )
    call SetPlayerTeam( Player(10), 0 )
    call SetPlayerTeam( Player(11), 0 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(8), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(10), true )
    call SetPlayerAllianceStateAllyBJ( Player(9), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(10), Player(11), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(8), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(9), true )
    call SetPlayerAllianceStateAllyBJ( Player(11), Player(10), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(8), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(10), true )
    call SetPlayerAllianceStateVisionBJ( Player(9), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(10), Player(11), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(8), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(9), true )
    call SetPlayerAllianceStateVisionBJ( Player(11), Player(10), true )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 2 )
    call SetStartLocPrio( 0, 0, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 1, 6, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 1, 1 )
    call SetStartLocPrio( 1, 0, 2, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 2, 2 )
    call SetStartLocPrio( 2, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 1, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 3, 1 )
    call SetStartLocPrio( 3, 0, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 4, 1 )
    call SetStartLocPrio( 4, 0, 3, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 1 )
    call SetStartLocPrio( 5, 0, 10, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 6, 2 )
    call SetStartLocPrio( 6, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 1, 4, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 1 )
    call SetStartLocPrio( 7, 0, 9, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 8, 1 )
    call SetStartLocPrio( 8, 0, 10, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 9, 3 )
    call SetStartLocPrio( 9, 0, 7, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 9, 1, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 9, 2, 10, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 10, 3 )
    call SetStartLocPrio( 10, 0, 5, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 10, 1, 8, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 10, 2, 9, MAP_LOC_PRIO_LOW )

    call SetStartLocPrioCount( 11, 3 )
    call SetStartLocPrio( 11, 0, 3, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 11, 1, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 11, 2, 6, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "SunkenRuinsDay" )
    call SetAmbientNightSound( "SunkenRuinsNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateRegions(  )
    call CreateCameras(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_003" )
    call SetMapDescription( "TRIGSTR_005" )
    call SetPlayers( 12 )
    call SetTeams( 12 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, 1792.0, 256.0 )
    call DefineStartLocation( 1, 1216.0, 3200.0 )
    call DefineStartLocation( 2, 768.0, 1280.0 )
    call DefineStartLocation( 3, 6400.0, 1792.0 )
    call DefineStartLocation( 4, 5824.0, 896.0 )
    call DefineStartLocation( 5, -3456.0, 3584.0 )
    call DefineStartLocation( 6, 3776.0, -128.0 )
    call DefineStartLocation( 7, -5760.0, -2816.0 )
    call DefineStartLocation( 8, -2048.0, -64.0 )
    call DefineStartLocation( 9, -4608.0, -960.0 )
    call DefineStartLocation( 10, -3264.0, 1088.0 )
    call DefineStartLocation( 11, 5952.0, -2304.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

