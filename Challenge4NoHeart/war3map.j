globals
//globals from libAbil:
constant boolean LIBRARY_libAbil=true
hashtable libAbil___table
//endglobals from libAbil
//globals from libAvoidSuicide:
constant boolean LIBRARY_libAvoidSuicide=true
trigger libAvoidSuicide___t
//endglobals from libAvoidSuicide
//globals from libDeath:
constant boolean LIBRARY_libDeath=true
timer libDeath___gameTimer
//endglobals from libDeath
//globals from libPlayer:
constant boolean LIBRARY_libPlayer=true
force libPlayer_all
//endglobals from libPlayer
//globals from libUnitType:
constant boolean LIBRARY_libUnitType=true
hashtable libUnitType___table
//endglobals from libUnitType
//globals from libJoyShield:
constant boolean LIBRARY_libJoyShield=true
//endglobals from libJoyShield
//globals from libUnit:
constant boolean LIBRARY_libUnit=true
hashtable data
trigger constructTrigger
trigger deathTrigger
trigger upgradeFinishTrigger
group dummyGroup
//endglobals from libUnit
//globals from libBears:
constant boolean LIBRARY_libBears=true
integer id= 'n000'
//endglobals from libBears
//globals from libInit:
constant boolean LIBRARY_libInit=true
//endglobals from libInit
    // Generated
rect gg_rct_players= null
rect gg_rct_spawn= null
trigger gg_trg_unitType= null
trigger gg_trg_abil= null
trigger gg_trg_unit= null
trigger gg_trg_timer= null
trigger gg_trg_wave= null
trigger gg_trg_attackBehavior= null
trigger gg_trg_JoyShield= null
trigger gg_trg_death= null
trigger gg_trg_avoidSuicide= null
trigger gg_trg_initGUI= null
trigger gg_trg_player= null
trigger gg_trg_bears= null
trigger gg_trg_init= null
unit gg_unit_n003_0016= null
unit gg_unit_n003_0017= null

trigger l__library_init

//JASSHelper struct globals:
constant integer si__abil=1
integer si__abil_F=0
integer si__abil_I=0
integer array si__abil_V
integer array s__abil_self
trigger array s__abil_learnTrigger
trigger array s__abil_unlearnTrigger
constant integer si__playerData=2
integer si__playerData_F=0
integer si__playerData_I=0
integer array si__playerData_V
multiboard s__playerData_lb=null
integer s__playerData_count=- 1
multiboarditem s__playerData_mbi=null
player array s__playerData_self
integer array s__playerData_income
integer array s__playerData_lbIndex
integer array s__playerData_colorCodeR
integer array s__playerData_colorCodeG
integer array s__playerData_colorCodeB
constant integer si__unitType=3
integer si__unitType_F=0
integer si__unitType_I=0
integer array si__unitType_V
integer array s___unitType_abils
constant integer s___unitType_abils_size=12
integer array s__unitType_abils
integer array s__unitType_abilsCount
integer array s__unitType_self
constant integer si__JoyShield=5
integer si__JoyShield_F=0
integer si__JoyShield_I=0
integer array si__JoyShield_V
constant integer si__libUnit_attachment=6
integer si__libUnit_attachment_F=0
integer si__libUnit_attachment_I=0
integer array si__libUnit_attachment_V
effect array s__libUnit_attachment_self
constant integer si__unitData=7
integer si__unitData_F=0
integer si__unitData_I=0
integer array si__unitData_V
integer s__unitData_eventUnit
integer array s___unitData_sfx
constant integer s___unitData_sfx_size=12
integer array s__unitData_sfx
integer array s__unitData_sfxCount
integer array s___unitData_abils
constant integer s___unitData_abils_size=12
integer array s__unitData_abils
integer array s__unitData_abilsCount
integer array s__unitData_typeId
unit array s__unitData_self
constant integer si__Timer=10
integer si__Timer_F=0
integer si__Timer_I=0
integer array si__Timer_V
hashtable s__Timer_table
integer array s__Timer_data
integer array s___Timer_dataEx
constant integer s___Timer_dataEx_size=5
integer array s__Timer_dataEx
timer array s__Timer_self
constant integer si__wave=12
integer si__wave_F=0
integer si__wave_I=0
integer array si__wave_V
integer s__wave_allCount=- 1
integer array s___wave_unitTypes
constant integer s___wave_unitTypes_size=12
integer array s__wave_unitTypes
integer array s___wave_unitTypeTimer
constant integer s___wave_unitTypeTimer_size=12
integer array s__wave_unitTypeTimer
integer array s___wave_unitTypesAmount
constant integer s___wave_unitTypesAmount_size=12
integer array s__wave_unitTypesAmount
trigger array s___wave_unitTypesAction
constant integer s___wave_unitTypesAction_size=12
integer array s__wave_unitTypesAction
integer array s__wave_spawnersCount
integer array s__wave_startTimer
integer array s__wave_endTimer
real array s__wave_startDelay
real array s__wave_duration
timerdialog s__wave_firstDialog
timer s__wave_firstTimer
integer s__wave_spawnedUnit
constant integer si__attackBehavior=17
integer si__attackBehavior_F=0
integer si__attackBehavior_I=0
integer array si__attackBehavior_V
group s__attackBehavior_dummyGroup
group s__attackBehavior_targets
trigger st__unitType_getFromSelf
trigger st__unitData_addEffectOnLoc
trigger st__unitData_addAbil
trigger st__unitData_getFromSelf
trigger st__wave_init
trigger st__attackBehavior_init
integer f__arg_integer1
string f__arg_string1
real f__arg_real1
unit f__arg_unit1
integer f__arg_this
integer f__result_integer

endglobals


//Generated allocator of abil
function s__abil__allocate takes nothing returns integer
 local integer this=si__abil_F
    if (this!=0) then
        set si__abil_F=si__abil_V[this]
    else
        set si__abil_I=si__abil_I+1
        set this=si__abil_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__abil_V[this]=-1
 return this
endfunction

//Generated destructor of abil
function s__abil_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__abil_V[this]!=-1) then
        return
    endif
    set si__abil_V[this]=si__abil_F
    set si__abil_F=this
endfunction

//Generated method caller for attackBehavior.init
function sc__attackBehavior_init takes nothing returns nothing
    call TriggerEvaluate(st__attackBehavior_init)
endfunction

