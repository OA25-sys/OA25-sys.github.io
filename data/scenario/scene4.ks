[mask time="700" color="white"]

;マスクしている間に画⾯をつくる 背景まだ！！！！！！！！
[bg storage="pp.jpg" time="0"] 
;メッセージエリアを表⽰
[layopt layer=message0 visible=true]
[add_theme_button]
[chara_hide_all]

;フィルターなし
;[filter brightness=50]

;マスクを解除
[mask_off time="700" ]

;シーン4 ------------------------------------------------------

#&f.player_name
お待たせしました。どうぞ[p]

[chara_show name="humio" face="happy"]
#humio
あ、私の分も買って来てくれたんだ！ありがと[p]

#
あのあと奥には行かずに微糖コーヒーを買って戻ってきた。[r]
気分は良くなったので先輩の案は成功と言える。[p]

それから買ってきたものを飲みながら待つこと10分[p]

#humio:default
お、開園だね。やっとだ[p]

#
ようやく園内に入ることができた[p]

[mask time="700" color=0x66ebff]
[bg storage="/pool1.jpg" time="300"] 
#humio:swim
[mask_off time="700" ]

#humio
お、お待たせ…[p]

#&f.player_name
お、おっす[p]

#humio:swimhappy
ど、どうでしょうか…[p]

#&f.player_name
き、綺麗っす…[p]

#humio:swim
……[p]
#&f.player_name
……[p]

#
お互いに無言になって気まずくて俯いてしまう。[r]
なんだかとても恥ずかしい遣り取りをしている。気がする…[p]

#&f.player_name
じゃ、じゃあ、行きますか[p]

#humio:swim
うん…[p]

#
僅かに間を置き、待ったをかけられる。[p]

#humio:swimhappy
あのさ、お願いがあるんだけどさ、いいかな？[p]

#&f.player_name
はい、どうしました？[p]

#
若干俯き気味になり、どこか気まずそうに訪ねてくる[p]

#humio:swim
今日、泳ぎ方を教えて欲しいなぁって[p]

#&f.player_name
え……[l][r]
先輩、泳げないのに俺の誘いに乗ってくれたんですか！？[p]

#humio:swimdoki(tere)
だ、だって、[emb exp="f.player_name"]君が誘ってくれてたのが嬉しくて…[p]

#
かいしん の いちげき。[l][r]
[emb exp="f.player_name"] に こうかはばつぐんだ！[p]

#humio:swim

#&f.player_name
しょうがないですね。[l][r]
じゃあまずは泳ぎの練習しましょうか[p]

#humio:swimhappy
ありがとう！[p]

#&f.player_name
近くに流れるプールがあるみたいなので、そこで練習しましょうか[p]

;//シーン切り替え
[mask time="700" color=0x66ebff]
[bg storage="/pool1.jpg" time="0"]
#humio:swim
[mask_off time="700" ]

#&f.player_name
そうそう、そのままバタ足やって見てください[p]

#humio
こ、こうかな[p]

#&f.player_name
上手ですね、その調子ですよ[p]

#
先輩の手を引いてバタ足を促す。[l][r]
先輩が泳げないことには驚いたが、[r]
こうやってに触れ合うことができるのはむしろラッキーかもしれない。[p]
手を繋いでいることにかなりドキドキしているが、[r]
自然な感じで話せる様につとめる。[p]
数分経ち、早くもバタ足をマスターする。[p]

#&f.player_name
じゃあ次はクロールの練習をしましょう[r]
息継ぎはこうやって…[p]

;//シーン切り替え
[mask time="700" color=0x66ebff]
[wait time="400"]
[mask_off time="700" ]

#
練習し始めてから1時間が経つ頃には、[r]
先輩は一人でクロールができるようになっていた。[p]
こんなに早くできるようになるなんて、[r]
先輩には泳ぎの才能があったに違いない[p]

#&f.player_name
先輩、そろそろ休憩しましょうか[p]

#
こういうプールでは各時間ごとに休憩がある。[r]
先輩も泳ぎの練習で疲れているだろうから、休憩するために水から出た。[l][r]
座って休みながら先輩に話しかける。[p]

#&f.player_name
それにしても上達がはやいですね。驚きました[p]

#humio
んーん、[emb exp="f.player_name"]君のおかげ。[l][r]
#humio:swimhappy
教え方がすごく上手だったし！[p]

#&f.player_name
そ、そうですか？[r]
そう言ってもらえると嬉しいです[p]

#
泳ぎを人に教えるのは初めてだったが、そう言ってもらえると自信が持てる[p]
#humio:swim
#
そうこうしているうちに、休憩時間がそろそろ終わる。[p]

;選択肢3
*select_3
[cm]
#

流れるプールで今度こそ遊んでも良いが、[r]
近くの売店で売っている料理もおいしそうだ。[p]

#humio:swim
次、どこ行こっか？[l]

;流れるプール storage="scene5.ks"
[glink color="blue" target=*first_5 x="300" y="400" width="180" size="20" text="流れるプールで遊ぶ"]

;売店で何か買う storage="scene4_2"
[glink color="orange" target=*first_4_2 x="700" y="400" width="180" size="20" text="売店で何か買う"]

[s]

*first_5
今度こそ流れるプールで遊ぶ
[wait time="1000"] [cm]
[jump storage="scene5.ks"]

*first_4_2
売店で何か買う
[wait time="1000"] [cm]
[jump storage="scene4_2.ks"]
