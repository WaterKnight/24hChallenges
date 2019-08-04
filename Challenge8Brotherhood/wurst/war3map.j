globals
//globals from spawn:
constant boolean LIBRARY_spawn=true
trigger deadTrig=CreateTrigger()
integer spawn_level1
integer spawn_level2
integer spawn_level3
        
integer array spawn_carriers
integer spawn_carriersC= 0
integer array spawn_levels
integer spawn_levelsC= 0
integer spawn_curLevelIndex
        
timer spawn_levelTimer=CreateTimer()
timerdialog spawn_td
//endglobals from spawn
//globals from start:
constant boolean LIBRARY_start=true
force players= CreateForce()
player brotherhood= Player(6)
player attackers= Player(1)
        
timer gameTimer=CreateTimer()
timerdialog gameTimerDialog
//endglobals from start
    // Generated
rect gg_rct_start= null
rect gg_rct_landingC= null
rect gg_rct_landingB= null
rect gg_rct_landingA= null
rect gg_rct_boatA= null
rect gg_rct_boatB= null
rect gg_rct_boatC= null
rect gg_rct_radio= null
camerasetup gg_cam_radio= null
camerasetup gg_cam_marine= null
camerasetup gg_cam_lairB= null
camerasetup gg_cam_lairA= null
trigger gg_trg_spawn= null
trigger gg_trg_init= null
trigger gg_trg_dead= null
trigger gg_trg_supply= null
trigger gg_trg_rax= null
unit gg_unit_nheb_0001= null
unit gg_unit_nheb_0039= null
unit gg_unit_nheb_0017= null
unit gg_unit_haro_0075= null
unit gg_unit_hbot_0079= null
unit gg_unit_nspc_0074= null
unit gg_unit_nspc_0073= null
unit gg_unit_nspc_0072= null
unit gg_unit_nspc_0071= null
unit gg_unit_hbot_0078= null
unit gg_unit_hbot_0042= null
boolean dead_gameOver= false
integer dead_cnt= 1
trigger supply__buildTrig= CreateTrigger()
trigger supply__deathTrig= CreateTrigger()
        
integer array supply__cnt
trigger rax__buildTrig=CreateTrigger()
trigger rax__trainTrig=CreateTrigger()

trigger l__library_init

//JASSHelper struct globals:
constant integer si__spawn__Troop=1
integer si__spawn__Troop_F=0
integer si__spawn__Troop_I=0
integer array si__spawn__Troop_V
integer array s___spawn__Troop_units
constant integer s___spawn__Troop_units_size=40
integer array s__spawn__Troop_units
integer array s__spawn__Troop_unitsC
constant integer si__spawn__Level=3
integer si__spawn__Level_F=0
integer si__spawn__Level_I=0
integer array si__spawn__Level_V
integer array s___spawn__Level_troops
constant integer s___spawn__Level_troops_size=5
integer array s__spawn__Level_troops
integer array s__spawn__Level_troopsC
constant integer si__spawn__Carrier=5
integer si__spawn__Carrier_F=0
integer si__spawn__Carrier_I=0
integer array si__spawn__Carrier_V
unit array s__spawn__Carrier_rax
unit array s__spawn__Carrier_boat
rect array s__spawn__Carrier_startRect
rect array s__spawn__Carrier_targetRect
boolean array s__spawn__Carrier_finished
trigger st__spawn__Carrier_exec
trigger array st___prototype1
integer f__arg_integer1
integer f__arg_this

endglobals


//Generated allocator of spawn__Troop
function s__spawn__Troop__allocate takes nothing returns integer
 local integer this=si__spawn__Troop_F
    if (this!=0) then
        set si__spawn__Troop_F=si__spawn__Troop_V[this]
    else
        set si__spawn__Troop_I=si__spawn__Troop_I+1
        set this=si__spawn__Troop_I
    endif
    if (this>203) then
        return 0
    endif
    set s__spawn__Troop_units[this]=(this-1)*40
   set s__spawn__Troop_unitsC[this]= 0
    set si__spawn__Troop_V[this]=-1
 return this
endfunction

//Generated destructor of spawn__Troop
function s__spawn__Troop_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__spawn__Troop_V[this]!=-1) then
        return
    endif
    set si__spawn__Troop_V[this]=si__spawn__Troop_F
    set si__spawn__Troop_F=this
endfunction

//Generated method caller for spawn__Carrier.exec
function sc__spawn__Carrier_exec takes integer this,integer level returns nothing
    set f__arg_this=this
    set f__arg_integer1=level
    call TriggerEvaluate(st__spawn__Carrier_exec)
endfunction

//Generated method executor for spawn__Carrier.exec
function sx__spawn__Carrier_exec takes integer this,integer level returns nothing
    set f__arg_this=this
    set f__arg_integer1=level
    call TriggerExecute(st__spawn__Carrier_exec)
endfunction

//Generated allocator of spawn__Carrier
function s__spawn__Carrier__allocate takes nothing returns integer
 local integer this=si__spawn__Carrier_F
    if (this!=0) then
        set si__spawn__Carrier_F=si__spawn__Carrier_V[this]
    else
        set si__spawn__Carrier_I=si__spawn__Carrier_I+1
        set this=si__spawn__Carrier_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__spawn__Carrier_V[this]=-1
 return this