//Generated allocator of attackBehavior
function s__attackBehavior__allocate takes nothing returns integer
 local integer this=si__attackBehavior_F
    if (this!=0) then
        set si__attackBehavior_F=si__attackBehavior_V[this]
    else
        set si__attackBehavior_I=si__attackBehavior_I+1
        set this=si__attackBehavior_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__attackBehavior_V[this]=-1
 return this
endfunction

//Generated destructor of attackBehavior
function s__attackBehavior_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__attackBehavior_V[this]!=-1) then
        return
    endif
    set si__attackBehavior_V[this]=si__attackBehavior_F
    set si__attackBehavior_F=this
endfunction

//Generated method caller for wave.init
function sc__wave_init takes nothing returns nothing
    call TriggerEvaluate(st__wave_init)
endfunction

//Generated allocator of wave
function s__wave__allocate takes nothing returns integer
 local integer this=si__wave_F
    if (this!=0) then
        set si__wave_F=si__wave_V[this]
    else
        set si__wave_I=si__wave_I+1
        set this=si__wave_I
    endif
    if (this>681) then
        return 0
    endif
    set s__wave_unitTypes[this]=(this-1)*12
    set s__wave_unitTypeTimer[this]=(this-1)*12
    set s__wave_unitTypesAmount[this]=(this-1)*12
    set s__wave_unitTypesAction[this]=(this-1)*12
    set si__wave_V[this]=-1
 return this
endfunction

//Generated destructor of wave
function s__wave_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__wave_V[this]!=-1) then
        return
    endif
    set si__wave_V[this]=si__wave_F
    set si__wave_F=this
endfunction

//Generated allocator of Timer
function s__Timer__allocate takes nothing returns integer
 local integer this=si__Timer_F
    if (this!=0) then
        set si__Timer_F=si__Timer_V[this]
    else
        set si__Timer_I=si__Timer_I+1
        set this=si__Timer_I
    endif
    if (this>1637) then
        return 0
    endif
    set s__Timer_dataEx[this]=(this-1)*5
    set si__Timer_V[this]=-1
 return this
endfunction

//Generated destructor of Timer
function s__Timer_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Timer_V[this]!=-1) then
        return
    endif
    set si__Timer_V[this]=si__Timer_F
    set si__Timer_F=this
endfunction

//Generated method caller for unitData.addEffectOnLoc
function sc__unitData_addEffectOnLoc takes integer this,string path,real height returns nothing
    set f__arg_this=this
    set f__arg_string1=path
    set f__arg_real1=height
    call TriggerEvaluate(st__unitData_addEffectOnLoc)
endfunction

//Generated method caller for unitData.addAbil
function sc__unitData_addAbil takes integer this,integer l__id returns nothing
    set f__arg_this=this
    set f__arg_integer1=l__id
    call TriggerEvaluate(st__unitData_addAbil)
endfunction

//Generated method caller for unitData.getFromSelf
function sc__unitData_getFromSelf takes unit self returns integer
            return LoadInteger(data, GetHandleId(self), 0)
endfunction

//Generated allocator of unitData
function s__unitData__allocate takes nothing returns integer
 local integer this=si__unitData_F
    if (this!=0) then
        set si__unitData_F=si__unitData_V[this]
    else
        set si__unitData_I=si__unitData_I+1
        set this=si__unitData_I
    endif
    if (this>681) then
        return 0
    endif
    set s__unitData_sfx[this]=(this-1)*12
    set s__unitData_abils[this]=(this-1)*12
    set si__unitData_V[this]=-1
 return this
endfunction

//Generated destructor of unitData
function s__unitData_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__unitData_V[this]!=-1) then
        return
    endif
    set si__unitData_V[this]=si__unitData_F
    set si__unitData_F=this
endfunction

//Generated allocator of libUnit_attachment
function s__libUnit_attachment__allocate takes nothing returns integer
 local integer this=si__libUnit_attachment_F
    if (this!=0) then
        set si__libUnit_attachment_F=si__libUnit_attachment_V[this]
    else
        set si__libUnit_attachment_I=si__libUnit_attachment_I+1
        set this=si__libUnit_attachment_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__libUnit_attachment_V[this]=-1
 return this
endfunction

//Generated destructor of libUnit_attachment
function s__libUnit_attachment_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__libUnit_attachment_V[this]!=-1) then
        return
    endif
    set si__libUnit_attachment_V[this]=si__libUnit_attachment_F
    set si__libUnit_attachment_F=this
endfunction

//Generated allocator of JoyShield
function s__JoyShield__allocate takes nothing returns integer
 local integer this=si__JoyShield_F
    if (this!=0) then
        set si__JoyShield_F=si__JoyShield_V[this]
    else
        set si__JoyShield_I=si__JoyShield_I+1
        set this=si__JoyShield_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__JoyShield_V[this]=-1
 return this
endfunction

//Generated destructor of JoyShield
function s__JoyShield_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__JoyShield_V[this]!=-1) then
        return
    endif
    set si__JoyShield_V[this]=si__JoyShield_F
    set si__JoyShield_F=this
endfunction

//Generated method caller for unitType.getFromSelf
function sc__unitType_getFromSelf takes integer self returns integer
    set f__arg_integer1=self
    call TriggerEvaluate(st__unitType_getFromSelf)
 return f__result_integer
endfunction

//Generated allocator of unitType
function s__unitType__allocate takes nothing returns integer
 local integer this=si__unitType_F
    if (this!=0) then
        set si__unitType_F=si__unitType_V[this]
    else
        set si__unitType_I=si__unitType_I+1
        set this=si__unitType_I
    endif
    if (this>681) then
        return 0
    endif
    set s__unitType_abils[this]=(this-1)*12
    set si__unitType_V[this]=-1
 return this
endfunction

//Generated destructor of unitType
function s__unitType_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__unitType_V[this]!=-1) then
        return
    endif
    set si__unitType_V[this]=si__unitType_F
    set si__unitType_F=this
endfunction

//Generated allocator of playerData
function s__playerData__allocate takes nothing returns integer
 local integer this=si__playerData_F
    if (this!=0) then
        set si__playerData_F=si__playerData_V[this]
    else
        set si__playerData_I=si__playerData_I+1
        set this=si__playerData_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__playerData_V[this]=-1
 return this
endfunction

//Generated destructor of playerData
function s__playerData_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__playerData_V[this]!=-1) then
        return
    endif
    set si__playerData_V[this]=si__playerData_F
    set si__playerData_F=this
