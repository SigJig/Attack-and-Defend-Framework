
class Core {
	tag = "core";

	class Game {
		file = "core\game\functions";
		#include "game\functions.hpp"
	};

	class Units {
		file = "core\units";
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