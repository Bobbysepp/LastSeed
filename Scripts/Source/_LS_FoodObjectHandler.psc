scriptname _LS_FoodObjectHandler extends ActiveMagicEffect

_LS_Compatibility property Compatibility auto
_LS_Main_1_0 property LastSeed auto

ObjectReference mySelf

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if mySelf as Potion
		if mySelf.IsFood()
			
			int iFoodCategory = 0
			if Compatibility.ArrayHasFormXT("meat_stew", mySelf)
				iFoodCategory = 1
			elseif Compatibility.ArrayHasFormXT("vegetable_fruit", mySelf)
				iFoodCategory = 2
			elseif Compatibility.ArrayHasFormXT("bread_pastry", mySelf)
				iFoodCategory = 3
			elseif Compatibility.ArrayHasFormXT("cheese", mySelf)
				iFoodCategory = 4
			else
				iFoodCategory = 5
			endif
			
			;What is the shelf life?
			if iFoodCategory == 1
				;1 day (low frequency)
			elseif iFoodCategory == 2
				;2 - 3 days (medium frequency)
			elseif iFoodCategory == 3
				;1 week (medium-high frequency)
			elseif iFoodCategory == 4
				;2 weeks (high frequency)
			else
				;forever (very high frequency)
			endif
			
			;What is this location's type? (use a property to fetch this quickly)
			myLocation = mySelf.GetCurrentLocation()
			if myLocation.HasKeyword(LocTypeHouse)
				if myLocation.HasKeyword(TGWealthyHome)
					;Rich house, high food frequency and quality
				else
					;Normal / poor house, normal food frequency and quality
				endif
			elseif myLocation.HasKeyword(
			elseif myLocation.HasKeyword(LocTypeInn)
				;High food quality, lower frequency
			elseif myLocation.HasKeyword(LocTypeCastle)
				;High food quality, high frequency
			elseif myLocation.HasKeyword(LocTypeMilitaryFort)
				;medium food quality, medium food frequency
			elseif myLocation.HasKeyword(LocTypeBanditCamp)
				;medium-poor food quality, poor food frequency
			
			
			;Would the civil war have an impact on this?
		
			;What is its proximity to its source? (hard problem)
		
		endif
	endif
endEvent