endfunction

//library libAbil:
    
        

        function s__abil_setUnlearn takes integer this,code actionFunc returns nothing
            call TriggerAddCondition(s__abil_unlearnTrigger[this], Condition(actionFunc))
        endfunction

        function s__abil_setLearn takes integer this,code actionFunc returns nothing
            call TriggerAddCondition(s__abil_learnTrigger[this], Condition(actionFunc))
        endfunction
        
        function s__abil_getFromSelf takes integer self returns integer
            local integer this
            
            if LoadInteger(libAbil___table, self, 0) == 0 then
                set this=s__abil__allocate()
                
                set s__abil_self[this]=self
                set s__abil_learnTrigger[this]=CreateTrigger()
                set s__abil_unlearnTrigger[this]=CreateTrigger()
                
                call SaveInteger(libAbil___table, self, 0, this)
                
                return this
            endif
            
            return LoadInteger(libAbil___table, self, 0)
        endfunction
        
        function s__abil_onInit takes nothing returns nothing
            
        endfunction

    function libAbil_init takes nothing returns nothing
        set libAbil___table=InitHashtable()
    endfunction

//library libAbil ends
//library libAvoidSuicide:
    
    function libAvoidSuicide___onOrder takes nothing returns nothing
        local real x
        local real y
        
        return
        
        if GetOrderTargetUnit() == null then
            return
        endif
        
        if not IsUnitAlly(GetOrderTargetUnit(), GetOwningPlayer(GetTriggerUnit())) then
            return
        endif
        
        set x=GetUnitX(GetTriggerUnit()) + Cos(GetUnitFacing(GetTriggerUnit()) * bj_DEGTORAD)
        set y=GetUnitY(GetTriggerUnit()) + Sin(GetUnitFacing(GetTriggerUnit()) * bj_DEGTORAD)
        
        call IssuePointOrder(GetTriggerUnit(), "move", x, y)
    endfunction
    
    function libAvoidSuicide___initPlayer takes nothing returns nothing
        call TriggerRegisterPlayerUnitEvent(libAvoidSuicide___t, GetEnumPlayer(), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null)
    endfunction
    
    function libAvoidSuicide_init takes nothing returns nothing
        set libAvoidSuicide___t=CreateTrigger()
        
        call TriggerAddAction(libAvoidSuicide___t, function libAvoidSuicide___onOrder)
        call ForForce(libPlayer_all, function libAvoidSuicide___initPlayer)
    endfunction

//library libAvoidSuicide ends
//library libDeath:
    
    function libDeath___endGame takes nothing returns nothing
        call EndGame(false)
    endfunction
    
    function libDeath___update takes nothing returns nothing
        if GetUnitLifePercent(gg_unit_n003_0017) > 0 then
            return
        endif
        if GetUnitLifePercent(gg_unit_n003_0016) > 0 then
            return
        endif
        
        call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "You withstood the unaffected for " + R2S(TimerGetElapsed(libDeath___gameTimer)) + " seconds but now the world falls into a deep slumber...")
        
        call TimerStart(GetExpiredTimer(), 5, false, function libDeath___endGame)
    endfunction
    
    function libDeath_init takes nothing returns nothing
        set libDeath___gameTimer=CreateTimer()
        
        call TimerStart(CreateTimer(), 1, true, function libDeath___update)
        call TimerStart(libDeath___gameTimer, 99999, false, null)
    endfunction

//library libDeath ends
//library libPlayer:
    
        
        
        
        
        function s__playerData_addIncome takes integer this,integer val returns nothing
            set s__playerData_income[this]=s__playerData_income[this] + val
            
            set s__playerData_mbi=MultiboardGetItem(s__playerData_lb, s__playerData_lbIndex[this], 1)
            
            call MultiboardSetItemValue(s__playerData_mbi, I2S(s__playerData_income[this]))
            
            call MultiboardReleaseItem(s__playerData_mbi)
        endfunction
        
        function s__playerData_getFromSelf takes player self returns integer
            return GetPlayerId(self)
        endfunction
        
        function s__playerData_reg takes player self,boolean hasIncome returns integer
            local integer this= GetPlayerId(self)
            
            set s__playerData_self[this]=self
            if hasIncome then
                set s__playerData_income[this]=3
            else
                set s__playerData_income[this]=0
            endif
            
            set s__playerData_count=s__playerData_count + 1
            
            if ( s__playerData_lb == null ) then
                set s__playerData_lb=CreateMultiboard()
                
                call MultiboardSetTitleText(s__playerData_lb, "income (per 5 sec)")
                call MultiboardSetRowCount(s__playerData_lb, 0)
                call MultiboardSetColumnCount(s__playerData_lb, 2)
            endif

            set s__playerData_lbIndex[this]=s__playerData_count
            
            call MultiboardSetRowCount(s__playerData_lb, MultiboardGetRowCount(s__playerData_lb) + 1)
            
            call MultiboardSetItemStyle(MultiboardGetItem(s__playerData_lb, s__playerData_count, 0), true, false)
            call MultiboardSetItemStyle(MultiboardGetItem(s__playerData_lb, s__playerData_count, 1), true, false)
            call MultiboardSetItemValueColor(MultiboardGetItem(s__playerData_lb, s__playerData_count, 0), s__playerData_colorCodeR[this], s__playerData_colorCodeG[this], s__playerData_colorCodeB[this], 255)
            call MultiboardSetItemValue(MultiboardGetItem(s__playerData_lb, s__playerData_count, 0), GetPlayerName(self))
            call MultiboardSetItemValue(MultiboardGetItem(s__playerData_lb, s__playerData_count, 1), I2S(s__playerData_income[this]))
            call MultiboardSetItemWidth(MultiboardGetItem(s__playerData_lb, s__playerData_count, 0), 0.08)
            call MultiboardSetItemWidth(MultiboardGetItem(s__playerData_lb, s__playerData_count, 1), 0.02)
            
            call MultiboardDisplay(s__playerData_lb, true)
            
            return this
        endfunction
        
        function s__playerData_setColorCode takes integer this,real red,real green,real blue returns nothing
            set s__playerData_colorCodeR[this]=R2I(red * 255 / 100)
            set s__playerData_colorCodeG[this]=R2I(green * 255 / 100)
            set s__playerData_colorCodeB[this]=R2I(blue * 255 / 100)
        endfunction
        
        function s__playerData_onInit takes nothing returns nothing
            call s__playerData_setColorCode((0),100 , 1.17 , 1.17)
            call s__playerData_setColorCode((1),0 , 25.88 , 100)
            call s__playerData_setColorCode((2),9.80 , 90.20 , 72.55)
            call s__playerData_setColorCode((3),32.94 , 0.00 , 50.59)
            call s__playerData_setColorCode((4),100.00 , 98.82 , 0.40)
            call s__playerData_setColorCode((5),99.61 , 72.94 , 5.49)
            call s__playerData_setColorCode((6),12.55 , 75.30 , 0.00)
            call s__playerData_setColorCode((7),89.80 , 35.69 , 69.02)
            call s__playerData_setColorCode((8),58.43 , 58.82 , 59.21)
            call s__playerData_setColorCode((9),49.41 , 74.90 , 94.51)
            call s__playerData_setColorCode((10),6.27 , 38.43 , 27.45)
            call s__playerData_setColorCode((11),30.59 , 16.47 , 1.57)
        endfunction
    
    function libPlayer___addState takes player p,playerstate state,integer val returns nothing
        call SetPlayerState(p, state, GetPlayerState(p, state) + val)
    endfunction
    
    function libPlayer___addGold_enum takes nothing returns nothing
        call libPlayer___addState(GetEnumPlayer() , PLAYER_STATE_RESOURCE_GOLD , s__playerData_income[(GetPlayerId((GetEnumPlayer())))]) // INLINED!!
    endfunction
    
    function libPlayer___addGold takes nothing returns nothing
        call ForForce(libPlayer_all, function libPlayer___addGold_enum)
    endfunction
    
    function libPlayer_init takes nothing returns nothing
        local integer i=11
        local player p
    
        set libPlayer_all=CreateForce()
    
        loop
            exitwhen ( i < 0 )
            
            set p=Player(i)
            
            if ( ( GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING ) and ( GetPlayerController(p) == MAP_CONTROL_USER ) ) then
                call ForceAddPlayer(libPlayer_all, p)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, 20)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, 50)
                if ( i < 11 ) then
                    call s__playerData_reg(p , true)
                else
                    call s__playerData_reg(p , false)
                endif
            endif
            
            set i=i - 1
        endloop
        
        call TimerStart(CreateTimer(), 5, true, function libPlayer___addGold)
    endfunction