endfunction

//Generated destructor of spawn__Carrier
function s__spawn__Carrier_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__spawn__Carrier_V[this]!=-1) then
        return
    endif
    set si__spawn__Carrier_V[this]=si__spawn__Carrier_F
    set si__spawn__Carrier_F=this
endfunction

//Generated allocator of spawn__Level
function s__spawn__Level__allocate takes nothing returns integer
 local integer this=si__spawn__Level_F
    if (this!=0) then
        set si__spawn__Level_F=si__spawn__Level_V[this]
    else
        set si__spawn__Level_I=si__spawn__Level_I+1
        set this=si__spawn__Level_I
    endif
    if (this>1637) then
        return 0
    endif
    set s__spawn__Level_troops[this]=(this-1)*5
   set s__spawn__Level_troopsC[this]= 0
    set si__spawn__Level_V[this]=-1
 return this
endfunction

//Generated destructor of spawn__Level
function s__spawn__Level_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__spawn__Level_V[this]!=-1) then
        return
    endif
    set si__spawn__Level_V[this]=si__spawn__Level_F
    set si__spawn__Level_F=this
endfunction
function sc___prototype1_execute takes integer i returns nothing

    call TriggerExecute(st___prototype1[i])
endfunction
function sc___prototype1_evaluate takes integer i returns nothing

    call TriggerEvaluate(st___prototype1[i])

endfunction

