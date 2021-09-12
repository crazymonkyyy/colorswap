import raylib;
import colorswap;

enum windowx=800;
enum windowy=600;

void main(){
	InitWindow(windowx, windowy, "Hello, Raylib-D!");
	//SetWindowPosition(2000,0);
	SetTargetFPS(60);
	mixin makecolors!();
	loaddefualtcolors;
	while (!WindowShouldClose()){
		BeginDrawing();
			ClearBackground(background);
			DrawText("Hello, World!", 10,10, 20, text);
			DrawRectangle(0,30,200,30,text);
			static foreach(i,mix;colornames){ {
				int j=(i+1)*30;
				color c=mixin(mix);
				DrawRectangle(0,j,25,25,c);
				DrawText(mix,30,j,20,c);
			} }
			if(IsKeyPressed(KeyboardKey.KEY_F11)){
				changecolors;
			}
			//DrawFPS(10,10);
		EndDrawing();
	}
	CloseWindow();
}