//library libPlayer ends
//library libUnitType:
    

        
        function s__unitType_onUnitMorph takes unit u returns nothing
            local integer this=sc__unitType_getFromSelf(GetUnitTypeId(u))
        
            local integer i=s__unitType_abilsCount[this]
            
            loop
                exitwhen ( i < 0 )
                
                call sc__unitData_addAbil((LoadInteger(data, GetHandleId((u)), 0)),s___unitType_abils[s__unitType_abils[this]+i]) // INLINED!!
                
                set i=i - 1
            endloop
        endfunction

        function s__unitType_onUnitCreate takes unit u returns nothing
            local integer this=sc__unitType_getFromSelf(GetUnitTypeId(u))
        
            local integer i=s__unitType_abilsCount[this]
            
            loop
                exitwhen ( i < 0 )

                call sc__unitData_addAbil((LoadInteger(data, GetHandleId((u)), 0)),s___unitType_abils[s__unitType_abils[this]+i]) // INLINED!!
                
                set i=i - 1
            endloop
        endfunction
        
function s__unitType_addAbility takes integer this,integer l__id returns nothing
            set s__unitType_abilsCount[this]=s__unitType_abilsCount[this] + 1
            set s___unitType_abils[s__unitType_abils[this]+s__unitType_abilsCount[this]]=l__id
        endfunction
        
        function s__unitType_getFromSelf takes integer self returns integer
            local integer this
            
            if LoadInteger(libUnitType___table, self, 0) == 0 then
                set this=s__unitType__allocate()
                
                set s__unitType_self[this]=self
                set s__unitType_abilsCount[this]=- 1
                
                call SaveInteger(libUnitType___table, self, 0, this)
                
                return this
            endif
            
            return LoadInteger(libUnitType___table, self, 0)
        endfunction
        
        function s__unitType_initTypes takes nothing returns nothing
            call s__unitType_addAbility(s__unitType_getFromSelf('n003'),'A000')
            call s__unitType_addAbility(s__unitType_getFromSelf('h001'),'A000')
        endfunction

    function libUnitType_init takes nothing returns nothing
        set libUnitType___table=InitHashtable()
        
        call s__unitType_initTypes()
    endfunction

//library libUnitType ends
//library libJoyShield:
        function s__JoyShield_onLearn takes nothing returns nothing
            call sc__unitData_addEffectOnLoc(s__unitData_eventUnit,"Abilities\\Spells\\NightElf\\Rejuvenation\\RejuvenationTarget.mdl" , 100)
        endfunction
        
        function s__JoyShield_onInit takes nothing returns nothing

        endfunction

    function libJoyShield_init takes nothing returns nothing
        call TriggerAddCondition(s__abil_learnTrigger[(s__abil_getFromSelf('A000'))], Condition((function s__JoyShield_onLearn))) // INLINED!!
    endfunction

