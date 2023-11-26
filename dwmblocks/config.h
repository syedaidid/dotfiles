//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {

/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"",  "sb-uptime.sh", 2,  4},
  {"",  "sb-weather", 2,  8},
  {"",  "sb-temp", 1,  3},
  {"",  "sb-ram", 5,  7},
  {"",  "sb-volume", 1,  1},
  {"",  "sb-clock",  1, 2},
  {"",  "sb-battery",  5, 2},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
