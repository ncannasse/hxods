@:build(ods.Data.build("test.ods","items","id"))
enum Item {
}

typedef ItemData = {
	var id : Item;
	var name : String;
	var damages : Int;
	var defense : Null<Int>;
}

class Example {
	
	static var DATA = ods.Data.parseODS("test.ods", "items", ItemData);
	
	static function main() {
		for( e in Type.allEnums(Item) )
			trace(DATA[Type.enumIndex(e)]);
	}
	
}