;初期分岐シナリオ

;背景 屋上 今は黒 [bg]で変えて[freeimage layer="base"]
[bg storage="rooftop.png"]

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

#&f.player_name
好きだ。……俺と恋人になってくれ[p]

#
夏休みの終わりの日、屋上で、ついにその言葉を口にする。[l][r]
たぶん、人生で一番緊張してる。告白なんてこれまでした経験がない。[p]

自分には到底関係ないものだとすら思っていた。[p]
心の内に巡る思いを口にするのは、[r]こんなにも恥ずかしさがあるものなのか。[p]

でも、失敗する不安だとかはない。[l]自意識過剰からではない。[l][r]
彼女は、この告白を受け取ってくれるって信じてるから。[p]

#?
はい。[l]私も、大好き。[p]

;最初の選択、確認させる
*first_select
[cm]
#
満面の笑顔でそう返事をしてくれた。[l][r] 
そして、俺の腕の中に抱きつく彼女は[l]
;ヒロインの選択 

;ルートB storage="sceneB01.ks"
[chara_show name="humio" left=200 top=100 wait=false width="360" height="510"]
;ルートA
[chara_show name="akane" left=700 top=100 wait=true]

[glink color="blue  " target=*first_B x="300" y="450" width="150" size="20" text="八重樫　文緒"]
[glink color="orange" target=*first_A x="800" y="450" width="150" size="20" text="あかね"]
[s]

*first_B
不器用で人見知りだけど、俺の優しい先輩[p]
[jump target="*first_check"]

*first_A
素直になれない、俺のかわいい幼馴染[p]

*first_check

このキャラでいいですか？[r]
[link target="*first_OK"    ]【１】決定[endlink]／
[link target="*first_select"]【２】変更[endlink]
[s]

*first_OK
[cm]
;[layopt layer="message0" visible="false"]
;[clearfix]
[jump storage="sceneB01.ks"]