//library libJoyShield ends
//library libUnit:
    
        
        function s__libUnit_attachment_destroy takes integer this returns nothing
            call DestroyEffect(s__libUnit_attachment_self[this])
            
            call s__libUnit_attachment_deallocate(this)
        endfunction

        function s__libUnit_attachment_createOnLoc takes unit u,string path,real height returns integer
            local integer this= s__libUnit_attachment__allocate()
            
            local real x= GetUnitX(u)
            local real y= GetUnitY(u)
            
            local destructable d= CreateDestructableZ('B000', x, y, height, 0, 1, 0)
            
            set s__libUnit_attachment_self[this]=AddSpecialEffect(path, x, y)
            
            call RemoveDestructable(d)
            
            set d=null
            
            return this
        endfunction

        function s__libUnit_attachment_create takes unit u,string path,string point returns integer
            local integer this= s__libUnit_attachment__allocate()
            
            set s__libUnit_attachment_self[this]=AddSpecialEffectTarget(path, u, point)
            
            return this
        endfunction
    
        
        
        
        
        
        function s__unitData_clearEffects takes integer this returns nothing
            loop
                exitwhen ( s__unitData_sfxCount[this] < 0 )
                
                call s__libUnit_attachment_destroy(s___unitData_sfx[s__unitData_sfx[this]+s__unitData_sfxCount[this]])
                
                set s__unitData_sfxCount[this]=s__unitData_sfxCount[this] - 1
            endloop
        endfunction
        
        function s__unitData_addEffect takes integer this,string path,string point returns nothing
            set s__unitData_sfxCount[this]=s__unitData_sfxCount[this] + 1
            
            set s___unitData_sfx[s__unitData_sfx[this]+s__unitData_sfxCount[this]]=s__libUnit_attachment_create(s__unitData_self[this] , path , point)
        endfunction

        function s__unitData_addEffectOnLoc takes integer this,string path,real height returns nothing
            set s__unitData_sfxCount[this]=s__unitData_sfxCount[this] + 1
            
            set s___unitData_sfx[s__unitData_sfx[this]+s__unitData_sfxCount[this]]=s__libUnit_attachment_createOnLoc(s__unitData_self[this] , path , height)
        endfunction

        function s__unitData_clearAbils takes integer this returns nothing
            local integer l__id
            
            loop
                exitwhen ( s__unitData_abilsCount[this] < 0 )
                
                set l__id=s___unitData_abils[s__unitData_abils[this]+s__unitData_abilsCount[this]]
                
                set s__unitData_eventUnit=this
                
                call UnitRemoveAbility(s__unitData_self[this], l__id)
                call TriggerEvaluate(s__abil_unlearnTrigger[s__abil_getFromSelf(l__id)])
                
                set s__unitData_abilsCount[this]=s__unitData_abilsCount[this] - 1
            endloop
        endfunction
        
function s__unitData_addAbil takes integer this,integer l__id returns nothing
            set s__unitData_abilsCount[this]=s__unitData_abilsCount[this] + 1
            
            set s___unitData_abils[s__unitData_abils[this]+s__unitData_abilsCount[this]]=l__id

            set s__unitData_eventUnit=this
            
            call UnitAddAbility(s__unitData_self[this], l__id)
            call TriggerEvaluate(s__abil_learnTrigger[s__abil_getFromSelf(l__id)])
        endfunction
        
        function s__unitData_getFromSelf takes unit self returns integer
            return LoadInteger(data, GetHandleId(self), 0)
        endfunction

        function s__unitData_destroy takes integer this returns nothing
            call s__unitData_clearAbils(this)
            call s__unitData_clearEffects(this)
            
            call s__unitData_deallocate(this)
        endfunction
        
        function s__unitData_reg takes unit self returns integer
            local integer this
            
            if ( (LoadInteger(data, GetHandleId((self)), 0)) == 0 ) then // INLINED!!
                set this=s__unitData__allocate()
                
                set s__unitData_self[this]=self
                set s__unitData_sfxCount[this]=- 1
                set s__unitData_typeId[this]=GetUnitTypeId(self)
                
                call SaveInteger(data, GetHandleId(self), 0, this)
                
                call s__unitType_onUnitCreate(self)
                
                return this
            endif
            
            return (LoadInteger(data, GetHandleId((self)), 0)) // INLINED!!
        endfunction
        
        function s__unitData_create2 takes player p,integer typeId,real x,real y,real ang returns integer
            return s__unitData_reg(CreateUnit(p, typeId, x, y, ang))
        endfunction
    
    function libUnit_create takes player p,integer typeId,real x,real y,real ang returns integer
        return (s__unitData_reg(CreateUnit((p ), ( typeId ), (( x )*1.0), (( y )*1.0), (( ang)*1.0)))) // INLINED!!
    endfunction

    function libUnit___onDeath takes nothing returns nothing
        call s__unitData_destroy((LoadInteger(data, GetHandleId((GetTriggerUnit())), 0))) // INLINED!!
    endfunction

    function libUnit___onConstruct takes nothing returns nothing
        call s__unitData_reg(GetTriggerUnit())
    endfunction
    
    function libUnit___onUpgradeFinish takes nothing returns nothing
        local integer u=(LoadInteger(data, GetHandleId((GetTriggerUnit())), 0)) // INLINED!!
        
        set s__unitData_typeId[u]=GetUnitTypeId(s__unitData_self[u])
        
        if ( s__unitData_typeId[u] == 'h001' ) then
            call s__playerData_addIncome((GetPlayerId((GetOwningPlayer(s__unitData_self[u])))),1) // INLINED!!
        endif
        if ( s__unitData_typeId[u] == 'h002' ) then
            call s__playerData_addIncome((GetPlayerId((GetOwningPlayer(s__unitData_self[u])))),1) // INLINED!!
        endif
        
        call s__unitType_onUnitMorph(s__unitData_self[u])
    endfunction
    
    function libUnit___initPlayer takes nothing returns nothing
        call TriggerRegisterPlayerUnitEvent(deathTrigger, GetEnumPlayer(), EVENT_PLAYER_UNIT_DEATH, null)
        call TriggerRegisterPlayerUnitEvent(constructTrigger, GetEnumPlayer(), EVENT_PLAYER_UNIT_CONSTRUCT_START, null)
        call TriggerRegisterPlayerUnitEvent(upgradeFinishTrigger, GetEnumPlayer(), EVENT_PLAYER_UNIT_UPGRADE_FINISH, null)
    endfunction
    
    function libUnit___initUnits takes nothing returns nothing
        call s__unitData_reg(GetEnumUnit())
    endfunction
    
    function libUnit_init takes nothing returns nothing
        set data=InitHashtable()
        set dummyGroup=CreateGroup()

        set constructTrigger=CreateTrigger()
        call TriggerAddAction(constructTrigger, function libUnit___onConstruct)

        set deathTrigger=CreateTrigger()
        call TriggerAddAction(deathTrigger, function libUnit___onDeath)

        set upgradeFinishTrigger=CreateTrigger()
        call TriggerAddAction(upgradeFinishTrigger, function libUnit___onUpgradeFinish)

        call ForForce(libPlayer_all, function libUnit___initPlayer)
        
        call GroupEnumUnitsInRect(dummyGroup, GetWorldBounds(), null)
        
        call ForGroup(dummyGroup, function libUnit___initUnits)
    endfunction

//library libUnit ends
//library libBears:
    
    function libBears___create takes nothing returns nothing
        local location l=GetRandomLocInRect(gg_rct_players)
        
        local real x=GetLocationX(l)
        local real y=GetLocationY(l)
        
        local real ang=GetRandomDirectionDeg()
        
