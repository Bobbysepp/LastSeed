scriptname _LS_Main_1_0 extends Quest

GlobalVariable property _LS_HungerRate auto
GlobalVariable property _LS_ThirstRate auto
GlobalVariable property _LS_FatigueRate auto

GlobalVariable property _LS_Hunger auto
GlobalVariable property _LS_Thirst auto
GlobalVariable property _LS_Fatigue auto

Event OnUpdate()

	DistanceCheck()
	WaitCheck()
	
	ApplyHunger()
	ApplyThirst()
	ApplyFatigue()
	
	ApplyHungerEffects()
	ApplyThirstEffects()
	ApplyFatigueEffects()
	
endEvent



function ApplyHunger()
	;The default survival time is 7 days
	
endFunction

function ApplyThirst()
	;The default survival time is 1 - 2 days
	
endFunction

function ApplyFatigue()
	;The default time to max fatigue is 3 days
	
endFunction