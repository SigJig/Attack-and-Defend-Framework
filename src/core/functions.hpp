
class Core {
	tag = "core";

	class Game {
		file = "core\game\functions";
		#include "game\functions.hpp"
	};

	class Events {
		file = "core\events";
		class onMap {};
		class setupHandlers {};
	};

	class Utils {
		file = "core\utils";
		class log {};
		class configValue {};
		class configGet {};
		class any {};
		class all {};
		class handleString {};
		class getSetting {};
		class getColor {};
		class fadeSound {};
		class cinematicMode {};
	};

	class Utils_OOP {
		file = "core\utils\oop";
		class classNew {};
		class createObj {};
	};

};

class GUI {
	tag = "core_gui";
	
	#include "gui\functions.hpp"
};