call s__unitData_reg(CreateUnit(((GetEnumPlayer() ) ), ( ( id ) ), (( (( x )*1.0) )*1.0), (( (( y )*1.0) )*1.0), (( (( ang)*1.0))*1.0))) // INLINED!!
    endfunction
    
    function libBears_init takes nothing returns nothing
        call ForForce(libPlayer_all, function libBears___create)
    endfunction

//library libBears ends
//library libInit:
    function libInit___go takes nothing returns nothing
        call libPlayer_init()
        call libUnit_init()
        set libAbil___table=InitHashtable() // INLINED!!
        call libUnitType_init()
        
        call ForForce(libPlayer_all, function libBears___create) // INLINED!!
        call TriggerAddCondition(s__abil_learnTrigger[(s__abil_getFromSelf('A000'))], Condition((function s__JoyShield_onLearn))) // INLINED!!
        
        call TriggerEvaluate(st__wave_init) // INLINED!!
        call TriggerEvaluate(st__attackBehavior_init) // INLINED!!
        
        call libDeath_init()
        call libAvoidSuicide_init()
    endfunction
    
    function libInit___init takes nothing returns nothing
        call TimerStart(CreateTimer(), 0, false, function libInit___go)
    endfunction

//library libInit ends
//===========================================================================
// 
// No Heart
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sun Aug 17 03:12:08 2014
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
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_n003_0016=CreateUnit(p, 'n003', 1472.0, 1408.0, 270.000)
    set gg_unit_n003_0017=CreateUnit(p, 'n003', - 1664.0, 1344.0, 270.000)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'n002', - 128.0, - 512.0, 270.000)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreateBuildingsForPlayer0() // INLINED!!
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_players=Rect(- 704.0, - 800.0, 320.0, 128.0)
    set gg_rct_spawn=Rect(- 832.0, - 4096.0, 384.0, - 3680.0)
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: unitType
//===========================================================================
//TESH.scrollpos=2
//TESH.alwaysfold=0
// Trigger: abil
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: unit
//===========================================================================
//TESH.scrollpos=136
//TESH.alwaysfold=0
// Trigger: timer
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
    
    
    function s__Timer_getData takes integer this returns integer
        return s__Timer_data[this]
    endfunction

    function s__Timer_getDataEx takes integer this,integer index returns integer
        return s___Timer_dataEx[s__Timer_dataEx[this]+index]
    endfunction

    function s__Timer_setDataEx takes integer this,integer index,integer val returns nothing
        set s___Timer_dataEx[s__Timer_dataEx[this]+index]=val
    endfunction
    
    function s__Timer_start takes integer this,real timeout,boolean periodic,code action returns nothing
        call TimerStart(s__Timer_self[this], timeout, periodic, action)
    endfunction
    
    function s__Timer_getFromSelf takes timer self returns integer
        return LoadInteger(s__Timer_table, GetHandleId(self), 0)
    endfunction
    
    function s__Timer_getExpired takes nothing returns integer
        return (LoadInteger(s__Timer_table, GetHandleId((GetExpiredTimer())), 0)) // INLINED!!
    endfunction
    
    function s__Timer_destroy takes integer this returns nothing
        call PauseTimer(s__Timer_self[this])
        call DestroyTimer(s__Timer_self[this])
    endfunction
    
function s__Timer_create takes integer l__data returns integer
        local integer this= s__Timer__allocate()
        
        set s__Timer_data[this]=l__data
        set s__Timer_self[this]=CreateTimer()
        
        call SaveInteger(s__Timer_table, GetHandleId(s__Timer_self[this]), 0, this)
        
        return this
    endfunction
    
    function s__Timer_onInit takes nothing returns nothing
        set s__Timer_table=InitHashtable()
    endfunction
