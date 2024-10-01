package language.locales;

import haxe.Json;

typedef FreePlayData =
{
	tapToSearch:String,
	mapsFound:String,
	searchSorted:String,
	speed:String,
	noteCount:String,
	rating:String,
	audioDisplay:String,
	historyScore:String,
	option:String,
	mods:String,
	changers:String,
    editor:String,
	reset:String,
	random:String,
	skip:String,
	playedTime:String,
    accurate:String,
    score:String
}

class FreePlayLang
{
    static var data:FreePlayData;

    static public function get(value:String):String {
        return Reflect.getProperty(data, value);
    }

    static public function updateLang() {
        data = Json.parse(Paths.getTextFromFile('language/' + ClientPrefs.data.language + '/freeplay.json'));
    }
}