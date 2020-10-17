*title 
 
;タイトル画⾯の背景を表⽰
[bg storage="title1.png" time=100]
;[image storage="chara/humio/image1.JPG" left=500 top=0 layer=0 visible=true]

[glink color="gray" text="はじめから" x=120 y=450 target=*start]
[glink color="gray" text="つづきから" x=120 y=550 target=*load]

[s]

;はじめからが選択された場合
*start

;-----------------------------------------------------------
;名前の入力 初回だけ 何かフラグ管理必要あるかな

あなたの名前を入力してください
*Part1_Edit

[layopt layer="message0" visible="false"]
;[image layer="1" storage="15_input_A.png" x="0" y="0"] 適切な画像を入れる？

; [edit] 入力欄を出します。
[edit name="f.player_name" left="70" top="420" width="250" height="40" size="30" maxchars="8" initial="ユウキ"]
[layopt layer="message0" visible="true"]

[button graphic="right_arrow.png" target="*Part1_Commit" x="340" y="416" width="70" height="50"]
[s]

*Part1_Commit

; [commit] このタグによって[edit]の中身が変数 f.player_name に移ります。
[commit]

; [cm] フリーレイヤーを解放します。入力欄はフリーレイヤーに出ていますので、これで入力欄が消えます。
[freeimage layer="1]
[cm]

;名前の⼊⼒チェック
[if exp="f.player_name=='' "]
必ず名前は⼊⼒してください[p]
[jump target="*Part1_Edit"]
[endif] 

「[emb exp="f.player_name"]」でいいですか？[r]
[link target="*Part1_OK"  ]【１】決定[endlink]／
[link target="*Part1_Edit"]【２】変更[endlink]
[s]

*Part1_OK
[cm]
はじめまして、[emb exp="f.player_name"]さん
[wait time="1000"] [cm]

[layopt layer="message0" visible="false"]

[jump storage="scene00.ks"]

;-----------------------------------------------------------

;つづきからが選択された場合
*load
[showload]
;ロードをキャンセルした場合、もう⼀度タイトル画⾯表⽰
[jump target=*title]
