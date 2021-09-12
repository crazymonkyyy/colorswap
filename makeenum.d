import basic;
void main(){
	char c='0';
	foreach(i;0..10){
		'\''.write;
		c.write;
		'\''.write;
		','.write;
		c++;
	}
	c='A';
	foreach(i;0..10){
		'\''.write;
		c.write;
		'\''.write;
		','.write;
		c++;
	}
	
}