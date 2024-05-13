// CUSTOM FUNCTIONS
// Screenshots :)
static const char *flameshotcmd[] = { "flameshot", "gui", NULL };

extern void movestack(const Arg *arg);

// Music Controls
static const char *mpctoggle[] = { "mpc", "toggle", NULL };
static const char *mpcnext[] = { "mpc", "next", NULL };
static const char *mpcprev[] = { "mpc", "prev", NULL };
static const char *mpcvolup[] = { "mpc", "volume", "+2", NULL };
static const char *mpcvoldown[] = { "mpc", "volume", "-2", NULL };

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int gappx     = 5;        /* gaps between windows */
static const unsigned int snap      = 0;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = {"JetBrains Mono:Regular:size=11", "monospace:size=11", "fontawesome:size=11"};
static const char dmenufont[]       = "JetBrains Mono:Regular:size=11";

//background color
static const char col_gray1[]       = "#222222";
//inactive window border color
static const char col_gray2[]       = "#444444";
//font color
static const char col_gray3[]       = "#bbbbbb";
//current tag and current window font color
static const char col_gray4[]       = "#eeeeee";
//Top bar second color (blue) 
static const char col_cyan[]        = "#222222";
//Active window border color
/* RED */
/* static const char col_outline[] 			= "#C30000"; */
/* PURPLE */
static const char col_outline[] 			= "#24283b";
/* ORANGE */
/* static const char col_outline[] 			= "#F18400"; */
/* WHITE */
/* static const char col_outline[] 			= "#FFFFFF"; */
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_outline  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "firefox",  NULL,       NULL,       1 << 0,       0,           -1 },
	{ "discord",  NULL, 	  NULL,       1 << 2,       0,           -1 },
	{ "Signal",  "signal", 	  NULL,       1 << 2,       0,           -1 },
        { NULL,       NULL,       NULL,       0,            0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.5; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */
static const int attachbelow = 1;    /* 1 means attach after the currently active window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },

};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/usr/bin/bash", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };

static const Key keys[] = {
	/* modifier                     key        function        argument */
    { 0,                      0x1008FFB2, spawn,    SHCMD("pactl set-source-mute @DEFAULT_SOURCE@ toggle") },
	{ 0, 			                0x1008FF13,spawn,          {.v = mpcvolup} },
    { 0, 				            0x1008FF11,spawn,          {.v = mpcvoldown} },
	{ 0, 				            0x1008FF16,spawn,          {.v = mpcprev} },
    { 0, 				            0x1008FF17,spawn,          {.v = mpcnext} },
	{ 0,   				            0x1008FF14,spawn,          {.v = mpctoggle} },
	{ 0,   				            0x1008FF12,spawn,          {.v = mpctoggle} },
    { 0,                            XK_Print,  spawn,          {.v = flameshotcmd } },
	{ MODKEY,                       XK_space,  spawn,          {.v = dmenucmd } },
	{ MODKEY,	             	    XK_Return, spawn,          {.v = termcmd} },
	{ MODKEY,                       XK_t,      togglebar,      {0} },
	{ MODKEY,                       XK_Right,  focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_Left,   focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_Down,   focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_Up,     focusstack,     {.i = -1 } },
	{ MODKEY, 		      	        XK_j,      incnmaster,     {.i = +1 } },
	{ MODKEY,         	            XK_k,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_z, 	   zoom,           {0} },
	{ MODKEY,                       XK_f, 	   togglefullscreen,  {0} },
	{ Mod1Mask,                     XK_Tab,    view,           {0} },
	{ MODKEY,			            XK_w,      killclient,     {0} },
	{ MODKEY|ShiftMask,             XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY|ShiftMask,             XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY|ShiftMask,             XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY|ShiftMask,             XK_space,  setlayout,      {0} },
	{ MODKEY,	              	    XK_s,  	   togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	{ MODKEY,                       XK_minus,  setgaps,        {.i = -1 } },
	{ MODKEY,                       XK_equal,  setgaps,        {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_equal,  setgaps,        {.i = 0  } },
	{ MODKEY|Mod1Mask, 		        XK_Left,   movestack, 	   {.i = -1 } },
    { MODKEY|Mod1Mask,		        XK_Right,  movestack,      {.i = +1 } },
	{ MODKEY|Mod1Mask,              XK_Up, 	   movestack, 	   {.i = -1 } },
    { MODKEY|Mod1Mask,		        XK_Down,   movestack, 	   {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|Mod1Mask,              XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};


