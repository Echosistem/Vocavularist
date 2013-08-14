//
//  xxiivvViewController.m
//  nijuniju
//
//  Created by Devine Lu Linvega on 2013-08-06.
//  Copyright (c) 2013 XXIIVV. All rights reserved.
//

#import "xxiivvViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation xxiivvViewController (Modules)

- (void) nodeStart {
	
	gameContentArray = @[
	@[@"日", @"two|ふた", @"sun|ひ", @"long|ながい",@"2"],
	@[@"一", @"one|ひと", @"long|ながい", @"country|コク",@"1"],
	@[@"国", @"ten|とお", @"country|コク", @"exit|でる",@"2"],
	@[@"人", @"person|ひと", @"country|コク", @"long|ながい",@"1"],
	@[@"年", @"exit|でる", @"year|ネン", @"hour|とき",@"2"],
	@[@"大", @"book|ホン", @"big|おお", @"going|いく",@"2"],
	@[@"十", @"moon|ゲツ", @"long|ながい", @"ten|とお",@"3"],
	@[@"二", @"back|のち", @"two|ふた", @"inside|なか",@"2"],
	@[@"本", @"book|ホン", @"going|いく", @"moon|ゲツ",@"1"],
	@[@"中", @"long|ながい", @"going|いく", @"inside|なか",@"3"],
	@[@"長", @"long|ながい", @"five|いつ", @"life|いきる",@"1"],
	@[@"出", @"exit|でる", @"space|あいだ", @"ten|とお",@"1"],
	@[@"三", @"see|みる", @"three|み", @"five|いつ",@"2"],
	@[@"時", @"big|おお", @"hour|とき", @"person|ひと",@"2"],
	@[@"行", @"space|あいだ", @"going|いく", @"big|おお",@"2"],
	@[@"見", @"see|みる", @"moon|ゲツ", @"one|ひと",@"1"],
	@[@"月", @"moon|ゲツ", @"person|ひと", @"five|いつ",@"1"],
	@[@"後", @"moon|ゲツ", @"one|ひと", @"back|のち",@"3"],
	@[@"前", @"before|まえ", @"enter|いる", @"four|よ",@"1"],
	@[@"生", @"enter|いる", @"life|いきる", @"exit|でる",@"2"],
	@[@"五", @"five|いつ", @"inside|なか", @"year|ネン",@"1"],
	@[@"間", @"space|あいだ", @"book|ホン", @"east|トウ",@"1"],
	@[@"上", @"inside|なか", @"high|たかい", @"above|うえ",@"3"],
	@[@"東", @"east|トウ", @"going|いく", @"year|ネン",@"1"],
	@[@"四", @"four|よ", @"high|たかい", @"long|ながい",@"1"],
	@[@"今", @"child|こ", @"three|み", @"now|コン",@"3"],
	@[@"金", @"big|おお", @"gold|かね", @"child|こ",@"2"],
	@[@"九", @"child|こ", @"high|たかい", @"nine|ここの",@"3"],
	@[@"入", @"come|くる", @"inside|なか", @"enter|いる",@"3"],
	@[@"学", @"study|ガク", @"before|まえ", @"hour|とき",@"1"],
	@[@"高", @"high|たかい", @"study|ガク", @"before|まえ",@"1"],
	@[@"円", @"yen|まるい", @"hour|とき", @"three|み",@"1"],
	@[@"子", @"enter|いる", @"inside|なか", @"child|こ",@"3"],
	@[@"外", @"talk|はなす", @"three|み", @"outside|そと",@"3"],
	@[@"八", @"six|む", @"eight|や", @"now|コン",@"2"],
	@[@"六", @"six|む", @"moon|ゲツ", @"now|コン",@"1"],
	@[@"下", @"low|した", @"east|トウ", @"six|む",@"1"],
	@[@"来", @"small|ちいさい", @"come|くる", @"see|みる",@"2"],
	@[@"気", @"four|よ", @"back|のち", @"spirit|いき",@"3"],
	@[@"小", @"small|ちいさい", @"person|ひと", @"country|コク",@"1"],
	@[@"七", @"hour|とき", @"seven|なな", @"three|み",@"2"],
	@[@"山", @"east|トウ", @"mountain|サン", @"three|み",@"2"],
	@[@"話", @"child|こ", @"talk|はなす", @"river|セン",@"2"],
	@[@"女", @"north|ホク", @"woman|おんな", @"book|ホン",@"2"],
	@[@"北", @"north|ホク", @"now|コン", @"exit|でる",@"1"],
	@[@"午", @"north|ホク", @"noon|うま", @"thousand|セン",@"2"],
	@[@"百", @"hundred|ヒャク", @"male|おとこ", @"talk|はなす",@"1"],
	@[@"書", @"two|ふた", @"write|かく", @"study|ガク",@"2"],
	@[@"先", @"now|コン", @"child|こ", @"before|さき",@"3"],
	@[@"名", @"name|な", @"outside|そと", @"study|ガク",@"1"],
	@[@"川", @"male|おとこ", @"before|まえ", @"river|セン",@"3"],
	@[@"千", @"water|みず", @"thousand|セン", @"east|トウ",@"2"],
	@[@"水", @"water|みず", @"low|した", @"come|くる",@"1"],
	@[@"半", @"eight|や", @"half|ハン", @"before|さき",@"2"],
	@[@"男", @"high|たかい", @"male|おとこ", @"half|ハン",@"2"],
	@[@"西", @"yen|まるい", @"space|あいだ", @"west|セイ",@"3"],
	@[@"電", @"exam|コウ", @"speech|かたる", @"electricity|デン",@"3"],
	@[@"校", @"exam|コウ", @"space|あいだ", @"ten|とお",@"1"],
	@[@"語", @"seven|なな", @"speech|かたる", @"year|ネン",@"2"],
	@[@"土", @"ten|とお", @"soil|ド", @"eat|くう",@"2"],
	@[@"木", @"one|ひと", @"wood|き", @"car|シャ",@"2"],
	@[@"聞", @"fire|ひ", @"ask|きく", @"ten|とお",@"2"],
	@[@"食", @"long|ながい", @"eat|くう", @"year|ネン",@"2"],
	@[@"車", @"car|シャ", @"hour|とき", @"come|くる",@"1"],
	@[@"何", @"year|ネン", @"what|なに", @"low|した",@"2"],
	@[@"南", @"south|ナン", @"ask|きく", @"back|のち",@"1"],
	@[@"万", @"river|セン", @"10000|マン", @"east|トウ",@"2"],
	@[@"毎", @"car|シャ", @"east|トウ", @"every|ごと",@"3"],
	@[@"白", @"south|ナン", @"country|コク", @"white|しろ",@"3"],
	@[@"天", @"small|ちいさい", @"sky|あまつ", @"what|なに",@"2"],
	@[@"母", @"ten|とお", @"mama|はは", @"electricity|デン",@"2"],
	@[@"火", @"fire|ひ", @"ask|きく", @"friend|ユウ",@"1"],
	@[@"右", @"right|ウ", @"noon|うま", @"above|うえ",@"1"],
	@[@"読", @"what|なに", @"read|よむ", @"left|サ",@"2"],
	@[@"友", @"male|おとこ", @"friend|ユウ", @"fact|こと",@"2"],
	@[@"左", @"left|サ", @"emit|たつ", @"hour|とき",@"1"],
	@[@"休", @"one|ひと", @"rest|やすむ", @"life|いきる",@"2"],
	@[@"父", @"father|ちち", @"country|コク", @"person|ひと",@"1"],
	@[@"雨", @"rain|あめ", @"south|ナン", @"half|ハン",@"1"],
	@[@"会", @"woman|おんな", @"hundred|ヒャク", @"meet|あう",@"3"],
	@[@"同", @"big|おお", @"noon|うま", @"same|おなじ",@"3"],
	@[@"事", @"firm|シャ", @"fact|こと", @"above|うえ",@"2"],
	@[@"自", @"oneself|みずから", @"before|まえ", @"stand up|たつ",@"1"],
	@[@"社", @"firm|シャ", @"going|いく", @"electricity|デン",@"1"],
	@[@"発", @"soil|ド", @"emit|たつ", @"south|ナン",@"2"],
	@[@"者", @"meet|あう", @"white|しろ", @"person|もの",@"3"],
	@[@"地", @"woman|おんな", @"life|いきる", @"earth|チ",@"3"],
	@[@"業", @"sky|あまつ", @"five|いつ", @"arts|ギョウ",@"3"],
	@[@"方", @"sky|あまつ", @"person|かた", @"exam|コウ",@"2"],
	@[@"新", @"ask|とう", @"fact|こと", @"new|あたらしい",@"3"],
	@[@"場", @"place|ば", @"moon|ゲツ", @"two|ふた",@"1"],
	@[@"員", @"yen|まるい", @"every|ごと", @"member|イ",@"3"],
	@[@"立", @"stand up|たつ", @"ten|とお", @"water|みず",@"1"],
	@[@"開", @"open|ひらく", @"exit|でる", @"moon|ゲツ",@"1"],
	@[@"手", @"hand|て", @"three|み", @"hour|とき",@"1"],
	@[@"力", @"exert|リョク", @"father|ちち", @"fact|こと",@"1"],
	@[@"問", @"ask|とう", @"come|くる", @"10000|マン",@"1"],
	@[@"代", @"age|かわる", @"emit|たつ", @"person|かた",@"1"],
	@[@"明", @"light|あかり", @"age|かわる", @"come|くる",@"1"],
	@[@"動", @"move|うごく", @"rain|あめ", @"before|まえ",@"1"],
	@[@"京", @"person|もの", @"capital|キョウ", @"eight|や",@"2"],
	@[@"目", @"eye|め", @"thousand|セン", @"firm|シャ",@"1"],
	@[@"通", @"what|なに", @"age|かわる", @"avenue|とおる",@"3"],
	@[@"言", @"white|しろ", @"ask|とう", @"say|いう",@"3"],
	@[@"理", @"above|うえ", @"truth|リ", @"fact|こと",@"2"],
	@[@"体", @"body|からだ", @"ask|きく", @"speech|かたる",@"1"],
	@[@"田", @"name|な", @"light|あかり", @"rice paddy|デン",@"3"],
	@[@"主", @"lord|ぬし", @"right|ウ", @"have|もつ",@"1"],
	@[@"題", @"topic|ダイ", @"six|む", @"eye|め",@"1"],
	@[@"意", @"mind|", @"fire|ひ", @"going|いく",@"1"],
	@[@"不", @"bad|フ", @"four|よ", @"east|トウ",@"1"],
	@[@"作", @"make|つくる", @"long|ながい", @"arts|ギョウ",@"1"],
	@[@"用", @"fire|ひ", @"water|みず", @"use|ヨウ",@"3"],
	@[@"度", @"because|イ", @"time|たび", @"exit|でる",@"2"],
	@[@"強", @"time|たび", @"strong|つよい", @"woman|おんな",@"2"],
	@[@"公", @"life|いきる", @"prince|コウ", @"light|あかり",@"2"],
	@[@"持", @"meet|あう", @"have|もつ", @"soil|ド",@"2"],
	@[@"野", @"study|ガク", @"friend|ユウ", @"field|の",@"3"],
	@[@"以", @"capital|キョウ", @"make|つくる", @"because|イ",@"3"],
	@[@"思", @"much|おおい", @"think|おもう", @"big|おお",@"2"],
	@[@"家", @"use|ヨウ", @"rain|あめ", @"home|いえ",@"3"],
	@[@"世", @"arts|ギョウ", @"world|よ", @"now|コン",@"2"],
	@[@"多", @"much|おおい", @"mama|はは", @"year|ネン",@"1"],
	@[@"正", @"prince|コウ", @"justice|ただしい", @"rain|あめ",@"2"],
	@[@"安", @"wood|き", @"two|ふた", @"low|やすい",@"3"],
	@[@"院", @"person|もの", @"Inst.|イン", @"before|さき",@"2"],
	@[@"心", @"west|セイ", @"mind|りっしんべん", @"study|ガク",@"2"],
	@[@"界", @"fire|ひ", @"world|カイ", @"think|おもう",@"2"],
	@[@"教", @"have|もつ", @"faith|おしえる", @"gold|かね",@"2"],
	@[@"文", @"avenue|とおる", @"water|みず", @"art|ふみ",@"3"],
	@[@"元", @"mind|りっしんべん", @"going|いく", @"origin|ゲン",@"3"],
	@[@"重", @"white|しろ", @"-fold|え", @"thousand|セン",@"2"],
	@[@"近", @"going|いく", @"akin|キン", @"above|うえ",@"2"],
	@[@"考", @"west|セイ", @"consider|かんがえる", @"big|おお",@"2"],
	@[@"画", @"picture|えがく", @"male|おとこ", @"fork|わかれる",@"1"],
	@[@"海", @"six|む", @"sea|カイ", @"low|やすい",@"2"],
	@[@"売", @"rain|あめ", @"water|みず", @"sell|うる",@"3"],
	@[@"知", @"eat|くう", @"know|しる", @"field|の",@"2"],
	@[@"道", @"faith|おしえる", @"moral|ドウ", @"car|シャ",@"2"],
	@[@"集", @"field|の", @"have|もつ", @"meet|あつまる",@"3"],
	@[@"別", @"fork|わかれる", @"person|ひと", @"father|ちち",@"1"],
	@[@"物", @"earth|チ", @"thing|もの", @"light|あかり",@"2"],
	@[@"使", @"use|つかう", @"hand|て", @"half|ハン",@"1"],
	@[@"品", @"I|わたくし", @"goods|しな", @"move|うごく",@"2"],
	@[@"計", @"person|もの", @"sea|カイ", @"plan|はかる",@"3"],
	@[@"死", @"-fold|え", @"enter|いる", @"die|しぬ",@"3"],
	@[@"特", @"time|たび", @"special|トク", @"two|ふた",@"2"],
	@[@"私", @"lord|ぬし", @"I|わたくし", @"ask|きく",@"2"],
	@[@"始", @"special|トク", @"begin|はじめる", @"rice paddy|デン",@"2"],
	@[@"朝", @"sky|あまつ", @"epoch|チョウ", @"-fold|え",@"2"],
	@[@"運", @"epoch|チョウ", @"enter|いる", @"lot|はこぶ",@"3"],
	@[@"終", @"soil|ド", @"east|トウ", @"end|おわる",@"3"],
	@[@"台", @"person|ひと", @"justice|ただしい", @"a stand|うてな",@"3"],
	@[@"広", @"a stand|うてな", @"wide|ひろい", @"member|イ",@"2"],
	@[@"住", @"mountain|サン", @"light|あかり", @"live|すむ",@"3"],
	@[@"真", @"firm|シャ", @"true|ま", @"white|しろ",@"2"],
	@[@"有", @"friend|ユウ", @"hour|とき", @"have|ユウ",@"3"],
	@[@"口", @"mouth|くち", @"much|おおい", @"low|した",@"1"],
	@[@"少", @"few|すくない", @"think|おもう", @"six|む",@"1"],
	@[@"町", @"goods|しな", @"move|うごく", @"town|まち",@"3"],
	@[@"料", @"fee|リョウ", @"inside|なか", @"world|よ",@"1"],
	@[@"工", @"sky|あまつ", @"craft|コウ", @"few|すくない",@"2"],
	@[@"建", @"begin|はじめる", @"build|たてる", @"move|うごく",@"2"],
	@[@"空", @"sky|そら", @"leg|あし", @"picture|えがく",@"1"],
	@[@"急", @"long|ながい", @"steep|いそぐ", @"halt|とまる",@"2"],
	@[@"止", @"halt|とまる", @"enter|いる", @"sea|カイ",@"1"],
	@[@"送", @"a stand|うてな", @"ease|たのしい", @"send|おくる",@"3"],
	@[@"切", @"move|うごく", @"consider|かんがえる", @"cut|きる",@"3"],
	@[@"転", @"change|ころがる", @"before|さき", @"study|ガク",@"1"],
	@[@"研", @"exert|リョク", @"polish|ケン", @"wide|ひろい",@"2"],
	@[@"足", @"yen|まるい", @"rain|あめ", @"leg|あし",@"3"],
	@[@"究", @"friend|ユウ", @"study|キュウ", @"town|まち",@"2"],
	@[@"楽", @"low|した", @"ease|たのしい", @"send|おくる",@"2"],
	@[@"起", @"try|こころみる", @"Inst.|イン", @"rouse|おきる",@"3"],
	@[@"着", @"don|きる", @"place|ば", @"move|うごく",@"1"],
	@[@"店", @"north|ホク", @"shop|みせ", @"book|ホン",@"2"],
	@[@"病", @"river|セン", @"ill|やむ", @"change|ころがる",@"2"],
	@[@"質", @"life|いきる", @"matter|たち", @"age|かわる",@"2"],
	@[@"待", @"ten|とお", @"wait|まつ", @"matter|たち",@"2"],
	@[@"試", @"try|こころみる", @"rest|やすむ", @"thing|もの",@"1"],
	@[@"族", @"wood|き", @"every|ごと", @"tribe|ゾ",@"3"],
	@[@"銀", @"river|セン", @"mouth|くち", @"silver|ギン",@"3"],
	@[@"早", @"sky|あまつ", @"fast|はやい", @"taste|あじ",@"2"],
	@[@"映", @"reflect|うつる", @"big|おお", @"fee|リョウ",@"1"],
	@[@"親", @"half|ハン", @"parent|おや", @"make|つくる",@"2"],
	@[@"験", @"effect|あかし", @"before|まえ", @"ill|やむ",@"1"],
	@[@"英", @"same|おなじ", @"English|エイ", @"prince|コウ",@"2"],
	@[@"医", @"write|かく", @"doctor|いやす", @"much|おおい",@"2"],
	@[@"仕", @"picture|えがく", @"think|おもう", @"doing|つかえる",@"3"],
	@[@"去", @"emit|たつ", @"spirit|いき", @"past|さる",@"3"],
	@[@"味", @"taste|あじ", @"picture|えがく", @"before|さき",@"1"],
	@[@"写", @"fork|わかれる", @"hour|とき", @"copy|うつす",@"3"],
	@[@"字", @"town|まち", @"build|たてる", @"word|あざ",@"3"],
	@[@"答", @"answer|こたえる", @"name|な", @"polish|ケン",@"1"],
	@[@"夜", @"night|よ", @"person|もの", @"reflect|うつる",@"1"],
	@[@"音", @"wide|ひろい", @"noise|おと", @"wait|まつ",@"2"],
	@[@"注", @"four|よ", @"pour|そそぐ", @"friend|ユウ",@"2"],
	@[@"帰", @"Inst.|イン", @"lead to|かえる", @"south|ナン",@"2"],
	@[@"古", @"epoch|チョウ", @"old|ふるい", @"sell|うる",@"2"],
	@[@"歌", @"faith|おしえる", @"sing|うた", @"meet|あう",@"2"],
	@[@"買", @"goods|しな", @"buy|かう", @"small|ちいさい",@"2"],
	@[@"悪", @"bad|わるい", @"person|ひと", @"fast|はやい",@"1"],
	@[@"図", @"map|え", @"craft|コウ", @"friend|ユウ",@"1"],
	@[@"週", @"speech|かたる", @"week|シュウ", @"mind|りっしんべん",@"2"],
	@[@"室", @"room|むろ", @"week|シュウ", @"lead to|かえる",@"1"],
	@[@"歩", @"palace|やかた", @"river|セン", @"walk|あるく",@"3"],
	@[@"風", @"change|ころがる", @"air|かぜ", @"east|トウ",@"2"],
	@[@"紙", @"paper|かみ", @"body|からだ", @"polish|ケン",@"1"],
	@[@"黒", @"black|くろ", @"springtime|シュン", @"use|つかう",@"1"],
	@[@"花", @"shop|オク", @"flower|カ", @"small|ちいさい",@"2"],
	@[@"春", @"wood|き", @"springtime|シュン", @"mind|りっしんべん",@"2"],
	@[@"赤", @"sky|そら", @"red|あか", @"room|むろ",@"2"],
	@[@"青", @"blue|あお", @"doctor|いやす", @"faith|おしえる",@"1"],
	@[@"館", @"moon|ゲツ", @"capital|キョウ", @"palace|やかた",@"3"],
	@[@"屋", @"autumn|あき", @"shop|オク", @"water|みず",@"2"],
	@[@"色", @"earth|チ", @"color|ショク", @"eye|め",@"2"],
	@[@"走", @"station|エキ", @"above|うえ", @"run|ソウ",@"3"],
	@[@"秋", @"moral|ドウ", @"walk|あるく", @"autumn|あき",@"3"],
	@[@"夏", @"summer|なつ", @"springtime|シュン", @"exert|リョク",@"1"],
	@[@"習", @"learn|ならう", @"rain|あめ", @"because|イ",@"1"],
	@[@"駅", @"station|エキ", @"space|あいだ", @"south|ナン",@"1"],
	@[@"洋", @"low|やすい", @"ocean|ヨ", @"space|あいだ",@"2"],
	@[@"旅", @"take|のむ", @"trip|たび", @"bad|わるい",@"2"],
	@[@"服", @"obey|フ", @"read|よむ", @"autumn|あき",@"1"],
	@[@"夕", @"evening|セキ", @"wide|ひろい", @"speech|かたる",@"1"],
	@[@"借", @"origin|ゲン", @"meet|あつまる", @"rent|かりる",@"3"],
	@[@"曜", @"world|よ", @"weekday|ヨ", @"yen|まるい",@"2"],
	@[@"飲", @"live|すむ", @"wide|ひろい", @"take|のむ",@"3"],
	@[@"肉", @"meat|ニク", @"hour|とき", @"before|まえ",@"1"],
	@[@"貸", @"lend|かす", @"small|ちいさい", @"fast|はやい",@"1"],
	@[@"堂", @"have|もつ", @"lot|はこぶ", @"hall|ドウ",@"3"],
	@[@"鳥", @"weekday|ヨ", @"bird|チョウ", @"nine|ここの",@"2"],
	@[@"飯", @"long|ながい", @"meal|ハン", @"person|かた",@"2"],
	@[@"勉", @"hall|ドウ", @"exertion|ベン", @"know|しる",@"2"],
	@[@"冬", @"winter|ふゆ", @"polish|ケン", @"long|ながい",@"1"],
	@[@"昼", @"noon|ひる", @"buy|かう", @"long|ながい",@"1"],
	@[@"茶", @"shop|オク", @"nine|ここの", @"tea|チャ",@"3"],
	@[@"弟", @"every|ごと", @"above|うえ", @"younger brother|テイ",@"3"],
	@[@"牛", @"ill|やむ", @"cow|ギュウ", @"fork|わかれる",@"2"],
	@[@"魚", @"tea|チャ", @"change|ころがる", @"fish|うお",@"3"],
	@[@"兄", @"book|ホン", @"person|かた", @"big brother|ケイ",@"3"],
	@[@"犬", @"dog|いぬ", @"eight|や", @"lord|ぬし",@"1"],
	@[@"妹", @"younger sister|マイ", @"because|イ", @"exert|リョク",@"1"],
	@[@"姉", @"elder sister|あね", @"body|からだ", @"electricity|デン",@"1"],
	@[@"漢", @"consider|かんがえる", @"meet|あつまる", @"China|カ",@"3"],
	@[@"政", @"craft|コウ", @"politics|まつりごと", @"fork|わかれる",@"2"],
	@[@"議", @"paper|かみ", @"study|ガク", @"debate|",@"3"],
	@[@"民", @"map|え", @"dept|ブ", @"nation|ミン",@"3"],
	@[@"連", @"firm|シャ", @"fact|こと", @"lead|つらなる",@"3"],
	@[@"対", @"even|あいて", @"electricity|デン", @"east|トウ",@"1"],
	@[@"部", @"matter|たち", @"world|よ", @"dept|ブ",@"3"],
	@[@"合", @"lend|かす", @"0.1|あう", @"study|ガク",@"2"],
	@[@"市", @"thousand|セン", @"city|シ", @"run|ソウ",@"2"],
	@[@"内", @"noise|おと", @"woman|おんな", @"home|ナイ",@"3"],
	@[@"相", @"phase|あい", @"life|いきる", @"polish|ケン",@"1"],
	@[@"定", @"fix|さだめる", @"home|いえ", @"have|もつ",@"1"],
	@[@"回", @"what|なに", @"game|まわる", @"wide|ひろい",@"2"],
	@[@"選", @"home|いえ", @"take|のむ", @"elect|えらぶ",@"3"],
	@[@"米", @"left|サ", @"now|コン", @"USA|こめ",@"3"],
	@[@"実", @"west|セイ", @"truth|み", @"outside|そと",@"2"],
	@[@"関", @"barrier|せき", @"game|まわる", @"all|まったく",@"1"],
	@[@"決", @"fix|きめる", @"rain|あめ", @"warp|へる",@"1"],
	@[@"全", @"all|まったく", @"cut|きる", @"eye|め",@"1"],
	@[@"表", @"table|おもて", @"ocean|ヨ", @"fact|こと",@"1"],
	@[@"戦", @"hundred|ヒャク", @"war|いくさ", @"air|かぜ",@"2"],
	@[@"経", @"lead to|かえる", @"elder sister|あね", @"warp|へる",@"3"],
	@[@"最", @"most|もっとも", @"earth|チ", @"phase|あい",@"1"],
	@[@"現", @"moral|ドウ", @"exit|でる", @"actual|あらわれる",@"3"],
	@[@"調", @"tone|しらべる", @"change|ころがる", @"one|ひと",@"1"],
	@[@"化", @"delude|ばける", @"law|ホウ", @"ask|とう",@"1"],
	@[@"当", @"halt|とまる", @"hit|あたる", @"field|の",@"2"],
	@[@"約", @"special|トク", @"buy|かう", @"shrink|ヤク",@"3"],
	@[@"首", @"neck|シュ", @"sing|うた", @"emit|たつ",@"1"],
	@[@"法", @"send|おくる", @"law|ホウ", @"meet|あう",@"2"],
	@[@"性", @"come|くる", @"sex|さが", @"black|くろ",@"2"],
	@[@"要", @"need|ヨウ", @"truth|リ", @"plan|はかる",@"1"],
	@[@"制", @"govt|おさめる", @"die|しぬ", @"law|セイ",@"3"],
	@[@"治", @"govt|おさめる", @"doctor|いやす", @"yen|まるい",@"1"],
	@[@"務", @"truth|リ", @"lot|はこぶ", @"task|ム",@"3"],
	@[@"成", @"10000|マン", @"pour|そそぐ", @"get|なる",@"3"],
	@[@"期", @"make|つくる", @"lead|つらなる", @"time|キ",@"3"],
	@[@"取", @"pour|そそぐ", @"topic|ダイ", @"take|とる",@"3"],
	@[@"都", @"send|おくる", @"friend|ユウ", @"capital|ト",@"3"],
	@[@"和", @"fast|はやい", @"peace|やわらぐ", @"ten|とお",@"2"],
	@[@"機", @"faith|おしえる", @"age|かわる", @"machine|はた",@"3"],
	@[@"平", @"proceed|すすむ", @"flat|たいら", @"beginning|はじめ",@"2"],
	@[@"加", @"add|くわえる", @"blue|あお", @"what|なに",@"1"],
	@[@"受", @"have|もつ", @"hall|ドウ", @"get|うける",@"3"],
	@[@"続", @"series|つづく", @"speech|かたる", @"station|エキ",@"1"],
	@[@"進", @"proceed|すすむ", @"rain|あめ", @"study|ガク",@"1"],
	@[@"数", @"law|かず", @"have|ユウ", @"get|なる",@"1"],
	@[@"記", @"picture|えがく", @"flat|たいら", @"scribe|キ",@"3"],
	@[@"初", @"beginning|はじめ", @"name|な", @"fish|うお",@"1"],
	@[@"指", @"run|ソウ", @"younger brother|テイ", @"finger|ゆび",@"3"],
	@[@"権", @"lot|はこぶ", @"China|カ", @"power|おもり",@"3"],
	@[@"支", @"branch|しんよう", @"west|セイ", @"buy|かう",@"1"],
	@[@"産", @"strong|つよい", @"home|いえ", @"bear|うむ",@"3"],
	@[@"点", @"mark|つける", @"fast|はやい", @"before|まえ",@"1"],
	@[@"報", @"eight|や", @"news|むくいる", @"member|イ",@"2"],
	@[@"済", @"finish|すむ", @"year|ネン", @"akin|キン",@"1"],
	@[@"活", @"male|おとこ", @"white|しろ", @"living|いきる",@"3"],
	@[@"原", @"win|かつ", @"field|ゲン", @"paper|かみ",@"2"],
	@[@"共", @"all|まったく", @"all|とも", @"have|もつ",@"2"],
	@[@"得", @"get|える", @"book|ホン", @"copy|うつす",@"1"],
	@[@"解", @"key|とく", @"outside|そと", @"mama|はは",@"1"],
	@[@"交", @"learn|ならう", @"person|かた", @"mixing|まじわる",@"3"],
	@[@"資", @"data|", @"send|おくる", @"use|ヨウ",@"1"],
	@[@"予", @"leg|あし", @"nation|ミン", @"I|あらかじめ",@"3"],
	@[@"向", @"profit|リ", @"shrink|ヤク", @"defy|むく",@"3"],
	@[@"際", @"machine|はた", @"firm|シャ", @"side|きわ",@"3"],
	@[@"勝", @"exist|ザイ", @"sex|さが", @"win|かつ",@"3"],
	@[@"面", @"face|おも", @"dog|いぬ", @"every|ごと",@"1"],
	@[@"告", @"need|ヨウ", @"tell|コク", @"field|の",@"2"],
	@[@"反", @"meat|ニク", @"copy|うつす", @"anti-|そる",@"3"],
	@[@"判", @"spirit|いき", @"seal|わかる", @"half|ハン",@"2"],
	@[@"認", @"mouth|くち", @"witness|みとめる", @"field|の",@"2"],
	@[@"参", @"die|まいる", @"face|おも", @"live|すむ",@"1"],
	@[@"利", @"profit|リ", @"tell|コク", @"inside|なか",@"1"],
	@[@"組", @"war|いくさ", @"male|おとこ", @"braid|くむ",@"3"],
	@[@"信", @"field|ゲン", @"make|つくる", @"truth|シ",@"3"],
	@[@"在", @"city|シ", @"exist|ザイ", @"truth|リ",@"2"],
	@[@"件", @"case|くだん", @"ocean|ヨ", @"die|しぬ",@"1"],
	@[@"側", @"justice|ただしい", @"buy|かう", @"lean|かわ",@"3"],
	@[@"任", @"male|おとこ", @"duty|まかせる", @"bad|フ",@"2"],
	@[@"引", @"tug|ひく", @"actual|あらわれる", @"law|かず",@"1"],
	@[@"求", @"0.1|あう", @"want|もとめる", @"thing|もの",@"2"],
	@[@"所", @"five|いつ", @"parent|おや", @"place|ところ",@"3"],
	@[@"次", @"news|むくいる", @"next|つぐ", @"even|あいて",@"2"],
	@[@"昨", @"doing|つかえる", @"previous|サク", @"small|ちいさい",@"2"],
	@[@"論", @"argument|ロン", @"doctor|いやす", @"tribe|ゾ",@"1"],
	@[@"官", @"bureaucrat|カン", @"rest|やすむ", @"truth|シ",@"1"],
	@[@"増", @"add|ます", @"place|ば", @"field|ゲン",@"1"],
	@[@"係", @"space|あいだ", @"game|まわる", @"duty|かかる",@"3"],
	@[@"感", @"station|エキ", @"anti-|そる", @"feeling|カン",@"3"],
	@[@"情", @"few|すくない", @"facts|なさけ", @"bird|チョウ",@"2"],
	@[@"投", @"take|とる", @"join|なげる", @"rite|シ",@"2"],
	@[@"示", @"show|しめす", @"six|む", @"power|おもり",@"1"],
	@[@"変", @"take|のむ", @"akin|キン", @"change|かわる",@"3"],
	@[@"打", @"flower|カ", @"sky|あまつ", @"hit|うつ",@"3"],
	@[@"直", @"craft|コウ", @"fix|ただちに", @"male|おとこ",@"2"],
	@[@"両", @"barrier|せき", @"two|てる", @"have|もつ",@"2"],
	@[@"式", @"rite|シ", @"China|カ", @"study|ガク",@"1"],
	@[@"確", @"firm|たしか", @"war|いくさ", @"low|やすい",@"1"],
	@[@"果", @"west|セイ", @"end|はたす", @"send|おくる",@"2"],
	@[@"容", @"form|ヨウ", @"strong|つよい", @"get|なる",@"1"],
	@[@"必", @"certain|かならず", @"before|まえ", @"profit|リ",@"1"],
	@[@"演", @"person|かた", @"person|ひと", @"act|エン",@"3"],
	@[@"歳", @"one|ひと", @"have|もつ", @"age|とし",@"3"],
	@[@"争", @"act|エン", @"argue|あらそう", @"noon|うま",@"2"],
	@[@"談", @"member|イ", @"talk|ダン", @"copy|うつす",@"2"],
	@[@"能", @"skill|ノウ", @"braid|くむ", @"exertion|ベン",@"1"],
	@[@"位", @"same|おなじ", @"some|くらい", @"fix|きめる",@"2"],
	@[@"置", @"put|おく", @"effect|あかし", @"shrink|ヤク",@"1"],
	@[@"流", @"week|シュウ", @"exertion|ベン", @"flow|ながれる",@"3"],
	@[@"格", @"noon|ひる", @"rank|カク", @"doctor|いやす",@"2"],
	@[@"疑", @"hit|うつ", @"hit|あたる", @"doubt|うたがう",@"3"],
	@[@"過", @"bad|フ", @"error|すぎる", @"end|おわる",@"2"],
	@[@"局", @"war|いくさ", @"act|エン", @"board|つぼね",@"3"],
	@[@"放", @"fire|はなす", @"neck|シュ", @"get|うける",@"1"],
	@[@"常", @"usual|つね", @"effect|あかし", @"barrier|せき",@"1"],
	@[@"状", @"year|ネン", @"form|ジョウ", @"few|すくない",@"2"],
	@[@"球", @"eight|や", @"braid|くむ", @"ball|キュウ",@"3"],
	@[@"職", @"study|キュウ", @"work|ショク", @"goods|しな",@"2"],
	@[@"与", @"exertion|ベン", @"series|つづく", @"give|あたえる",@"3"],
	@[@"供", @"rice paddy|デン", @"elect|えらぶ", @"offer|そなえる",@"3"],
	@[@"役", @"tea|チャ", @"war|ヤク", @"city|シ",@"2"],
	@[@"構", @"build|かまえる", @"polish|ケン", @"doing|つかえる",@"1"],
	@[@"割", @"usual|つね", @"father|ちち", @"cut|わる",@"3"],
	@[@"費", @"nation|ミン", @"add|ます", @"cost|ついやす",@"3"],
	@[@"付", @"attach|つける", @"firm|たしか", @"fast|はやい",@"1"],
	@[@"由", @"finish|すむ", @"a reason|よし", @"autumn|あき",@"2"],
	@[@"説", @"dog|いぬ", @"lean|かわ", @"rumor|セツ",@"3"],
	@[@"難", @"defect|かたい", @"defy|むく", @"talk|ダン",@"1"],
	@[@"優", @"thing|もの", @"evening|セキ", @"excel|やさしい",@"3"],
	@[@"夫", @"hour|とき", @"talk|はなす", @"man|おっと",@"3"],
	@[@"収", @"think|おもう", @"lord|ぬし", @"pay|おさめる",@"3"],
	@[@"断", @"soil|ド", @"fast|はやい", @"warn|たつ",@"3"],
	@[@"石", @"stone|セキ", @"right|ウ", @"gold|かね",@"1"],
	@[@"違", @"life|いきる", @"nation|ミン", @"differ|ちがう",@"3"],
	@[@"消", @"cancel|きえる", @"skill|ノウ", @"bird|チョウ",@"1"],
	@[@"神", @"mind|かみ", @"lead to|かえる", @"what|なに",@"1"],
	@[@"番", @"turn|バン", @"all|とも", @"law|かず",@"1"],
	@[@"規", @"measure|", @"obey|フ", @"seven|なな",@"1"],
	@[@"術", @"feeling|カン", @"back|のち", @"art|すべ",@"3"],
	@[@"備", @"map|え", @"change|かわる", @"equip|そなえる",@"3"],
	@[@"宅", @"home|タ", @"defect|かたい", @"see|みる",@"1"],
	@[@"害", @"harm|ガイ", @"fish|うお", @"key|とく",@"1"],
	@[@"配", @"exile|くばる", @"goods|しな", @"east|トウ",@"1"],
	@[@"警", @"form|ヨウ", @"person|かた", @"admonish|いましめる",@"3"],
	@[@"育", @"voice|こえ", @"ten|とお", @"rear|そだつ",@"3"],
	@[@"席", @"exertion|ベン", @"mat|むしろ", @"above|うえ",@"2"],
	@[@"訪", @"earth|チ", @"fact|こと", @"visit|おとずれる",@"3"],
	@[@"乗", @"join|のる", @"home|いえ", @"elder sister|あね",@"1"],
	@[@"残", @"ask|とう", @"truth|み", @"balance|のこる",@"3"],
	@[@"想", @"move|うごく", @"equip|そなえる", @"idea|おもう",@"3"],
	@[@"声", @"voice|こえ", @"excel|やさしい", @"home|タ",@"1"],
	@[@"念", @"idea|ネン", @"member|イ", @"name|な",@"1"],
	@[@"助", @"age|かわる", @"rain|あめ", @"help|たすける",@"3"],
	@[@"労", @"begin|はじめる", @"toil|ろうする", @"eye|め",@"2"],
	@[@"例", @"usage|たとえる", @"law|ホウ", @"much|おおい",@"1"],
	@[@"然", @"so|しか", @"a reason|よし", @"halt|とまる",@"1"],
	@[@"限", @"obey|フ", @"dog|いぬ", @"limit|かぎる",@"3"],
	@[@"追", @"station|エキ", @"work|ショク", @"chase|ツイ",@"3"],
	@[@"商", @"bureaucrat|カン", @"sing|うた", @"selling|ショウ",@"3"],
	@[@"葉", @"beginning|はじめ", @"male|おとこ", @"lobe|ヨウ",@"3"],
	@[@"伝", @"consider|かんがえる", @"gold|かね", @"follow|つたわる",@"3"],
	@[@"働", @"hundred|ヒャク", @"work|はたらく", @"rice paddy|デン",@"2"],
	@[@"形", @"time|キ", @"form|かた", @"govt|おさめる",@"2"],
	@[@"景", @"doing|つかえる", @"nine|ここの", @"view|ケ",@"3"],
	@[@"落", @"drop|おちる", @"board|つぼね", @"place|ところ",@"1"],
	@[@"好", @"I|あらかじめ", @"fond|このむ", @"long|ながい",@"2"],
	@[@"退", @"feeling|カン", @"repel|しりぞく", @"lead to|かえる",@"2"],
	@[@"頭", @"sky|あまつ", @"head|あたま", @"reflect|うつる",@"2"],
	@[@"負", @"city|シ", @"fact|こと", @"-|まける",@"3"],
	@[@"渡", @"firm|シャ", @"ill|やむ", @"ford|わたる",@"3"],
	@[@"失", @"fond|このむ", @"loss|うしなう", @"shop|オク",@"2"],
	@[@"差", @"change|かわる", @"margin|さす", @"ease|たのしい",@"2"],
	@[@"末", @"oneself|みずから", @"father|ちち", @"tip|すえ",@"3"],
	@[@"守", @"obey|まもる", @"need|ヨウ", @"answer|こたえる",@"1"],
	@[@"若", @"proceed|すすむ", @"balance|のこる", @"if|わかい",@"3"],
	@[@"種", @"kind|たね", @"arts|ギョウ", @"sell|うる",@"1"],
	@[@"美", @"leg|あし", @"beauty|ビ", @"duty|まかせる",@"2"],
	@[@"命", @"harm|ガイ", @"skill|ノウ", @"life|いのち",@"3"],
	@[@"福", @"luck|フ", @"ford|わたる", @"field|の",@"1"],
	@[@"望", @"faith|おしえる", @"hope|のぞむ", @"add|ます",@"2"],
	@[@"非", @"rumor|セツ", @"un-|あらず", @"wait|まつ",@"2"],
	@[@"観", @"long|ながい", @"man|おっと", @"look|みる",@"3"],
	@[@"察", @"judge|サツ", @"polish|ケン", @"meal|ハン",@"1"],
	@[@"段", @"elect|えらぶ", @"a reason|よし", @"steps|ダン",@"3"],
	@[@"横", @"side|よこ", @"big|おお", @"even|あいて",@"1"],
	@[@"深", @"work|ショク", @"deep|ふかい", @"yen|まるい",@"2"],
	@[@"申", @"3-5PM|もうす", @"lot|はこぶ", @"field|ゲン",@"1"],
	@[@"様", @"big|おお", @"lead to|かえる", @"way|さま",@"3"],
	@[@"財", @"build|かまえる", @"right|ウ", @"money|ザイ",@"3"],
	@[@"港", @"inside|なか", @"offer|そなえる", @"harbor|みなと",@"3"],
	@[@"識", @"member|イ", @"child|こ", @"know|シ",@"3"],
	@[@"呼", @"call|コ", @"justice|ただしい", @"end|はたす",@"1"],
	@[@"達", @"reach|タツ", @"epoch|チョウ", @"map|え",@"1"],
	@[@"良", @"good|よい", @"winter|ふゆ", @"black|くろ",@"1"],
	@[@"候", @"harm|ガイ", @"south|ナン", @"season|そうろう",@"3"],
	@[@"程", @"warp|へる", @"law|ほど", @"bureaucrat|カン",@"2"],
	@[@"満", @"meal|ハン", @"full|みちる", @"because|イ",@"2"],
	@[@"敗", @"rite|シ", @"give|あたえる", @"defeat|やぶれる",@"3"],
	@[@"値", @"idea|ネン", @"a stand|うてな", @"cost|ね",@"3"],
	@[@"突", @"govt|おさめる", @"winter|ふゆ", @"stab|つく",@"3"],
	@[@"光", @"ray|ひかる", @"autumn|あき", @"country|コク",@"1"],
	@[@"路", @"ascend|のぼる", @"palace|やかた", @"road|じ",@"3"],
	@[@"科", @"course|", @"electricity|デン", @"feeling|カン",@"1"],
	@[@"積", @"autumn|あき", @"red|あか", @"stack|つむ",@"3"],
	@[@"他", @"other|ほか", @"limit|かぎる", @"fish|うお",@"1"],
	@[@"処", @"face|おも", @"act|ところ", @"name|な",@"2"],
	@[@"太", @"oneself|みずから", @"balance|のこる", @"thick|ふとい",@"3"],
	@[@"客", @"guest|キャク", @"change|ころがる", @"die|まいる",@"1"],
	@[@"否", @"rear|そだつ", @"braid|くむ", @"no|いな",@"3"],
	@[@"師", @"fire|ひ", @"reach|タツ", @"war|",@"3"],
	@[@"登", @"high|たかい", @"ascend|のぼる", @"stack|つむ",@"2"],
	@[@"易", @"easy|やさしい", @"tone|しらべる", @"China|カ",@"1"],
	@[@"速", @"fast|はやい", @"five|いつ", @"lead to|かえる",@"1"],
	@[@"存", @"feel|ソン", @"nation|ミン", @"witness|みとめる",@"1"],
	@[@"飛", @"wait|まつ", @"big|おお", @"fly|とぶ",@"3"],
	@[@"殺", @"kill|ころす", @"even|あいて", @"thick|ふとい",@"1"],
	@[@"号", @"eye|め", @"item|さけぶ", @"above|うえ",@"2"],
	@[@"単", @"epoch|チョウ", @"one|ひとえ", @"ask|きく",@"2"],
	@[@"座", @"sit|すわる", @"woman|おんな", @"way|さま",@"1"],
	@[@"破", @"rip|やぶる", @"paper|かみ", @"die|しぬ",@"1"],
	@[@"除", @"weekday|ヨ", @"3)|のぞく", @"make|つくる",@"2"],
	@[@"完", @"home|いえ", @"end|カン", @"sing|うた",@"2"],
	@[@"降", @"fall|おりる", @"mind|りっしんべん", @"try|こころみる",@"1"],
	@[@"責", @"blame|せめる", @"fee|リョウ", @"fish|うお",@"1"],
	@[@"捕", @"catch|とらえる", @"fix|きめる", @"wait|まつ",@"1"],
	@[@"危", @"sell|うる", @"fear|あぶない", @"word|あざ",@"2"],
	@[@"給", @"wage|たまう", @"lot|はこぶ", @"take|のむ",@"1"],
	@[@"苦", @"trial|くるしい", @"man|おっと", @"don|きる",@"1"],
	@[@"迎", @"elder sister|あね", @"get|うける", @"meet|ゲイ",@"3"],
	@[@"園", @"younger sister|マイ", @"yard|エン", @"English|エイ",@"2"],
	@[@"具", @"tool|そなえる", @"cost|ついやす", @"firm|たしか",@"1"],
	@[@"辞", @"noon|うま", @"move|うごく", @"word|やめる",@"3"],
	@[@"因", @"cause|よる", @"springtime|シュン", @"so|しか",@"1"],
	@[@"馬", @"no|いな", @"horse|うま", @"take|のむ",@"2"],
	@[@"愛", @"love|アイ", @"fast|はやい", @"man|おっと",@"1"],
	@[@"富", @"enrich|とむ", @"ask|きく", @"China|カ",@"1"],
	@[@"彼", @"he|かれ", @"small|ちいさい", @"yard|エン",@"1"],
	@[@"未", @"spirit|いき", @"un-|いまだ", @"face|おも",@"2"],
	@[@"舞", @"flit|まう", @"send|おくる", @"night|よ",@"1"],
	@[@"亡", @"dying|ない", @"obey|フ", @"other|あまる",@"1"],
	@[@"冷", @"call|コ", @"lobe|ヨウ", @"cool|つめたい",@"3"],
	@[@"適", @"back|のち", @"rare|かなう", @"town|まち",@"2"],
	@[@"婦", @"flow|ながれる", @"wife|", @"tip|すえ",@"2"],
	@[@"寄", @"truth|リ", @"cut|きる", @"send|よる",@"3"],
	@[@"込", @"air|かぜ", @"mixture|こむ", @"mama|はは",@"2"],
	@[@"顔", @"face|かお", @"harm|ガイ", @"-|まける",@"1"],
	@[@"類", @"half|ハン", @"kind|たぐい", @"Inst.|イン",@"2"],
	@[@"余", @"show|しめす", @"other|あまる", @"3)|のぞく",@"2"],
	@[@"王", @"rule|オウ", @"think|おもう", @"try|こころみる",@"1"],
	@[@"返", @"big|おお", @"rite|シ", @"fade|かえす",@"3"],
	@[@"妻", @"equip|そなえる", @"even|あいて", @"wife|サイ",@"3"],
	@[@"背", @"back|せ", @"admonish|いましめる", @"thick|ふとい",@"1"],
	@[@"熱", @"heat|ネツ", @"moon|ゲツ", @"attach|つける",@"1"],
	@[@"宿", @"form|かた", @"take|とる", @"inn|やど",@"3"],
	@[@"薬", @"join|のる", @"enamel|ヤク", @"time|キ",@"2"],
	@[@"険", @"money|ザイ", @"younger sister|マイ", @"sharp eyes|けわしい",@"3"],
	@[@"頼", @"give|あたえる", @"don|きる", @"trust|たのむ",@"3"],
	@[@"覚", @"book|ホン", @"show|しめす", @"learn|おぼえる",@"3"],
	@[@"船", @"rest|やすむ", @"power|おもり", @"boat|ふね",@"3"],
	@[@"途", @"don|きる", @"tug|ひく", @"way|",@"3"],
	@[@"許", @"two|てる", @"permit|ゆるす", @"person|ひと",@"2"],
	@[@"抜", @"omit|ぬく", @"English|エイ", @"taste|あじ",@"1"],
	@[@"便", @"enamel|ヤク", @"yard|エン", @"convenience|たより",@"3"],
	@[@"留", @"halt|とめる", @"doubt|うたがう", @"man|おっと",@"1"],
	@[@"罪", @"sin|つみ", @"man|おっと", @"un-|あらず",@"1"],
	@[@"努", @"noise|おと", @"toil|つとめる", @"luck|フ",@"2"],
	@[@"精", @"ghost|セイ", @"proceed|すすむ", @"USA|こめ",@"1"],
	@[@"散", @"ask|とう", @"attach|つける", @"spend|ちる",@"3"],
	@[@"静", @"quiet|しず", @"no|いな", @"town|まち",@"1"],
	@[@"婚", @"marriage|コン", @"put|おく", @"black|くろ",@"1"],
	@[@"喜", @"side|きわ", @"river|セン", @"rejoice|よろこぶ",@"3"],
	@[@"浮", @"fond|このむ", @"mind|かみ", @"float|うく",@"3"],
	@[@"絶", @"winter|ふゆ", @"trial|くるしい", @"sever|たえる",@"3"],
	@[@"幸", @"rain|あめ", @"act|エン", @"fortune|さいわい",@"3"],
	@[@"押", @"bad|フ", @"stop|おす", @"fire|ひ",@"2"],
	@[@"倒", @"fall|たおれる", @"serve|つとめる", @"low|やすい",@"1"],
	@[@"等", @"etc.|ひとしい", @"add|くわえる", @"study|キュウ",@"1"],
	@[@"老", @"make|つくる", @"art|すべ", @"old age|おいる",@"3"],
	@[@"曲", @"harbor|みなと", @"lean|まがる", @"head|あたま",@"2"],
	@[@"払", @"gap|あくび", @"pay|はらう", @"red|あか",@"2"],
	@[@"庭", @"toil|ろうする", @"mind|りっしんべん", @"yard|テイ",@"3"],
	@[@"徒", @"set|いたずら", @"truth|シ", @"sit|すわる",@"1"],
	@[@"勤", @"hall|ドウ", @"chop|きざむ", @"serve|つとめる",@"3"],
	@[@"遅", @"gap|あくび", @"admonish|いましめる", @"late|おくれる",@"3"],
	@[@"居", @"meet|あつまる", @"to be|いる", @"boat|ふね",@"2"],
	@[@"雑", @"miscellaneous|まじえる", @"make|つくる", @"fork|わかれる",@"1"],
	@[@"招", @"barrier|せき", @"invite|まねく", @"tug|ひく",@"2"],
	@[@"困", @"cause|よる", @"annoyed|こまる", @"inn|やど",@"2"],
	@[@"欠", @"gap|あくび", @"exert|リョク", @"get|なる",@"1"],
	@[@"更", @"of course|さら", @"room|むろ", @"have|もつ",@"1"],
	@[@"刻", @"map|え", @"chop|きざむ", @"member|イ",@"2"],
	@[@"賛", @"hall|ドウ", @"shop|みせ", @"praise|たすける",@"3"],
	@[@"抱", @"know|シ", @"father|ちち", @"hug|だく",@"3"],
	@[@"犯", @"taste|あじ", @"station|エキ", @"sin|おかす",@"3"],
	@[@"恐", @"awe|おそれる", @"tug|ひく", @"cut|きる",@"1"],
	@[@"息", @"exist|ザイ", @"much|おおい", @"son|いき",@"3"],
	@[@"遠", @"far|エン", @"debate|", @"sin|つみ",@"1"],
	@[@"戻", @"re-|もどす", @"left|サ", @"map|え",@"1"],
	@[@"願", @"vow|ねがう", @"power|おもり", @"mixing|まじわる",@"1"],
	@[@"絵", @"wage|たまう", @"sketch|カイ", @"float|うく",@"2"],
	@[@"越", @"exceed|こす", @"mountain|サン", @"skill|ノウ",@"1"],
	@[@"欲", @"table|おもて", @"age|とし", @"greed|ほっする",@"3"],
	@[@"痛", @"think|おもう", @"black|くろ", @"hurt|いたい",@"3"],
	@[@"笑", @"duty|かかる", @"oneself|みずから", @"laugh|わらう",@"3"],
	@[@"互", @"add|ます", @"together|たがい", @"person|かた",@"2"],
	@[@"束", @"cost|ついやす", @"ream|たば", @"hit|うつ",@"2"],
	@[@"似", @"high|たかい", @"arts|ギョウ", @"imitate|にる",@"3"],
	@[@"列", @"marriage|コン", @"turn|バン", @"row|レツ",@"3"],
	@[@"探", @"grope|さぐる", @"move|うごく", @"child|こ",@"1"],
	@[@"逃", @"thick|ふとい", @"flee|にげる", @"ten|とお",@"2"],
	@[@"遊", @"word|あざ", @"play|あそぶ", @"half|ハン",@"2"],
	@[@"迷", @"meat|ニク", @"before|さき", @"err|まよう",@"3"],
	@[@"夢", @"know|しる", @"task|ム", @"dream|ゆめ",@"3"],
	@[@"君", @"old boy|きみ", @"talk|はなす", @"sit|すわる",@"1"],
	@[@"閉", @"end|カン", @"shut|とじる", @"member|イ",@"2"],
	@[@"緒", @"epoch|チョウ", @"end|お", @"meet|あつまる",@"2"],
	@[@"折", @"bend|おる", @"most|もっとも", @"picture|えがく",@"1"],
	@[@"草", @"hit|うつ", @"fork|わかれる", @"weeds|くさ",@"3"],
	@[@"暮", @"nine|ここの", @"spend time|くれる", @"cow|ギュウ",@"2"],
	@[@"酒", @"sake|さけ", @"peace|やわらぐ", @"shop|オク",@"1"],
	@[@"悲", @"sad|かなしい", @"horse|うま", @"north|ホク",@"1"],
	@[@"晴", @"rumor|セツ", @"clear up|はれる", @"rare|かなう",@"2"],
	@[@"掛", @"get|なる", @"tax|かける", @"fire|はなす",@"2"],
	@[@"到", @"reach|いたる", @"outside|そと", @"get|なる",@"1"],
	@[@"寝", @"polish|ケン", @"bed|ねる", @"a reason|よし",@"2"],
	@[@"暗", @"shade|くらい", @"argument|ロン", @"hit|うつ",@"1"],
	@[@"盗", @"before|まえ", @"rob|ぬすむ", @"law|セイ",@"2"],
	@[@"吸", @"son|いき", @"most|もっとも", @"sip|すう",@"3"],
	@[@"陽", @"face|おも", @"obey|フ", @"male|ヨウ",@"3"],
	@[@"御", @"akin|キン", @"govern|おん", @"lead to|かえる",@"2"],
	@[@"歯", @"obey|フ", @"cog|よわい", @"person|もの",@"2"],
	@[@"忘", @"fee|リョウ", @"time|たび", @"forget|わすれる",@"3"],
	@[@"雪", @"send|よる", @"snow|セツ", @"strong|つよい",@"2"],
	@[@"吹", @"heat|ネツ", @"akin|キン", @"puff|スイ",@"3"],
	@[@"娘", @"girl|むすめ", @"learn|おぼえる", @"steep|いそぐ",@"1"],
	@[@"誤", @"fast|はやい", @"man|おっと", @"err|あやまる",@"3"],
	@[@"洗", @"wash|セン", @"capital|キョウ", @"repel|しりぞく",@"1"],
	@[@"慣", @"accustomed|なれる", @"life|いきる", @"tool|そなえる",@"1"],
	@[@"礼", @"bow|レイ", @"weeds|くさ", @"ray|ひかる",@"1"],
	@[@"窓", @"firm|シャ", @"machine|はた", @"pane|まど",@"3"],
	@[@"昔", @"full|みちる", @"antiquity|むかし", @"autumn|あき",@"2"],
	@[@"貧", @"dept|ブ", @"poor|まずしい", @"sex|さが",@"2"],
	@[@"怒", @"doubt|うたがう", @"law|ほど", @"angry|いかる",@"3"],
	@[@"泳", @"ocean|ヨ", @"swim|およぐ", @"cost|ね",@"2"],
	@[@"祖", @"delude|ばける", @"pioneer|", @"defect|かたい",@"2"],
	@[@"杯", @"glass|さかずき", @"phase|あい", @"loss|うしなう",@"1"],
	@[@"疲", @"trip|たび", @"tire|つかれる", @"lend|かす",@"2"],
	@[@"皆", @"row|レツ", @"all|みな", @"add|くわえる",@"2"],
	@[@"鳴", @"age|とし", @"convenience|たより", @"cry|なく",@"3"],
	@[@"腹", @"belly|はら", @"luck|フ", @"living|いきる",@"1"],
	@[@"煙", @"warp|へる", @"big|おお", @"smoke|けむる",@"3"],
	@[@"眠", @"don|きる", @"wife|サイ", @"die|ねむる",@"3"],
	@[@"怖", @"wide|ひろい", @"kind|たぐい", @"fearful|こわい",@"3"],
	@[@"耳", @"fork|わかれる", @"ear|ジ", @"one|ひと",@"2"],
	@[@"頂", @"top|いただく", @"exertion|ベン", @"what|なに",@"1"],
	@[@"箱", @"3)|のぞく", @"bin|はこ", @"heat|ネツ",@"2"],
	@[@"晩", @"night|バン", @"eight|や", @"map|え",@"1"],
	@[@"寒", @"cold|カン", @"omit|ぬく", @"topic|ダイ",@"1"],
	@[@"髪", @"hair of the head|ハツ", @"true|ま", @"how far|いく",@"1"],
	@[@"忙", @"busy|いそがしい", @"strong|つよい", @"pay|はらう",@"1"],
	@[@"才", @"genius|サイ", @"smoke|けむる", @"space|あいだ",@"1"],
	@[@"靴", @"shoes|くつ", @"above|うえ", @"omit|ぬく",@"1"],
	@[@"恥", @"shame|はじる", @"rob|ぬすむ", @"rice paddy|デン",@"1"],
	@[@"偶", @"tell|コク", @"famous|イ", @"couple|たま",@"3"],
	@[@"偉", @"now|コン", @"pay|はらう", @"famous|イ",@"3"],
	@[@"猫", @"margin|さす", @"cat|ねこ", @"how far|いく",@"2"],
	@[@"幾", @"summer|なつ", @"how far|いく", @"harm|ガイ",@"2"]
	];
}

