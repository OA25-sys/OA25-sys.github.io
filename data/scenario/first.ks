; タイトルバーに表示されるテキストを変更
[title name="IGC2|或る夏の日"]

; 設定用サブルーチンを3つ
[call target="*Sub_Layer"    ]
[call target="*Sub_Plugin"   ]
[call target="*Sub_Character"]

; title.ks タイトル画⾯にジャンプ
[jump storage="title.ks"]

[s]


; ----------------------------------------------------------
*Sub_Layer
; ----------------------------------------------------------

; レイヤーの表示非表示などを設定するサブルーチンラベルです。

; メニューボタンを隠します。
[hidemenubutton]

; [layopt] メッセージレイヤー0番を非表示にします。
[layopt layer="message0" visible="false"]

; [layopt] 通常レイヤー0番･1番･2番を表示してあげます。
; 初期状態では非表示なので注意。
[layopt layer="0" visible="true"]
[layopt layer="1" visible="true"]
[layopt layer="2" visible="true"]

[return]


; ----------------------------------------------------------
*Sub_Plugin
; ----------------------------------------------------------

; プラグインの読み込みなどを行うサブルーチンラベルです。

; テーマ一括プラグインの利用
[plugin name="theme_kopanda_13"]

[return]


; ----------------------------------------------------------
*Sub_Character
; ----------------------------------------------------------

; キャラクターの定義を行うサブルーチンラベルです。

[chara_config anim=false pos_change_time=50 time=10]
;[chara_config talk_focus=brightness]

;文緒の定義
[chara_new  name="humio"  jname="文緒" storage="chara/humio/normalhumi.png"  ]

; [chara_new][chara_face] キャラを定義しています。
[chara_face name="humio"  face="oko"   storage="chara/humio/normalhumioko.png"     ]
[chara_face name="humio"  face="doki"  storage="chara/humio/normalhumiodoroki.png" ]
[chara_face name="humio"  face="happy" storage="chara/humio/normalhumiegao.png"    ]
[chara_face name="humio"  face="doki(tere)" storage="chara/humio/normalhumiodorokitere.png"    ]
[chara_face name="humio"  face="komari" storage="chara/humio/normalkomari.png"    ]
[chara_face name="humio"  face="mahou" storage="chara/humio/mahou.png"    ]
;水着ver.
[chara_face name="humio"  face="swim"      storage="chara/humio/mizugi.png"     ]
[chara_face name="humio"  face="swimoko"   storage="chara/humio/humiomizugioko.png"     ]
[chara_face name="humio"  face="swimdoki"  storage="chara/humio/humiomizugiodoroki.png" ]
[chara_face name="humio"  face="swimhappy" storage="chara/humio/mizugiegao.png"    ]
[chara_face name="humio"  face="swimdoki(tere)" storage="chara/humio/humiomizugiodorokitere.png"    ]
[chara_face name="humio"  face="swimkomari" storage="chara/humio/mizugikomari.png"    ]

; [return] 帰ります。
[return]


;以下テスト----------------------------------------------------------
*test

;名前表示枠の設定 ⾊や座標をメッセージエリアにあわせて調整
[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size=24 x=40 y=435]
[chara_config ptext="chara_name_area"]
;メッセージエリアの位置, ⽂字の表⽰位置を調整
[position layer=message0 width=960 height=210 top=430 left=0]
[position layer=message0 frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60" opacity=230 ]

;背景の画像にあわせて⽂字⾊を変更
[font color="0x454D51"]
[deffont color="0x454D51"]
;背景画像を指定
[bg storage="room.jpg"]

;キャラの設定 自動配置はfalse
[chara_config pos_change_time=50 time=10 anim=false pos_mode=false]
[chara_config talk_focus=brightness]

;キャラクター「あかね」を定義する
[chara_new name="akane" storage="chara/akane/normal.png" jname="あかね"]
;あかねを表⽰
[chara_show name="akane" left=100 top=100]
あかねが表⽰されました。[p]
#akane
こんにちは。あかねだよ。[p]
#
[chara_move name="akane" left=450 anim=true]
;キャラクター「やまと」を定義する
[chara_new name="yamato" storage="chara/yamato/normal.png" jname="やまと"]
;やまとを表⽰
[chara_show name="yamato" left=100 top=10]
#yamato
こんにちは。やまとです。[p]
#

;あかねの表情と登録
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]

あかねを驚かせます。[p]
[chara_mod name="akane" face="doki"] 
 
あかねを笑わせます。[p]
[chara_hide name="yamato" wait=false]
[chara_mod name="akane" face="happy"]
...[p]
[chara_mod name="akane" face="default"]

[glink color="red" size="20" x="260" width="400" y="100" text="選択肢その１" target=*select1 ]
[glink color="blue" size="20" x="260" width="400" y="170" text="選択肢その２" target=*select2 ]
[s]