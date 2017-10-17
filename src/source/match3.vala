using Sdx;
//  using Lua;
using Sdx.Graphics;
using Sdx.Math;
	

//  public class Script : Object 
//  {
//  	public static LuaVM vm;
//  	public string name;
//  	public string path;

//  	public Script(string name)
//  	{
//  		if (vm == null) {
//  			vm = new LuaVM();
//  			vm.OpenLibs();
//  		}
//  		this.name = name;
//  		path = @"assets/scripts/$(name).lua";

//  	}
//  	public void Run()
//  	{
//  			vm.DoFile(path);
//  	}
//  }

/**
 * Game controller 
 */
public class Match3 : AbstractGame 
{
	public Match3(Sdx.Ui.Window window) 
	{
		width = (int)window.bounds.w;
		height = (int)window.bounds.h;

		Sdx.SetResourceBase("/darkoverlordofdata/match3");
		Sdx.SetSmallFont("assets/fonts/OpenDyslexic-Bold.otf", 16);
		Sdx.SetDefaultFont("assets/fonts/OpenDyslexic-Bold.otf", 24);
		Sdx.SetLargeFont("assets/fonts/OpenDyslexic-Bold.otf", 36);	
		Sdx.SetAtlas("assets/assets.atlas");

 
		/**  
		 * Create the UI 
		 */
		var bg = new Sdx.Ui.Container(Sdx.atlas.CreateSprite("bg"));
		var label = new Sdx.Ui.Label.Text(window.name, largeFont, Sdx.Color.NavajoWhite);
		var button = new Sdx.Ui.Button.NinePatch("Start", largeFont, Sdx.Color.Black, "btn", "btnPressed");

		var board = new Board(width, height);
		//  var script = new Script("Test");
		//  var t = new SpriteTweener();

		window.Add(bg);
		bg.Add(label.SetPos(width/2-label.width/2, 10));
		bg.Add(button.SetPos(width/2-button.width/2, height/3));

		
		/**
		 * Start Button clicked
		 */
		button.OnMouseClick = (c, x, y) => 
		{
			bg.Remove(label);
			bg.Remove(button);
			board.Init(6, 5);
			Update = board.Update;
		};

        Draw = () =>
        {
			Sdx.Begin();
			Sdx.ui.Render();
			board.Draw();
            Sdx.End();
        };

	}
	
}

