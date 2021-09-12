struct colorwithalpha{
	int r;
	int g;
	int b;
	int a;
}
colorwithalpha hextocolor_(char[] s){
	import std.range;
	colorwithalpha output;
	//I wish c foreach abuse worked in d
	//for(int i=0,int j=0,bool b=true;i<6;i++,j+=b,b!=b)
	enum zippy= zip(
		[16,1].cycle,
		["r","r","g","g","b","b"],
		iota(0,100));
	static foreach(digit,mix,i;zippy){ {
		int t;
		if(s[i]>='0' && s[i]<='9'){
			t=s[i]-'0';}
		if(s[i]>='a' && s[i]<='f'){
			t=s[i]-'a'+10;}
		if(s[i]>='A' && s[i]<='F'){
			t=s[i]-'A'+10;}
		t*=digit;
		mixin("output."~mix)+=t;
	} }
	return output;
}
string getinput(){
	import std.process; import std.stdio;
	"ls themes".executeShell.output.writeln;
	"pick one".writeln;
	return readln[0..$-1];
}

import std.stdio;
void main(){
	import colorswap;
	mixin makecolors!("icy.yaml",getinput,colorwithalpha,hextocolor_);
	loaddefualtcolors;
	colors.writeln;
	changecolors;
	colors.writeln;
}