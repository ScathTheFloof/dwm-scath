//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"[VOL: ", "block-volume.sh", 1, 10}, 
	{"[BAT: ", "acpi -b | awk '{print $4}' | sed 's/.$/]/'", 1, 0},
	{"[CPU: ", "top -b -n1 | grep \"Cpu(s)\" | awk '{print $2 + $4 \"%]\"}'", 1, 0},
	{"[RAM: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 \"]\"}' | sed s/i//g",	1,		0},

	{"", "date '+%b %d (%a) %H:%M'",						5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
