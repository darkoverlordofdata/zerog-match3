//  using Lua;

#if (EMSCRIPTEN)
/**
 * game
 * 
 * entry point for Emscripten
 * 
 * -s EXPORTED_FUNCTIONS='["_game"]'
 * Invoked by clicking on the start button in the browser
 *
 */
public void game() {
	var window = new Sdx.Ui.Window(720, 512, "Match3");
	var game = new Match3(window);
	game.Start();
	Emscripten.SetMainLoopArg(MainLoop, game, 0, 1);
	return;
}
/**
 * the main loop
 */
public void MainLoop(void* arg) {
	Sdx.GameLoop((Match3*)arg);
}


#else
/**
 * Start the game
 *
 */
public int main(string args[]) {

#if (ANDROID)
	var window = new Sdx.Ui.Window(1184, 768, "Match3");
	var game = new Match3(window);
#else
	var window = new Sdx.Ui.Window(960, 640, "Match3");
	var game = new Match3(window);
#endif
	game.Start();
	while (Sdx.running) {
		Sdx.GameLoop(game);
	}
	return 0;
}
#endif

//  public void StartLua()
//  {
//  	var vm = new LuaVM();
//          vm.OpenLibs();

//      // Create a Lua table with name 'foo'
//      vm.NewTable();
//      for (int i = 1; i <= 5; i++) 
//      {
//          vm.PushNumber(i);         // Push the table index
//          vm.PushNumber(i * 2);     // Push the cell value
//          vm.RawSet(-3);            // Stores the pair in the table
//      }
//      vm.SetGlobal("foo");

//      // Ask Lua to run our little script
//      vm.DoString 
//      ("""

//          -- Receives a table, returns the sum of its components.
//          io.write("The table the script received has:\n");
//          x = 0
//          for i = 1, #foo do
//            print(i, foo[i])
//            x = x + foo[i]
//          end
//          io.write("Returning data back to C\n");
//          return x

//      """);

//      // Get the returned value at the top of the stack (index -1)
//      var sum = vm.ToNumber(-1);

//      stdout.printf("Script returned: %.0f\n", sum);

//      vm.Pop(1);  // Take the returned value out of the stack
	
//  }

