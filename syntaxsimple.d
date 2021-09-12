import std.stdio;
void main(){
	import colorswap;
	mixin makecolors!();
	loaddefualtcolors;
	colors.writeln;
	red.writeln;
	changecolors;
	colors.writeln;
	red.writeln;
}