//library spawn:
    
    function onDeath takes nothing returns nothing
        if ( GetRandomInt(1, 10) <= 3 ) then
            call CreateItem('anfg', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()))
        endif
    endfunction
    
        
        function s__spawn__Troop_addUnitSingle takes integer this,integer id returns nothing
            set s___spawn__Troop_units[s__spawn__Troop_units[this]+s__spawn__Troop_unitsC[this]]=id
            set s__spawn__Troop_unitsC[this]=s__spawn__Troop_unitsC[this] + 1
        endfunction
        
        function s__spawn__Troop_addUnit takes integer this,integer id,integer amount returns nothing
            local integer i= 1
            
            loop
                exitwhen ( i > amount )
                
                call s__spawn__Troop_addUnitSingle(this,id)
                
                set i=i + 1
            endloop
        endfunction

        
        function s__spawn__Level_addTroop takes integer this,integer val returns nothing
            set s___spawn__Level_troops[s__spawn__Level_troops[this]+s__spawn__Level_troopsC[this]]=val
            set s__spawn__Level_troopsC[this]=s__spawn__Level_troopsC[this] + 1
        endfunction
    
        
        function s__spawn__Carrier_exec takes integer this,integer level returns nothing
            local integer i= 0
            local integer j
            local integer troop
            local unit u
            local unit array us
            local integer usC
            local integer c
            
            set s__spawn__Carrier_finished[this]=false
            
            loop
                exitwhen ( i >= s__spawn__Level_troopsC[level] )
        
                call IssuePointOrder(s__spawn__Carrier_boat[this], "move", GetRectCenterX(s__spawn__Carrier_startRect[this]), GetRectCenterY(s__spawn__Carrier_startRect[this]))
                
                loop
                    exitwhen RectContainsUnit(s__spawn__Carrier_startRect[this], s__spawn__Carrier_boat[this])
                    
                    call TriggerSleepAction(1)
                endloop
                
                set troop=s___spawn__Level_troops[s__spawn__Level_troops[level]+i]
                
                set j=0
                set usC=0
                
                loop
                    exitwhen ( j >= s__spawn__Troop_unitsC[troop] )
                    
                    set u=CreateUnit(attackers, s___spawn__Troop_units[s__spawn__Troop_units[troop]+j], GetUnitX(s__spawn__Carrier_rax[this]), GetUnitY(s__spawn__Carrier_rax[this]), 0)
                    call TriggerRegisterUnitEvent(deadTrig, u, EVENT_UNIT_DEATH)
                    
                    set us[usC]=u
                    set usC=usC + 1
                    
                    if IsUnitType(u, UNIT_TYPE_FLYING) then
                        call IssuePointOrder(u, "attack", GetUnitX(gg_unit_haro_0075), GetUnitY(gg_unit_haro_0075))
                    else
                        call IssueTargetOrder(u, "smart", s__spawn__Carrier_boat[this])
                    endif
                    
                    set j=j + 1
                endloop
                
                loop
                    set c=0
                    set j=0
                
                    loop
                        exitwhen ( j >= usC )
                    
                        if IsUnitInTransport(us[j], s__spawn__Carrier_boat[this]) or IsUnitType(us[j], UNIT_TYPE_FLYING) then
                            set c=c + 1
                        endif
                        
                        set j=j + 1
                    endloop
                
                    exitwhen ( c >= usC )
                    
                    call TriggerSleepAction(1)
                endloop
                
                call IssuePointOrder(s__spawn__Carrier_boat[this], "unloadall", GetRectCenterX(s__spawn__Carrier_targetRect[this]), GetRectCenterY(s__spawn__Carrier_targetRect[this]))
                
                loop
                    exitwhen ( OrderId2String(GetUnitCurrentOrder(s__spawn__Carrier_boat[this])) != "unloadall" )
                    
                    call TriggerSleepAction(1)
                endloop
                
                set j=0
                
                loop
                    exitwhen ( j >= usC )
                    
                    call IssuePointOrder(us[j], "attack", GetUnitX(gg_unit_haro_0075), GetUnitY(gg_unit_haro_0075))
                    
                    set j=j + 1
                endloop
                
                call TriggerSleepAction(5)
                
                set i=i + 1
            endloop
            
            set s__spawn__Carrier_finished[this]=true
        endfunction
        
        function s__spawn__Carrier_create takes unit rax,unit boat,rect startRect,rect targetRect returns integer
            local integer this= s__spawn__Carrier__allocate()
        
            set s__spawn__Carrier_boat[this]=boat
            set s__spawn__Carrier_rax[this]=rax
            set s__spawn__Carrier_startRect[this]=startRect
            set s__spawn__Carrier_targetRect[this]=targetRect
            
            return this
        endfunction
    
    
    function spawn__startLevelExec takes nothing returns nothing
        local integer level= spawn_levels[spawn_curLevelIndex]
        local integer i= 0
        local integer c
        
        call TimerDialogDisplay(spawn_td, false)

        loop
            exitwhen ( i >= spawn_carriersC )
            
            call sx__spawn__Carrier_exec(spawn_carriers[i],spawn_level1)
            
            set i=i + 1
        endloop
        
        loop
            set c=0
            set i=0
            
            loop
                exitwhen ( i >= spawn_carriersC )
                
                if ( not s__spawn__Carrier_finished[spawn_carriers[i]] ) then
                    set c=c + 1
                endif
                
                set i=i + 1
            endloop
        
            exitwhen ( c == 0 )
        
            call TriggerSleepAction(1)
        endloop
    
        set spawn_curLevelIndex=spawn_curLevelIndex + 1
        
        if ( spawn_curLevelIndex < spawn_levelsC ) then
            call TriggerExecute(st___prototype1[(1)]) // INLINED!!
        else
            set spawn_curLevelIndex=spawn_levelsC - 1
            
            call TriggerExecute(st___prototype1[(1)]) // INLINED!!
        endif
    endfunction
    
    function spawn__startLevel takes nothing returns nothing
        call TriggerExecute(st___prototype1[(1)]) // INLINED!!
    endfunction
    
    function spawn_start takes nothing returns nothing
        set spawn_curLevelIndex=0
        set spawn_td=CreateTimerDialog(spawn_levelTimer)
    
        call TimerStart(spawn_levelTimer, 10, false, function spawn__startLevel)
    
        call TimerDialogDisplay(spawn_td, true)
        call TimerDialogSetTitle(spawn_td, "Level " + I2S(spawn_curLevelIndex + 1) + " starts in")
    endfunction
    
    function spawn__addCarrier takes unit rax,unit boat,rect startRect,rect targetRect returns nothing
        set spawn_carriers[spawn_carriersC]=s__spawn__Carrier_create(rax , boat , startRect , targetRect)
        set spawn_carriersC=spawn_carriersC + 1
    endfunction
    
    function spawn__addLevel takes integer level returns nothing
        set spawn_levels[spawn_levelsC]=level
        set spawn_levelsC=spawn_levelsC + 1
    endfunction
    
    function spawn__init_level1 takes nothing returns nothing
        local integer troopA
        local integer troopB
        local integer troopC
    
        set spawn_level1=s__spawn__Level__allocate()
        
        set troopA=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopA,'hfoo' , 4)
        
        set troopB=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopB,'hrif' , 4)
        
        set troopC=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopC,'hkni' , 4)
        
        call s__spawn__Level_addTroop(spawn_level1,troopA)
        call s__spawn__Level_addTroop(spawn_level1,troopB)
        call s__spawn__Level_addTroop(spawn_level1,troopC)
    endfunction
    
    function spawn__init_level2 takes nothing returns nothing
        local integer troopA
        local integer troopB
        local integer troopC
    
        set spawn_level2=s__spawn__Level__allocate()
        
        set troopA=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopA,'hkni' , 4)
        call s__spawn__Troop_addUnit(troopA,'hmtm' , 2)
        
        set troopB=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopB,'hpri' , 4)
        call s__spawn__Troop_addUnit(troopB,'hsor' , 4)
        
        set troopC=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopC,'hkni' , 4)
        call s__spawn__Troop_addUnit(troopB,'hgry' , 4)
        
        call s__spawn__Level_addTroop(spawn_level1,troopA)
        call s__spawn__Level_addTroop(spawn_level1,troopB)
        call s__spawn__Level_addTroop(spawn_level1,troopC)
    endfunction

    function spawn__init_level3 takes nothing returns nothing
        local integer troopA
        local integer troopB
        local integer troopC
    
        set spawn_level3=s__spawn__Level__allocate()
        
        set troopA=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopA,'hdhw' , 4)
        call s__spawn__Troop_addUnit(troopA,'hfoo' , 8)
        
        set troopB=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopB,'hspt' , 2)
        call s__spawn__Troop_addUnit(troopB,'hpri' , 2)
        call s__spawn__Troop_addUnit(troopB,'hkni' , 2)
        call s__spawn__Troop_addUnit(troopB,'hsor' , 2)
        
        set troopC=s__spawn__Troop__allocate()
        
        call s__spawn__Troop_addUnit(troopC,'hgry' , 4)
        call s__spawn__Troop_addUnit(troopC,'hmtm' , 4)
        call s__spawn__Troop_addUnit(troopB,'hkni' , 2)
        call s__spawn__Troop_addUnit(troopB,'hpri' , 2)
        
        call s__spawn__Level_addTroop(spawn_level1,troopA)
        call s__spawn__Level_addTroop(spawn_level1,troopB)
        call s__spawn__Level_addTroop(spawn_level1,troopC)
    endfunction
    
    function spawn__remoteInit takes nothing returns nothing
        
        call spawn__addCarrier(gg_unit_nheb_0001 , gg_unit_hbot_0042 , gg_rct_boatA , gg_rct_landingA)
        call spawn__addCarrier(gg_unit_nheb_0017 , gg_unit_hbot_0078 , gg_rct_boatB , gg_rct_landingB)
        call spawn__addCarrier(gg_unit_nheb_0039 , gg_unit_hbot_0079 , gg_rct_boatC , gg_rct_landingC)
        
        call spawn__init_level1()
        call spawn__init_level2()
        call spawn__init_level3()
        
        set spawn_level2=s__spawn__Level__allocate()
        set spawn_level3=s__spawn__Level__allocate()
        
        call spawn__addLevel(spawn_level1)
        call spawn__addLevel(spawn_level2)
        call spawn__addLevel(spawn_level3)
        
        call TriggerAddAction(deadTrig, function onDeath)
    endfunction
    
    function spawn__init takes nothing returns nothing
        call TimerStart(CreateTimer(), 0, false, function spawn__remoteInit)
    endfunction