#pragma mark User -

- (void) userStart {
	
	userLastLessonReached = 1;
	userContentRecords = [[NSMutableArray alloc] init];
}

- (void) userSaveRecord :(int)location :(float)record {
	
	NSLog(@"> Save  | Saved Record: %f", record);
	[userContentRecords addObject:[NSArray arrayWithObjects: [NSString stringWithFormat:@"%d",location], [NSString stringWithFormat:@"%f",record], nil]];
}

- (void) userReset {
	
	NSLog(@"> Reset | Reset User Records");
	userContentRecords = [[NSMutableArray alloc] init];
	[userContentRecords addObject:[NSArray arrayWithObjects: @"1",@"1",nil]];
	self.interfaceMenuProgress.text = @"Press \"Next\" to begin";
	[self userErase];
	[self gameIsFinished];
	[self userStart];
}

- (void)userErase {
	
	NSString *domainName = [[NSBundle mainBundle] bundleIdentifier];
	[[NSUserDefaults standardUserDefaults] removePersistentDomainForName:domainName];
}

- (void)userLoad {
	
	if( [[[NSUserDefaults standardUserDefaults] objectForKey:@"userLastLessonReached"] intValue] > 0 ){
		
		NSLog(@"= User  | Loading..");
		
		userLastLessonReached	= [[[NSUserDefaults standardUserDefaults] objectForKey:@"userLastLessonReached"] intValue];
		
		NSLog(@"= User  | Loaded.");
	}
}

- (void)userIsSaving {
	
	NSLog(@"= User  | Saving..");
	
	[[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInteger:userLastLessonReached] forKey:@"userLastLessonReached"];
	[[NSUserDefaults standardUserDefaults] synchronize];
	
	NSLog(@"= User  | Saved.");
}

@end