// Trigger: wave
//===========================================================================
//TESH.scrollpos=103
//TESH.alwaysfold=0
    

    
    
    
    
    function s__wave_onEnd takes nothing returns nothing
        local integer this= (s__Timer_data[((LoadInteger(s__Timer_table, GetHandleId((GetExpiredTimer())), 0)))]) // INLINED!!
        
        local integer i= s__wave_spawnersCount[this]
        
        loop
            exitwhen ( i < 0 )
            
            call s__Timer_destroy(s___wave_unitTypeTimer[s__wave_unitTypeTimer[this]+i])
            
            set i=i - 1
        endloop
        
        call s__Timer_destroy(s__wave_endTimer[this])
    endfunction
    
    function s__wave_spawn takes nothing returns nothing
        local integer this= (s__Timer_data[((LoadInteger(s__Timer_table, GetHandleId((GetExpiredTimer())), 0)))]) // INLINED!!
        local integer index= (s___Timer_dataEx[s__Timer_dataEx[((LoadInteger(s__Timer_table, GetHandleId((GetExpiredTimer())), 0)))]+(0)]) // INLINED!!
        
        local real x= GetRandomReal(GetRectMinX(gg_rct_spawn), GetRectMaxX(gg_rct_spawn))
        local real y= GetRandomReal(GetRectMinY(gg_rct_spawn), GetRectMaxY(gg_rct_spawn))
        
        set s__wave_spawnedUnit=(s__unitData_reg(CreateUnit(((Player(11) ) ), ( ( s___wave_unitTypes[s__wave_unitTypes[this]+index] ) ), (( (( x )*1.0) )*1.0), (( (( y )*1.0) )*1.0), (( (( 90)*1.0))*1.0)))) // INLINED!!
        
        if s___wave_unitTypesAction[s__wave_unitTypesAction[this]+index] != null then
            call TriggerEvaluate(s___wave_unitTypesAction[s__wave_unitTypesAction[this]+index])
        endif
    endfunction
    
    function s__wave_onStart takes nothing returns nothing
        local integer this= (s__Timer_data[((LoadInteger(s__Timer_table, GetHandleId((GetExpiredTimer())), 0)))]) // INLINED!!
        
        local integer i=s__wave_spawnersCount[this]
        
        loop
            exitwhen ( i < 0 )
            
            set s___wave_unitTypeTimer[s__wave_unitTypeTimer[this]+i]=s__Timer_create(this)
            
            set s___Timer_dataEx[s__Timer_dataEx[(s___wave_unitTypeTimer[s__wave_unitTypeTimer[this]+i])]+(0 )]=( i) // INLINED!!
            
            call TimerStart(s__Timer_self[(s___wave_unitTypeTimer[s__wave_unitTypeTimer[this]+i])], ((s__wave_duration[this] / s___wave_unitTypesAmount[s__wave_unitTypesAmount[this]+i] )*1.0), ( true ), ( function s__wave_spawn)) // INLINED!!
            
            set i=i - 1
        endloop
        
        call TimerStart(s__Timer_self[(s__wave_endTimer[this])], ((s__wave_duration[this] )*1.0), ( false ), ( function s__wave_onEnd)) // INLINED!!
    endfunction
    
    function s__wave_addType takes integer this,integer unitTypeId,integer amount,code actionFunc returns nothing
        set s__wave_spawnersCount[this]=s__wave_spawnersCount[this] + 1
        set s___wave_unitTypes[s__wave_unitTypes[this]+s__wave_spawnersCount[this]]=unitTypeId
        set s___wave_unitTypesAmount[s__wave_unitTypesAmount[this]+s__wave_spawnersCount[this]]=amount

        if actionFunc == null then
            set s___wave_unitTypesAction[s__wave_unitTypesAction[this]+s__wave_spawnersCount[this]]=null
        else
            set s___wave_unitTypesAction[s__wave_unitTypesAction[this]+s__wave_spawnersCount[this]]=CreateTrigger()
            call TriggerAddCondition(s___wave_unitTypesAction[s__wave_unitTypesAction[this]+s__wave_spawnersCount[this]], Condition(actionFunc))
        endif
    endfunction
    
    function s__wave_firstHideDialog takes nothing returns nothing
        call TimerDialogDisplay(s__wave_firstDialog, false)
    endfunction
    
    function s__wave_create takes real startDelay,real duration returns integer
        local integer this= s__wave__allocate()
        
        set s__wave_allCount=s__wave_allCount + 1
        
        set s__wave_spawnersCount[this]=- 1
        
        set s__wave_startDelay[this]=startDelay
        set s__wave_duration[this]=duration
        
        set s__wave_startTimer[this]=s__Timer_create(this)
        set s__wave_endTimer[this]=s__Timer_create(this)
        
        if s__wave_allCount == 0 then
            set s__wave_firstTimer=CreateTimer()
            set s__wave_firstDialog=CreateTimerDialog(s__wave_firstTimer)
            
            call TimerDialogSetTitle(s__wave_firstDialog, "First wave")
            
            call TimerDialogDisplay(s__wave_firstDialog, true)
            
            call TimerStart(s__wave_firstTimer, startDelay, false, function s__wave_firstHideDialog)
        endif
        
        call TimerStart(s__Timer_self[(s__wave_startTimer[this])], ((startDelay )*1.0), ( false ), ( function s__wave_onStart)) // INLINED!!
        
        return this
    endfunction
    
    function s__wave_spawn_noHeart takes nothing returns nothing
        call UnitAddItem(s__unitData_self[s__wave_spawnedUnit], CreateItem('ankh', 0, 0))
    endfunction
    
    function s__wave_init takes nothing returns nothing
        local integer this
        
        set this=s__wave_create(5 , 10 * 60)
        
        call s__wave_addType(this,'u000' , 200 , null)
        
        set this=s__wave_create(1.5 * 60 , 5 * 60)
        
        call s__wave_addType(this,'u001' , 50 , null)

        set this=s__wave_create(1.5 * 60 , 5 * 60)
        
        call s__wave_addType(this,'u002' , 100 , null)

        set this=s__wave_create(5 , 1)
        
        call s__wave_addType(this,'U003' , 1 , function s__wave_spawn_noHeart)
    endfunction
// Trigger: attackBehavior
//===========================================================================
//TESH.scrollpos=10
//TESH.alwaysfold=0
    
    function s__attackBehavior_sendUnit2 takes unit source,unit target returns nothing
        local real x= GetUnitX(target)
        local real y= GetUnitY(target)
        
        call IssuePointOrder(source, "attack", x, y)
    endfunction
    
    function s__attackBehavior_sendUnit takes nothing returns nothing
        local integer oldOrder= GetUnitCurrentOrder(GetEnumUnit())
        
        if ( oldOrder == OrderId("attack") ) then
            return
        endif

        call s__attackBehavior_sendUnit2(GetEnumUnit() , GroupPickRandomUnit(s__attackBehavior_targets))
    endfunction
    
    function s__attackBehavior_addPlayerUnits takes nothing returns nothing
        if GetEnumPlayer() == Player(11) then
            return
        endif
        
        call GroupEnumUnitsOfPlayer(s__attackBehavior_dummyGroup, GetEnumPlayer(), null)
        
        call GroupAddGroup(s__attackBehavior_dummyGroup, s__attackBehavior_targets)
    endfunction
    
    function s__attackBehavior_update takes nothing returns nothing
        call GroupClear(s__attackBehavior_targets)
        
        call ForForce(libPlayer_all, function s__attackBehavior_addPlayerUnits)
        
        call GroupEnumUnitsOfPlayer(s__attackBehavior_dummyGroup, Player(11), null)
        
        call ForGroup(s__attackBehavior_dummyGroup, function s__attackBehavior_sendUnit)
    endfunction
    
    function s__attackBehavior_init takes nothing returns nothing
        set s__attackBehavior_dummyGroup=CreateGroup()
        set s__attackBehavior_targets=CreateGroup()
    
        call TimerStart(CreateTimer(), 2, true, function s__attackBehavior_update)
    endfunction
// Trigger: JoyShield
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: death
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: avoidSuicide
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: initGUI
//===========================================================================
function Trig_initGUI_Actions takes nothing returns nothing
    call UseTimeOfDayBJ(false)
    call SetTimeOfDay(12)
    call FogMaskEnableOff()
    call FogEnableOff()
    call SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_FARZ, 50000.00, 0)
    call SetDoodadAnimationRectBJ("stand", 'JZud', GetEntireMapRect())
endfunction

//===========================================================================
function InitTrig_initGUI takes nothing returns nothing
    set gg_trg_initGUI=CreateTrigger()
    call TriggerAddAction(gg_trg_initGUI, function Trig_initGUI_Actions)
endfunction