//library spawn ends
//library start:
    
    function start__onTimer takes nothing returns nothing
        call PauseGame(true)
    
        call BJDebugMsg("Admist the skirmish, you think it should be about time for the reinforcements to arrive.")
        call BJDebugMsg("But you cannot make out anything, the mist and all the effort clouds your senses.")
        call BJDebugMsg("Just then, the enemy as you alike startle in awe as a breath of wind brushes through the air.")
        call BJDebugMsg("Before anything could make a move, a giant shockwave hits the shore, originating from the Marine's base direction.")
        call BJDebugMsg("After realizing the entire island the base was sitting on has blown up, the remaining enemies surrender themselves.")
    endfunction
    
    function start__startRemote takes nothing returns nothing
        set gameTimerDialog=CreateTimerDialog(gameTimer)
    
        call TimerStart(gameTimer, 15 * 60, false, function start__onTimer)
        
        call TimerDialogSetTitle(gameTimerDialog, "The Brotherhood arrives in")
        call TimerDialogDisplay(gameTimerDialog, true)
    
        call spawn_start()
    endfunction
    
    function start__start takes nothing returns nothing
        local boolean skip= false
        
        call SetTerrainFogEx(0, 10000, 10000, 0, 0, 0, 0)
        call SetCameraField(CAMERA_FIELD_FARZ, 10000, 0)
        
        if not skip then
            call CinematicModeBJ(true, players)
        
            call CameraSetupApply(gg_cam_lairA, true, true)
        
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.1, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            
            call TriggerSleepAction(4)
            
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "Hey there, recruits. Here you can see our hideout, an outpost of the Brotherhood.", 10, 10)
            
            call TriggerSleepAction(4)

            call CameraSetupApply(gg_cam_lairB, true, false)
            
            call TriggerSleepAction(4)
            
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "We've got ourselves an important mission. This radio transmitter needs to be maintained until the plan of the higher-ups will take effect...", 10, 10)
            
            call TriggerSleepAction(2)
            
            call CameraSetupApply(gg_cam_radio, true, false)
            
            call TriggerSleepAction(2)
            
            call RotateCameraAroundLocBJ(50, GetRectCenter(gg_rct_radio), GetLocalPlayer(), 2)
            
            call TriggerSleepAction(3)
            
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.5, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            
            call CameraSetupApply(gg_cam_marine, true, true)
            
            call TriggerSleepAction(2)
            
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "However, seems like the Marine got wind of this place. So now we are in quite the pickle.", 10, 10)
            
            call TriggerSleepAction(4)
            
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "Reinforcements from headquarters are to arrive in time, until then, we must not fail to protect the transmitter...", 10, 10)
            
            call TriggerSleepAction(4)
            
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "So help us to strengthen our defenses, rookies.", 10, 10)
            
            call TriggerSleepAction(6)
            
            call CinematicModeBJ(false, players)
        endif

        call TimerStart(CreateTimer(), 0, false, function start__startRemote)
    endfunction
    
    function start__userEnum takes nothing returns nothing
        local real x= GetRandomReal(GetRectMinX(gg_rct_start), GetRectMaxX(gg_rct_start))
        local real y= GetRandomReal(GetRectMinY(gg_rct_start), GetRectMaxY(gg_rct_start))

        call CreateUnit(GetEnumPlayer(), 'opeo', x, y, GetRandomDirectionDeg())
        call SetPlayerTechMaxAllowed(GetEnumPlayer(), 'npgf', 4)
        call SetPlayerAlliance(attackers, GetEnumPlayer(), ALLIANCE_PASSIVE, false)
        call SetPlayerAlliance(GetEnumPlayer(), attackers, ALLIANCE_PASSIVE, false)
        call SetPlayerState(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 100)
    endfunction
    
    function start__init takes nothing returns nothing
        local integer i= 0
        
        loop
            exitwhen ( i > 11 )
            
            if ( ( GetPlayerController(Player(i)) == MAP_CONTROL_USER ) and ( GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING ) ) then
                call ForceAddPlayer(players, Player(i))
            endif
            
            set i=i + 1
        endloop
        
        call ForForce(players, function start__userEnum)
        
        call SetPlayerAlliance(brotherhood, attackers, ALLIANCE_PASSIVE, false)
        call SetPlayerAlliance(attackers, brotherhood, ALLIANCE_PASSIVE, false)
        
        call FogMaskEnable(false)
        call FogEnable(false)
        
        call TriggerExecute(st___prototype1[(2)]) // INLINED!!
    endfunction

