state("manhunt")
{
	int currentStage: 0x1E4AAC, 0x4;
	int playerNotDefined: 0x27D4BC, 0x34;
	int tapeCutsceneGoing: 0x11E67C, 0x20;
	int executionBeingPerformed: 0x00F3E8, 0x430;
	int menuStatus: 0x029DB0, 0x124;
}

start 
{
	if (current.currentStage == 0 && current.playerNotDefined == 0 && current.tapeCutsceneGoing == 1) {
	return true;
	}
}

split 
{
	if (current.currentStage > old.currentStage){
	return true;
	}
}

reset 
{
	if (current.currentStage == 0 && current.menuStatus == 3 && current.tapeCutsceneGoing == 0){
	return true;
	}
}