//===========================================================================
// Trigger: player
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: bears
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: init
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_unitType()
    //Function not found: call InitTrig_abil()
    //Function not found: call InitTrig_unit()
    //Function not found: call InitTrig_timer()
    //Function not found: call InitTrig_wave()
    //Function not found: call InitTrig_attackBehavior()
    //Function not found: call InitTrig_JoyShield()
    //Function not found: call InitTrig_death()
    //Function not found: call InitTrig_avoidSuicide()
    call InitTrig_initGUI()
    //Function not found: call InitTrig_player()
    //Function not found: call InitTrig_bears()
    //Function not found: call InitTrig_init()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_initGUI)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), true)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), true)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), true)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), true)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), true)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(9), true)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)

    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(10), true)
    call SetPlayerController(Player(10), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(11), true)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_034
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerTeam(Player(7), 0)
    call SetPlayerTeam(Player(8), 0)
    call SetPlayerTeam(Player(9), 0)
    call SetPlayerTeam(Player(10), 0)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)

    // Force: TRIGSTR_033
    call SetPlayerTeam(Player(11), 1)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 2)
    call SetStartLocPrio(0, 0, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 9, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(1, 2)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 1)
    call SetStartLocPrio(2, 0, 8, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 1)
    call SetStartLocPrio(3, 0, 4, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4, 2)
    call SetStartLocPrio(4, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 1)
    call SetStartLocPrio(5, 0, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(6, 1)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 4)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7, 1, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 9, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7, 3, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(8, 1)
    call SetStartLocPrio(8, 0, 2, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(9, 1)
    call SetStartLocPrio(9, 0, 10, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(10, 1)
    call SetStartLocPrio(10, 0, 9, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3584.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3584.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3584.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3584.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3584.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("VillageDay")
    call SetAmbientNightSound("VillageNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs63216987")
call ExecuteFunc("libInit___init")

    call InitGlobals()
    call InitTrig_initGUI() // INLINED!!
    call ConditionalTriggerExecute(gg_trg_initGUI) // INLINED!!

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("TRIGSTR_005")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, 448.0, 1216.0)
    call DefineStartLocation(1, 384.0, - 128.0)
    call DefineStartLocation(2, 2752.0, 2624.0)
    call DefineStartLocation(3, - 2176.0, - 2816.0)
    call DefineStartLocation(4, - 768.0, - 1856.0)
    call DefineStartLocation(5, - 1280.0, 3200.0)
    call DefineStartLocation(6, 1152.0, 1088.0)
    call DefineStartLocation(7, - 2176.0, 1536.0)
    call DefineStartLocation(8, 3072.0, 1792.0)
    call DefineStartLocation(9, 128.0, 2240.0)
    call DefineStartLocation(10, - 448.0, 2432.0)
    call DefineStartLocation(11, - 64.0, 3264.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa__attackBehavior_init takes nothing returns boolean

        set s__attackBehavior_dummyGroup=CreateGroup()
        set s__attackBehavior_targets=CreateGroup()
        call TimerStart(CreateTimer(), 2, true, function s__attackBehavior_update)
   return true
endfunction
function sa__wave_init takes nothing returns boolean

        local integer this
        set this=s__wave_create(5 , 10 * 60)
        call s__wave_addType(this,'u000' , 200 , null)
        set this=s__wave_create(1.5 * 60 , 5 * 60)
        call s__wave_addType(this,'u001' , 50 , null)
        set this=s__wave_create(1.5 * 60 , 5 * 60)
        call s__wave_addType(this,'u002' , 100 , null)
        set this=s__wave_create(5 , 1)
        call s__wave_addType(this,'U003' , 1 , function s__wave_spawn_noHeart)
   return true
endfunction
function sa__unitData_addEffectOnLoc takes nothing returns boolean
local integer this=f__arg_this
local string path=f__arg_string1
local real height=f__arg_real1
            set s__unitData_sfxCount[this]=s__unitData_sfxCount[this] + 1
            set s___unitData_sfx[s__unitData_sfx[this]+s__unitData_sfxCount[this]]=s__libUnit_attachment_createOnLoc(s__unitData_self[this] , path , height)
   return true
endfunction
function sa__unitData_addAbil takes nothing returns boolean
local integer this=f__arg_this
local integer l__id=f__arg_integer1
            set s__unitData_abilsCount[this]=s__unitData_abilsCount[this] + 1
            set s___unitData_abils[s__unitData_abils[this]+s__unitData_abilsCount[this]]=l__id
            set s__unitData_eventUnit=this
            call UnitAddAbility(s__unitData_self[this], l__id)
            call TriggerEvaluate(s__abil_learnTrigger[s__abil_getFromSelf(l__id)])
   return true
endfunction
function sa__unitData_getFromSelf takes nothing returns boolean
    set f__result_integer=(LoadInteger(data, GetHandleId((f__arg_unit1)), 0)) // INLINED!!
   return true
endfunction
function sa__unitType_getFromSelf takes nothing returns boolean
local integer self=f__arg_integer1
            local integer this
            if LoadInteger(libUnitType___table, self, 0) == 0 then
                set this=s__unitType__allocate()
                set s__unitType_self[this]=self
                set s__unitType_abilsCount[this]=- 1
                call SaveInteger(libUnitType___table, self, 0, this)
set f__result_integer= this
return true
            endif
set f__result_integer= LoadInteger(libUnitType___table, self, 0)
   return true
endfunction

function jasshelper__initstructs63216987 takes nothing returns nothing
    set st__attackBehavior_init=CreateTrigger()
    call TriggerAddCondition(st__attackBehavior_init,Condition( function sa__attackBehavior_init))
    set st__wave_init=CreateTrigger()
    call TriggerAddCondition(st__wave_init,Condition( function sa__wave_init))
    set st__unitData_addEffectOnLoc=CreateTrigger()
    call TriggerAddCondition(st__unitData_addEffectOnLoc,Condition( function sa__unitData_addEffectOnLoc))
    set st__unitData_addAbil=CreateTrigger()
    call TriggerAddCondition(st__unitData_addAbil,Condition( function sa__unitData_addAbil))
    set st__unitData_getFromSelf=CreateTrigger()
    call TriggerAddCondition(st__unitData_getFromSelf,Condition( function sa__unitData_getFromSelf))
    set st__unitType_getFromSelf=CreateTrigger()
    call TriggerAddCondition(st__unitType_getFromSelf,Condition( function sa__unitType_getFromSelf))


















    call ExecuteFunc("s__abil_onInit")
    call ExecuteFunc("s__playerData_onInit")
    call ExecuteFunc("s__JoyShield_onInit")
    call ExecuteFunc("s__Timer_onInit")
endfunction

