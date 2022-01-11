state("manhunt")
{
	int currentStage: 0x1E4AAC, 0x4;
	int playerNotDefined: 0x27D4BC, 0x34;
	int tapeCutsceneGoing: 0x11E67C, 0x20;
	int executionBeingPerformed: 0x00F3E8, 0x430;
	int menuStatus: 0x029DB0, 0x124;
	short forStart1 : 0x01DE1E4, 0x0;
	int forStart2 : 0x01D8EA4, 0x0;
	byte forEnd1 : 0x0049684, 0x410;
}

start 
{
	if (current.currentStage == 0 && current.forStart1 == 1 && current.forStart2 > 0 && old.forStart2 == 0){
	return true;
	}
}

split 
{
	if (current.currentStage > old.currentStage){
	return true;
	}
	if (current.currentStage == 19 && current.executionBeingPerformed == 1 && old.executionBeingPerformed == 0 && current.forEnd1 == 1 && old.forEnd1 == 0){
	return true;
	}
	else if (current.currentStage == 19 && current.executionBeingPerformed == 1 && old.executionBeingPerformed == 0 && current.forEnd1 == 1){
	return true;
	}
	else if (current.currentStage == 19 && current.executionBeingPerformed == 1 && current.forEnd1 == 1 && old.forEnd1 == 0){
	return true;
	}
}

reset 
{
	if (current.currentStage == 0 && current.menuStatus == 3 && current.tapeCutsceneGoing == 0){
	return true;
	}
}