;初期分岐シナリオ

;背景 屋上 今は黒 [bg]で変えて[freeimage layer="base"]
[bg storage="eki.jpg"]

;右下の⻭⾞メニューを復活[showmenubutton]
[add_theme_button]

;メッセージエリアを表⽰
[layopt layer=message0 visible=true]

/*
;メッセージエリアの調整 この辺の細かい設定は後で
[position layer="message0" left=20 top=400 width=920 height=200]
[position layer="message0" margint=45 marginl=50 marginr=70 marginb=60]

;名前表⽰箇所のテキスト
[ptext name="chara_name_area" layer="message0" color=white size=24 x=50 y=410]
;名前表⽰箇所として利⽤することを宣⾔
[chara_config ptext="chara_name_area"]
*/


#?
ごめんねお待たせ！[p]

#
背後から声が掛かる。[l][r]
誰であろう、決まっている。[p]

[bg storage="humi.png"]

#
八重樫 文緒。一つ上の先輩だ。[p]

#&f.player_name
大丈夫っすよ、そんな待ってないので[p]

#
10分程の遅刻なのだが、彼女を相手に怒る気は全く起きない。[r]
もしこれが男友達だったらたこ殴りにしていたが。[p]
それに、慌てて来たのだろう、息を切らしている。[p]

#humio
やっぱり待ち合わせ建物の中にすれば良かったね、暑かったよね[p]

#
心配してくれるのは嬉しいのだが、[r]先輩も先輩でこの猛暑の中走って大丈夫なのか心配だ[p]
まぁもっとも[p]

#&f.player_name
何言ってんすか、[r]
この前はそれで合流するのにかなり時間かかったことは忘れてませんよ[p]

#humio
うぐ・・・[p]

#
この人、かなりの方向音痴というか天然というか、[r]地図が読めない子である[p]
これは本人も自覚あるみたいで、しかし頑張って読もうとするが[r]ますます迷子になってしまう報われない子なのだ[p]

#&f.player_name
(それにしても…)[p]

#humio
ん？どうしたの？[p]

#
先輩を見やる。[p]

#&f.player_name
(やっぱ可愛いな、この人)[p]

#
文学少女というか、落ち着いた清楚なイメージの文緒先輩だが、[r]
こんな風なアクティブな印象を受ける装いもかなりいい[p]
[bg storage="eki.jpg"]
[chara_show name="humio" time=200]

そう内心ほめていたのだが[p]

#humio:oko
……ちょっと[p]

#
急に冷たい目と声をかけられる。怖いのでそんな目で見ないで欲しい。[p]

#humio
なんだか視線がいやらしかったんですが[p]

#&f.player_name
気のせいっすよ[p]

#
心外だが、確かに無言で女性をじろじろ見るのは良くなった。[r]どうにか気をなだめないといけない[p]
しかしあまり女性を褒める経験がないので、[r]こっぱずかしくどうにもしどろもどろになってしまう[p]

#&f.player_name
・・・綺麗っすね[p]

#
みっともなく視線を下にしてそんなことを言ってしまう[p]

;[chara_mod name="humio" face="doki(tere)" ]
#humio:doki(tere)
！[p]

#
噛み噛みで言い訳をしたが、余計変な風に捉えられただろうか…[l][r]
恐る恐る見上げると[p]

;照れる差分必要?
#humio:happy
…そ、そっか[p]

#
すこし俯き気味になって言葉を返してくる。[p]

;[chara_mod name="humio" face="happy" ]
#humio
……がんばってよかった[p]

#&f.player_name
ん？どうしました[p]

#humio:default
なんでも、ほらはやく行こ！[p]

#
先ほどのつぶやきが聞こえず聞き返したが、相手にされず手を引かれた。[p]
;選択肢1
*select_1
[cm]
#
今日はプールに行くために待ち合わせていたのだが、[r]ここからはバスか電車で行くことになるのだ。[p]
目的のプールまでは送迎バスを利用できるが、ここは[l]

;バス storage="scene1.ks"
[glink color="white" target=*first_1 x="350" y="300" width="150" size="20" text="バスに乗る"]

;電車 storage="scene2.ks"
[glink color="gray " target=*first_2 x="700" y="300" width="150" size="20" text="電車で行く"]

[s]

*first_1
プール行きのバスに乗る
[wait time="1000"] [cm]
[jump storage="scene1.ks"]

*first_2
電車で行く
[wait time="1000"] [cm]
[jump storage="scene2.ks"]