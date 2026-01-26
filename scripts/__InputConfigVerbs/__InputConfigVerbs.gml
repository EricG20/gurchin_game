function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        UP,
        DOWN,
        LEFT,
        RIGHT,
		JUMP,
        ACCEPT,
        CANCEL,
        ACTION,
        SPECIAL,
        PAUSE,
		SHOOT,
		KICK,
		BOOST,
		RELOAD,
		AIMUP,
		AIMDOWN,
		AIMLEFT,
		AIMRIGHT
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
		AIMING
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",         [vk_up,    "W"],    [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",       [vk_down,  "S"],    [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",       [vk_left,  "A"],    [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",      [vk_right, "D"],    [ gp_axislh, gp_padr]);
		InputDefineVerb(INPUT_VERB.SHOOT,	"shoot",	   mb_left,				gp_shoulderrb);
		InputDefineVerb(INPUT_VERB.KICK,	"kick",		   mb_right,			gp_shoulderr);
		InputDefineVerb(INPUT_VERB.RELOAD,	"reload",	   "R",					gp_face3);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",      "E",					gp_face4);
		InputDefineVerb(INPUT_VERB.JUMP,	"jump",		   vk_space,            gp_face1);
        InputDefineVerb(INPUT_VERB.CANCEL,  "cancel",      vk_backspace,        gp_face2);
        InputDefineVerb(INPUT_VERB.ACTION,  "action",      vk_enter,            gp_face3);
        InputDefineVerb(INPUT_VERB.SPECIAL, "special",     vk_shift,            gp_face4);
		InputDefineVerb(INPUT_VERB.BOOST,	"boost",	   vk_shift,            gp_shoulderlb);
        InputDefineVerb(INPUT_VERB.PAUSE,   "pause",      [vk_escape, vk_backspace, vk_enter],           gp_start);
		InputDefineVerb(INPUT_VERB.AIMUP,   "aimup",      [vk_up,    "W"],    -gp_axisrv);
        InputDefineVerb(INPUT_VERB.AIMDOWN, "aimdown",    [vk_down,  "S"],     gp_axisrv);
        InputDefineVerb(INPUT_VERB.AIMLEFT, "aimleft",    [vk_left,  "A"],    -gp_axisrh);
        InputDefineVerb(INPUT_VERB.AIMRIGHT,"aimright",   [vk_right, "D"],     gp_axisrh);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",      undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",    undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",    undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",   undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",  undefined,   gp_face2); // !!
        InputDefineVerb(INPUT_VERB.CANCEL,  "cancel",  undefined,   gp_face1); // !!
        InputDefineVerb(INPUT_VERB.ACTION,  "action",  undefined,   gp_face3);
        InputDefineVerb(INPUT_VERB.SPECIAL, "special", undefined,   gp_face4);
		InputDefineVerb(INPUT_VERB.BOOST, "special", undefined,   gp_face4);
        InputDefineVerb(INPUT_VERB.PAUSE,   "pause",   undefined,   gp_start);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
	InputDefineCluster(INPUT_CLUSTER.AIMING, INPUT_VERB.AIMUP, INPUT_VERB.AIMRIGHT, INPUT_VERB.AIMDOWN, INPUT_VERB.AIMLEFT);
}