//library start ends
//===========================================================================
// 
// Brotherhood
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat May 07 23:09:13 2016
//   Map Author: WaterKnight
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_nheb_0001=CreateUnit(p, 'nheb', - 4864.0, - 3840.0, 270.000)
    set u=CreateUnit(p, 'negm', - 5888.0, - 3392.0, 270.000)
    set u=CreateUnit(p, 'negm', - 3776.0, - 4032.0, 270.000)
    set u=CreateUnit(p, 'negm', - 4864.0, - 5248.0, 270.000)
    set u=CreateUnit(p, 'hcas', - 6144.0, - 4608.0, 270.000)
    set u=CreateUnit(p, 'hbla', - 6144.0, - 4096.0, 270.000)
    set u=CreateUnit(p, 'halt', - 5088.0, - 4640.0, 270.000)
    set u=CreateUnit(p, 'nshp', - 3776.0, - 4928.0, 270.000)
    set u=CreateUnit(p, 'nshp', - 5376.0, - 2880.0, 270.000)
    set u=CreateUnit(p, 'nshp', - 3712.0, - 3392.0, 270.000)
    set u=CreateUnit(p, 'hgra', - 5632.0, - 4096.0, 270.000)
    set gg_unit_nheb_0017=CreateUnit(p, 'nheb', - 4736.0, - 4224.0, 270.000)
    set u=CreateUnit(p, 'negm', - 4608.0, - 3072.0, 270.000)
    set gg_unit_nheb_0039=CreateUnit(p, 'nheb', - 4352.0, - 4352.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hpea', - 5655.4, - 4620.8, 132.345)
    set u=CreateUnit(p, 'hpea', - 5729.7, - 4757.6, 313.263)
    set u=CreateUnit(p, 'hpea', - 5536.2, - 4771.6, 80.796)
    set u=CreateUnit(p, 'hdes', - 231.7, - 2194.8, 256.407)
    set gg_unit_hbot_0042=CreateUnit(p, 'hbot', - 3674.3, - 918.1, 40.815)
    set u=CreateUnit(p, 'hbsh', - 42.4, - 2393.7, 111.471)
    set gg_unit_hbot_0078=CreateUnit(p, 'hbot', - 2220.3, - 2260.6, 40.815)
    set gg_unit_hbot_0079=CreateUnit(p, 'hbot', - 1849.6, - 4386.6, 40.815)
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'harm', 6272.0, 2176.0, 270.000)
    set gg_unit_haro_0075=CreateUnit(p, 'haro', 5120.0, - 512.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nzep', 6366.5, 2357.3, 333.520)
    set gg_unit_nspc_0071=CreateUnit(p, 'nspc', 5253.1, - 578.6, 156.483)
    set gg_unit_nspc_0072=CreateUnit(p, 'nspc', 5121.9, - 659.6, 95.331)
    set gg_unit_nspc_0073=CreateUnit(p, 'nspc', 5090.3, - 405.9, 280.874)
    set gg_unit_nspc_0074=CreateUnit(p, 'nspc', 4974.3, - 568.9, 22.032)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'nmgv', 3328.0, 3328.0, 270.000)
    set u=CreateUnit(p, 'nmgv', - 1280.0, 2816.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'npng', 2301.5, 2522.1, 66.898)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer6()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer6()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_start=Rect(512.0, 512.0, 3584.0, 2560.0)
    set gg_rct_landingC=Rect(4896.0, - 2048.0, 5152.0, - 1824.0)
    set gg_rct_landingB=Rect(896.0, - 352.0, 1312.0, - 32.0)
    set gg_rct_landingA=Rect(- 3136.0, 608.0, - 2720.0, 832.0)
    set gg_rct_boatA=Rect(- 5248.0, - 2720.0, - 4640.0, - 2240.0)
    set gg_rct_boatB=Rect(- 3808.0, - 3360.0, - 3360.0, - 2784.0)
    set gg_rct_boatC=Rect(- 3648.0, - 4960.0, - 3136.0, - 4224.0)
    set gg_rct_radio=Rect(4832.0, - 704.0, 5344.0, - 224.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_radio=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_ROTATION, 44.4, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_ANGLE_OF_ATTACK, 321.3, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_TARGET_DISTANCE, 2657.3, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_radio, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_radio, 5467.3, - 145.8, 0.0)

    set gg_cam_marine=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_ROTATION, 93.5, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_ANGLE_OF_ATTACK, 312.7, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_TARGET_DISTANCE, 2923.1, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_marine, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_marine, - 4930.3, - 4395.1, 0.0)

    set gg_cam_lairB=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_ROTATION, 94.5, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_ANGLE_OF_ATTACK, 324.4, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_TARGET_DISTANCE, 6265.9, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_lairB, CAMERA_FIELD_FARZ, 8857.8, 0.0)
    call CameraSetupSetDestPosition(gg_cam_lairB, 5096.0, - 484.6, 0.0)

    set gg_cam_lairA=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_ROTATION, 66.9, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_ANGLE_OF_ATTACK, 324.1, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_TARGET_DISTANCE, 6265.9, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_lairA, CAMERA_FIELD_FARZ, 8857.8, 0.0)
    call CameraSetupSetDestPosition(gg_cam_lairA, - 526.6, 1170.3, 0.0)

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: spawn
//===========================================================================
//TESH.scrollpos=230
//TESH.alwaysfold=0
// Trigger: init
//===========================================================================
//TESH.scrollpos=6
//TESH.alwaysfold=0
// Trigger: dead
//===========================================================================
//TESH.scrollpos=15
//TESH.alwaysfold=0
// scope dead begins

    function Trig_dead_Actions takes nothing returns nothing
        if ( dead_gameOver ) then
            return
        endif
    
        set dead_cnt=dead_cnt + 1
        
        if ( dead_cnt < 4 ) then
            return
        endif
        
        set dead_gameOver=true
        
        call KillUnit(gg_unit_haro_0075)
        
        call TriggerSleepAction(4)
        
        call PauseGame(true)
        
        call BJDebugMsg("The radio transmitter lies in smithereens. The Marines' mission has successfully thwarted the Brotherhood's ambitions...")
    endfunction

    //===========================================================================
    function dead__init takes nothing returns nothing
        set gg_trg_dead=CreateTrigger()
        call TriggerRegisterUnitEvent(gg_trg_dead, gg_unit_nspc_0074, EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(gg_trg_dead, gg_unit_nspc_0072, EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(gg_trg_dead, gg_unit_nspc_0071, EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(gg_trg_dead, gg_unit_nspc_0073, EVENT_UNIT_DEATH)
        call TriggerAddAction(gg_trg_dead, function Trig_dead_Actions)
    endfunction
// scope dead ends
// Trigger: supply
//===========================================================================
//TESH.scrollpos=5
//TESH.alwaysfold=0
// scope supply begins
    
    function supply__onDeath takes nothing returns nothing
        if ( GetUnitTypeId(GetTriggerUnit()) != 'npgf' ) then
            return
        endif
    
        set supply__cnt[GetPlayerId(GetTriggerPlayer())]=supply__cnt[GetPlayerId(GetTriggerPlayer())] - 1
    endfunction
    
    function supply__onBuild takes nothing returns nothing
        if ( GetUnitTypeId(GetTriggerUnit()) != 'npgf' ) then
            return
        endif
        
        set supply__cnt[GetPlayerId(GetTriggerPlayer())]=supply__cnt[GetPlayerId(GetTriggerPlayer())] + 1
    endfunction
    
    function supply__userEnum takes nothing returns nothing
        call AdjustPlayerStateBJ(supply__cnt[GetPlayerId(GetEnumPlayer())], GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD)
    endfunction
    
    function supply__onLoop takes nothing returns nothing
        call ForForce(players, function supply__userEnum)
    endfunction
    
    function supply__init takes nothing returns nothing
        call TriggerRegisterAnyUnitEventBJ(supply__buildTrig, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    
        call TriggerAddAction(supply__buildTrig, function supply__onBuild)
    
        call TriggerRegisterAnyUnitEventBJ(supply__deathTrig, EVENT_PLAYER_UNIT_DEATH)
        
        call TriggerAddAction(supply__deathTrig, function supply__onDeath)
        
        call TimerStart(CreateTimer(), 10, true, function supply__onLoop)
    endfunction
// scope supply ends
//===========================================================================
// Trigger: rax
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// scope rax begins
    
    function rax__onTrain takes nothing returns nothing
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'nban')
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'hgyr')
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'orai')
    endfunction
    
    function rax__onBuild takes nothing returns nothing
        local integer id= GetUnitTypeId(GetTriggerUnit())
    
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'nban')
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'hgyr')
        call IssueTrainOrderByIdBJ(GetTriggerUnit(), 'orai')
        
        if ( ( id == 'nfac' ) or ( id == 'nten' ) or ( id == 'obea' ) ) then
            //call SetUnitOwner(GetTriggerUnit(), brotherhood, true)
        endif
    endfunction
    
    function rax__init takes nothing returns nothing
        call TriggerRegisterAnyUnitEventBJ(rax__buildTrig, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    
        call TriggerAddAction(rax__buildTrig, function rax__onBuild)
        
        call TriggerRegisterAnyUnitEventBJ(rax__trainTrig, EVENT_PLAYER_UNIT_TRAIN_FINISH)
        
        call TriggerAddAction(rax__trainTrig, function rax__onTrain)
    endfunction
// scope rax ends

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_spawn()
    //Function not found: call InitTrig_init()
    //Function not found: call InitTrig_dead()
    //Function not found: call InitTrig_supply()
    //Function not found: call InitTrig_rax()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_NEUTRAL)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call ForcePlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call ForcePlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)

    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call ForcePlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call ForcePlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_013
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 0)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(8), 0)
    call SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(9), 0)
    call SetPlayerState(Player(9), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(10), 0)
    call SetPlayerState(Player(10), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)

    // Force: TRIGSTR_017
    call SetPlayerTeam(Player(1), 1)
    call SetPlayerTeam(Player(11), 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(1), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(1), true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 3)
    call SetStartLocPrio(0, 0, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 7, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(0, 2, 9, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 2)
    call SetStartLocPrio(1, 0, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 4, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 3)
    call SetStartLocPrio(2, 0, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 2)
    call SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 1, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4, 4)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 3, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4, 2, 5, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4, 3, 9, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 3)
    call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 7, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(5, 2, 9, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 2)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 5, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(8, 1)
    call SetStartLocPrio(8, 0, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(9, 2)
    call SetStartLocPrio(9, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 1, 5, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(10, 1)
    call SetStartLocPrio(10, 0, 8, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(11, 1)
    call SetStartLocPrio(11, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5120.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 5120.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 5632.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("SunkenRuinsDay")
    call SetAmbientNightSound("SunkenRuinsNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateCameras()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs45502418")
call ExecuteFunc("spawn__init")
call ExecuteFunc("start__init")
call dead__init()
call supply__init()
call rax__init()

    call InitGlobals()
    call InitCustomTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_015")
    call SetMapDescription("")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, 3008.0, 2688.0)
    call DefineStartLocation(1, 192.0, 3840.0)
    call DefineStartLocation(2, - 1856.0, 3776.0)
    call DefineStartLocation(3, - 704.0, 3136.0)
    call DefineStartLocation(4, 1472.0, 3648.0)
    call DefineStartLocation(5, 3776.0, 2752.0)
    call DefineStartLocation(6, 3200.0, 4032.0)
    call DefineStartLocation(7, 3584.0, 1792.0)
    call DefineStartLocation(8, - 1984.0, 2368.0)
    call DefineStartLocation(9, 3136.0, 3456.0)
    call DefineStartLocation(10, - 1408.0, 2496.0)
    call DefineStartLocation(11, 2176.0, 2304.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa__spawn__Carrier_exec takes nothing returns boolean
local integer this=f__arg_this
local integer level=f__arg_integer1
            local integer i= 0
            local integer j
            local integer troop
            local unit u
            local unit array us
            local integer usC
            local integer c
            set s__spawn__Carrier_finished[this]=false
            loop
                exitwhen ( i >= s__spawn__Level_troopsC[level] )
                call IssuePointOrder(s__spawn__Carrier_boat[this], "move", GetRectCenterX(s__spawn__Carrier_startRect[this]), GetRectCenterY(s__spawn__Carrier_startRect[this]))
                loop
                    exitwhen RectContainsUnit(s__spawn__Carrier_startRect[this], s__spawn__Carrier_boat[this])
                    call TriggerSleepAction(1)
                endloop
                set troop=s___spawn__Level_troops[s__spawn__Level_troops[level]+i]
                set j=0
                set usC=0
                loop
                    exitwhen ( j >= s__spawn__Troop_unitsC[troop] )
                    set u=CreateUnit(attackers, s___spawn__Troop_units[s__spawn__Troop_units[troop]+j], GetUnitX(s__spawn__Carrier_rax[this]), GetUnitY(s__spawn__Carrier_rax[this]), 0)
                    call TriggerRegisterUnitEvent(deadTrig, u, EVENT_UNIT_DEATH)
                    set us[usC]=u
                    set usC=usC + 1
                    if IsUnitType(u, UNIT_TYPE_FLYING) then
                        call IssuePointOrder(u, "attack", GetUnitX(gg_unit_haro_0075), GetUnitY(gg_unit_haro_0075))
                    else
                        call IssueTargetOrder(u, "smart", s__spawn__Carrier_boat[this])
                    endif
                    set j=j + 1
                endloop
                loop
                    set c=0
                    set j=0
                    loop
                        exitwhen ( j >= usC )
                        if IsUnitInTransport(us[j], s__spawn__Carrier_boat[this]) or IsUnitType(us[j], UNIT_TYPE_FLYING) then
                            set c=c + 1
                        endif
                        set j=j + 1
                    endloop
                    exitwhen ( c >= usC )
                    call TriggerSleepAction(1)
                endloop
                call IssuePointOrder(s__spawn__Carrier_boat[this], "unloadall", GetRectCenterX(s__spawn__Carrier_targetRect[this]), GetRectCenterY(s__spawn__Carrier_targetRect[this]))
                loop
                    exitwhen ( OrderId2String(GetUnitCurrentOrder(s__spawn__Carrier_boat[this])) != "unloadall" )
                    call TriggerSleepAction(1)
                endloop
                set j=0
                loop
                    exitwhen ( j >= usC )
                    call IssuePointOrder(us[j], "attack", GetUnitX(gg_unit_haro_0075), GetUnitY(gg_unit_haro_0075))
                    set j=j + 1
                endloop
                call TriggerSleepAction(5)
                set i=i + 1
            endloop
            set s__spawn__Carrier_finished[this]=true
   return true
endfunction
function sa___prototype1_spawn__startLevelExec takes nothing returns boolean

        local integer level= spawn_levels[spawn_curLevelIndex]
        local integer i= 0
        local integer c
        call TimerDialogDisplay(spawn_td, false)
        loop
            exitwhen ( i >= spawn_carriersC )
            call sx__spawn__Carrier_exec(spawn_carriers[i],spawn_level1)
            set i=i + 1
        endloop
        loop
            set c=0
            set i=0
            loop
                exitwhen ( i >= spawn_carriersC )
                if ( not s__spawn__Carrier_finished[spawn_carriers[i]] ) then
                    set c=c + 1
                endif
                set i=i + 1
            endloop
            exitwhen ( c == 0 )
            call TriggerSleepAction(1)
        endloop
        set spawn_curLevelIndex=spawn_curLevelIndex + 1
        if ( spawn_curLevelIndex < spawn_levelsC ) then
            call TriggerExecute(st___prototype1[(1)]) // INLINED!!
        else
            set spawn_curLevelIndex=spawn_levelsC - 1
            call TriggerExecute(st___prototype1[(1)]) // INLINED!!
        endif
    return true
endfunction
function sa___prototype1_start__start takes nothing returns boolean

        local boolean skip= false
        call SetTerrainFogEx(0, 10000, 10000, 0, 0, 0, 0)
        call SetCameraField(CAMERA_FIELD_FARZ, 10000, 0)
        if not skip then
            call CinematicModeBJ(true, players)
            call CameraSetupApply(gg_cam_lairA, true, true)
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.1, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            call TriggerSleepAction(4)
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "Hey there, recruits. Here you can see our hideout, an outpost of the Brotherhood.", 10, 10)
            call TriggerSleepAction(4)
            call CameraSetupApply(gg_cam_lairB, true, false)
            call TriggerSleepAction(4)
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "We've got ourselves an important mission. This radio transmitter needs to be maintained until the plan of the higher-ups will take effect...", 10, 10)
            call TriggerSleepAction(2)
            call CameraSetupApply(gg_cam_radio, true, false)
            call TriggerSleepAction(2)
            call RotateCameraAroundLocBJ(50, GetRectCenter(gg_rct_radio), GetLocalPlayer(), 2)
            call TriggerSleepAction(3)
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.5, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            call CameraSetupApply(gg_cam_marine, true, true)
            call TriggerSleepAction(2)
            call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 255, 255, 255, 0)
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "However, seems like the Marine got wind of this place. So now we are in quite the pickle.", 10, 10)
            call TriggerSleepAction(4)
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "Reinforcements from headquarters are to arrive in time, until then, we must not fail to protect the transmitter...", 10, 10)
            call TriggerSleepAction(4)
            call SetCinematicScene('hmil', PLAYER_COLOR_GREEN, "Grunt of the Brotherhood", "So help us to strengthen our defenses, rookies.", 10, 10)
            call TriggerSleepAction(6)
            call CinematicModeBJ(false, players)
        endif
        call TimerStart(CreateTimer(), 0, false, function start__startRemote)
    return true
endfunction

function jasshelper__initstructs45502418 takes nothing returns nothing
    set st__spawn__Carrier_exec=CreateTrigger()
    call TriggerAddCondition(st__spawn__Carrier_exec,Condition( function sa__spawn__Carrier_exec))
    call TriggerAddAction(st__spawn__Carrier_exec, function sa__spawn__Carrier_exec)
    set st___prototype1[1]=CreateTrigger()
    call TriggerAddAction(st___prototype1[1],function sa___prototype1_spawn__startLevelExec)
    call TriggerAddCondition(st___prototype1[1],Condition(function sa___prototype1_spawn__startLevelExec))
    set st___prototype1[2]=CreateTrigger()
    call TriggerAddAction(st___prototype1[2],function sa___prototype1_start__start)
    call TriggerAddCondition(st___prototype1[2],Condition(function sa___prototype1_start__start))






endfunction

