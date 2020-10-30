*start
;クレジット画⾯の背景を表⽰
[bg storage="credit.png" time=1]
[mask_off]

[layopt layer=0 visible=true]
[ptext layer=0 text="STAFF" size=40 x=400 y=750 color=snow name="text"]
[ptext layer=0 text="制作 / 企画" size=20 x=400 y=900 color=snow name="text"]
[ptext layer=0 text="OA" size=20 x=400 y=950 color=snow name="text"]
[ptext layer=0 text="原画 / CG / キャラクターデザイン" size=20 x=400 y=1100 color=snow name="text"]
[ptext layer=0 text="OA" size=20 x=400 y=1150 color=snow name="text"]
[ptext layer=0 text="シナリオ" size=20 x=400 y=1300 color=snow name="text"]
[ptext layer=0 text="OA、Shintaro" size=20 x=400 y=1350 color=snow name="text"]
[ptext layer=0 text="その他" size=20 x=400 y=1500 color=snow name="text"]
[ptext layer=0 text="OA、Shintaro、TSURU" size=20 x=400 y=1550 color=snow name="text"]
[ptext layer=0 text="使用素材" size=40 x=400 y=1700 color=snow name="text"]
[ptext layer=0 text="<背景 / 戦闘用エフェクト>" size=20 x=400 y=1850 color=snow name="text"]
[ptext layer=0 text="あやえも研究所 様" size=20 x=400 y=1900 color=snow name="text"]
[ptext layer=0 text="キューン・プラント 様" size=20 x=400 y=1950 color=snow name="text"]
[ptext layer=0 text="<モブキャラ(シルエット)>" size=20 x=400 y=2100 color=snow name="text"]
[ptext layer=0 text="ニコニ・コモンズ 様" size=20 x=400 y=2150 color=snow name="text"]
[ptext layer=0 text="素材ID : [nc89127][nc215087][nc210848][nc210848][215085]" size=20 x=400 y=2200 color=snow name="text"]
[ptext layer=0 text="制作ソフト" size=40 x=400 y=2350 color=snow name="text"]
[ptext layer=0 text="ティラノスクリプト" size=20 x=400 y=2450 color=snow name="text"]
[wait time=1]

[keyframe name="animation1"]
;[frame p=0% y="300"]
[frame p=100% y="-3500"]
[endkeyframe]
;ここまでどんな動きをするのか設定しました。実際に動く命令は以下文からです。
;---------アニメーションの実行 ~秒かけてキーフレームアニメーションを実行する
[kanim name="text" keyframe="animation1" time="60000" ]
[wait time=25000]
[layopt layer=message0 visible=true]
[link target="*title"]タイトルへ戻る[endlink]／
[link target="*restart"]もう一度再生する[endlink]
[s]
*title
[layopt layer=message0 visible=false]
[jump storage="title.ks"]

*restart
[layopt layer=message0 visible=false]
[jump target="*start"]

;[wait time=1]しないと動きません