;Program made by Luis Zurita
buzzer_input equ &FFD
buzzer_busy equ &FF3
bargraph equ &FFE
traffic equ &FFF
;notas bajas
do defw &8240
dos defw &8241
re defw &8242
res defw &8243
mi defw &8244
fa defw &8245
fa3 defw &8345
fa4 defw &8445
fas defw &8246
fas4 defw &8446
sol defw &8247
sols defw &8248
la defw &8249
la3 defw &8349
las defw &824A
si defw &824B
sishort defw &814B
si3 defw &834B
si4 defw &844B
si6 defw &864B
silence defw &10000 
silencefinal defw &100 
silenceinfinite defw &100
;notas altas
doh defw &8250
dosh defw &8251
dosh6 defw &8651
dosh3 defw &8351
dosh5 defw &8551
reh defw &8252
reh6 defw &8652
reh3 defw &8352
resh defw &8253
mih defw &8254
mih3 defw &8354
fah defw &8255
fash defw &8256
solh defw &8257
solsh defw &8258
lah defw &8259
lash defw &825A
sih defw &825B
numero defw &0005
numero3 defw &0010
numero1 defw &0020
numero2 defw &0090
inicio defw &844B
inicio2 defw &8240
sollarge defw &8647
rehlarge defw &8752
repeat1 defw &0002
repeat2 defw &0002
repeat3 defw &0002
one defw &0001
;trafficlights
greenr defw &0001
amberr defw &0002
redr defw &0004
greenl defw &0008
amberl defw &0010
redl defw &0020

;program start




loop1
 lda inicio
      sta buzzer_input
check lda buzzer_busy
      jne check
             lda redr
             sta traffic

silence1 lda silence
       sub numero
       sta silence
       jne silence1





 lda do
      sta buzzer_input

check1 lda buzzer_busy
      jne check1
             lda amberr
             sta traffic

 lda si
      sta buzzer_input

check2 lda buzzer_busy
      jne check2

             lda greenr
             sta traffic
 lda dosh
      sta buzzer_input

check3 lda buzzer_busy
      jne check3
             lda greenl
             sta traffic

 lda reh
      sta buzzer_input

check4 lda buzzer_busy
      jne check4

             lda amberl
             sta traffic
 lda mih
      sta buzzer_input

check5 lda buzzer_busy
      jne check5

             lda redl
             sta traffic
 lda reh
      sta buzzer_input

check6 lda buzzer_busy
      jne check6

             lda redr
             sta traffic

 lda dosh
      sta buzzer_input
check7 lda buzzer_busy
      jne check7

             lda amberr
             sta traffic
 lda si
      sta buzzer_input
check8 lda buzzer_busy
      jne check8
             lda greenr
             sta traffic
 lda la
      sta buzzer_input
check9 lda buzzer_busy
      jne check9
             lda greenl
             sta traffic
 lda sollarge
      sta buzzer_input
check10 lda buzzer_busy
      jne check10

             lda amberl
             sta traffic
 lda rehlarge
      sta buzzer_input
check11 lda buzzer_busy
      jne check11
             lda redl
             sta traffic

 lda rehlarge
      sta buzzer_input

check12 lda buzzer_busy
      jne check12
             lda redr
             sta traffic

silence2 lda silence
       sub numero3
       sta silence
       jne silence2

 lda reh3
      sta buzzer_input

check13 lda buzzer_busy
      jne check13
             lda amberr
             sta traffic
 lda la3
      sta buzzer_input

check14 lda buzzer_busy
      jne check14

             lda greenr
             sta traffic
 lda reh3
      sta buzzer_input

check15 lda buzzer_busy
      jne check15
             lda greenl
             sta traffic
 lda la3
      sta buzzer_input

check16 lda buzzer_busy
      jne check16

             lda amberl
             sta traffic
 lda reh3
      sta buzzer_input

check17 lda buzzer_busy
      jne check17
             lda redl
             sta traffic

 lda la3
      sta buzzer_input

check18 lda buzzer_busy
      jne check18
             lda redr
             sta traffic

 lda reh3
      sta buzzer_input

check19 lda buzzer_busy
      jne check19
             lda amberr
             sta traffic

 lda mih
      sta buzzer_input

check20 lda buzzer_busy
      jne check20
             lda greenr
             sta traffic

 lda dosh5
      sta buzzer_input

check21 lda buzzer_busy
      jne check21

             lda greenl
             sta traffic
silence3 lda silence
       sub numero
       sta silence
       jne silence3

  lda repeat1
  sub one
  sta repeat1
  jne loop1
loop2
 lda si4
      sta buzzer_input

check22 lda buzzer_busy
      jne check22
silence4 lda silence
       sub numero2
       sta silence
       jne silence4

 lda si
      sta buzzer_input

check23 lda buzzer_busy
      jne check23
silence5 lda silence
       sub numero2
       sta silence
       jne silence5
 lda si
      sta buzzer_input

check24 lda buzzer_busy
      jne check24
silence6 lda silence
       sub numero2
       sta silence
       jne silence6

 lda si
      sta buzzer_input

check25 lda buzzer_busy
      jne check25
silence7 lda silence
       sub numero2
       sta silence
       jne silence7

 lda si
      sta buzzer_input

check26 lda buzzer_busy
      jne check26



 lda reh
      sta buzzer_input

check27 lda buzzer_busy
      jne check27

 lda doh
      sta buzzer_input

check28 lda buzzer_busy
      jne check28
silence8 lda silence
       sub numero2
       sta silence
       jne silence8
 lda reh
      sta buzzer_input

check29 lda buzzer_busy
      jne check29

silence9 lda silence
       sub numero2
       sta silence
       jne silence9

 lda dosh
      sta buzzer_input

check30 lda buzzer_busy
      jne check30

 lda reh
      sta buzzer_input

check31 lda buzzer_busy
      jne check31

 lda dosh
      sta buzzer_input

check32 lda buzzer_busy
      jne check32

 lda si3
      sta buzzer_input

check33 lda buzzer_busy
      jne check33


silence10 lda silence
       sub numero1
       sta silence
       jne silence10
 lda si
      sta buzzer_input

check34 lda buzzer_busy
      jne check34
silence11 lda silence
       sub numero2
       sta silence
       jne silence11
 lda si
      sta buzzer_input

check35 lda buzzer_busy
      jne check35
silence12 lda silence
       sub numero2
       sta silence
       jne silence12

 lda si
      sta buzzer_input

check36 lda buzzer_busy
      jne check36
silence13 lda silence
       sub numero2
       sta silence
       jne silence13

 lda si
      sta buzzer_input

check37 lda buzzer_busy
      jne check37



 lda reh
      sta buzzer_input

check38 lda buzzer_busy
      jne check38

 lda doh
      sta buzzer_input

check39 lda buzzer_busy
      jne check39
silence14 lda silence
       sub numero1
       sta silence
       jne silence14
 lda reh
      sta buzzer_input

check40 lda buzzer_busy
      jne check40

silence15 lda silence
       sub numero1
       sta silence
       jne silence15

 lda dosh
      sta buzzer_input

check41 lda buzzer_busy
      jne check41

 lda reh
      sta buzzer_input

check42 lda buzzer_busy
      jne check42

 lda mih
      sta buzzer_input

check43 lda buzzer_busy
      jne check43


silence16 lda silence
       sub numero1
       sta silence
       jne silence16

 lda la3
      sta buzzer_input

check44 lda buzzer_busy
      jne check44

silence17 lda silence
       sub numero3
       sta silence
       jne silence17

 lda la
      sta buzzer_input

check45 lda buzzer_busy
      jne check45
silence18 lda silence
       sub numero2
       sta silence
       jne silence18
 lda la
      sta buzzer_input

check46 lda buzzer_busy
      jne check46
silence19 lda silence
       sub numero2
       sta silence
       jne silence19

 lda la
      sta buzzer_input

check47 lda buzzer_busy
      jne check47
silence20 lda silence
       sub numero2
       sta silence
       jne silence20

 lda la
      sta buzzer_input

check48 lda buzzer_busy
      jne check48


lda reh
      sta buzzer_input

check49 lda buzzer_busy
      jne check49

lda la
      sta buzzer_input

check50 lda buzzer_busy
      jne check50

lda reh
      sta buzzer_input

check51 lda buzzer_busy
      jne check51


 lda la
      sta buzzer_input

check52 lda buzzer_busy
      jne check52
silence22 lda silence
       sub numero2
       sta silence
       jne silence22
 lda reh
      sta buzzer_input

check53 lda buzzer_busy
      jne check53
silence23 lda silence
       sub numero2
       sta silence
       jne silence23

 lda mih
      sta buzzer_input

check54 lda buzzer_busy
      jne check54
silence24 lda silence
       sub numero2
       sta silence
       jne silence24

 lda mih3
      sta buzzer_input

check55 lda buzzer_busy
      jne check55
silence25 lda silence
       sub numero2
       sta silence
       jne silence25

 lda dosh
      sta buzzer_input

check56 lda buzzer_busy
      jne check56

silence26 lda silence
       sub numero
       sta silence
       jne silence26

  lda repeat2
  sub one
  sta repeat2
  jne loop2
loop3
 lda reh6
      sta buzzer_input

check57 lda buzzer_busy
      jne check57

 lda dosh6
      sta buzzer_input

check58 lda buzzer_busy
      jne check58

 lda si3
      sta buzzer_input

check59 lda buzzer_busy
      jne check59

 lda fas4
      sta buzzer_input

check60 lda buzzer_busy
      jne check60

silence27 lda silence
       sub numero
       sta silence
       jne silence27

 lda fa
      sta buzzer_input

check61 lda buzzer_busy
      jne check61


silence28 lda silence
       sub numero1
       sta silence
       jne silence28
 lda fa
      sta buzzer_input

check62 lda buzzer_busy
      jne check62
silence29 lda silence
       sub numero2
       sta silence
       jne silence29
 lda fa
      sta buzzer_input

check63 lda buzzer_busy
      jne check63
silence30 lda silence
       sub numero2
       sta silence
       jne silence30

 lda fa
      sta buzzer_input

check64 lda buzzer_busy
      jne check64


 lda fa
      sta buzzer_input

check65 lda buzzer_busy
      jne check65
silence32 lda silence
       sub numero2
       sta silence
       jne silence32

 lda si
      sta buzzer_input

check66 lda buzzer_busy
      jne check66
silence33 lda silence
       sub numero2
       sta silence
       jne silence33

 lda si
      sta buzzer_input

check67 lda buzzer_busy
      jne check67
silence34 lda silence
       sub numero2
       sta silence
       jne silence34

 lda si
      sta buzzer_input

check68 lda buzzer_busy
      jne check68
silence35 lda silence
       sub numero2
       sta silence
       jne silence35

 lda si3
      sta buzzer_input

check69 lda buzzer_busy
      jne check69
silence36 lda silence
       sub numero2
       sta silence
       jne silence36

 lda la
      sta buzzer_input

check70 lda buzzer_busy
      jne check70
silence37 lda silence
       sub numero2
       sta silence
       jne silence37

 lda si3
      sta buzzer_input

check71 lda buzzer_busy
      jne check71
silence38 lda silence
       sub numero2
       sta silence
       jne silence38

 lda si
      sta buzzer_input

check72 lda buzzer_busy
      jne check72
silence39 lda silence
       sub numero2
       sta silence
       jne silence39

 lda sol
      sta buzzer_input

check73 lda buzzer_busy
      jne check73
silence40 lda silence
       sub numero1
       sta silence
       jne silence40

 lda sol
      sta buzzer_input

check74 lda buzzer_busy
      jne check74
silence41 lda silence
       sub numero2
       sta silence
       jne silence41

 lda sol
      sta buzzer_input

check75 lda buzzer_busy
      jne check75
silence42 lda silence
       sub numero2
       sta silence
       jne silence42

 lda sol
      sta buzzer_input

check76 lda buzzer_busy
      jne check76
silence43 lda silence
       sub numero2
       sta silence
       jne silence43

 lda sol
      sta buzzer_input

check77 lda buzzer_busy
      jne check77


 lda sol
      sta buzzer_input

check78 lda buzzer_busy
      jne check78
silence44 lda silence
       sub numero2
       sta silence
       jne silence44

 lda si
      sta buzzer_input

check79 lda buzzer_busy
      jne check79
silence45 lda silence
       sub numero2
       sta silence
       jne silence45

 lda si
      sta buzzer_input

check80 lda buzzer_busy
      jne check80
silence46 lda silence
       sub numero2
       sta silence
       jne silence46

 lda si
      sta buzzer_input

check81 lda buzzer_busy
      jne check81

 lda si3
      sta buzzer_input

check82 lda buzzer_busy
      jne check82

 lda dosh
      sta buzzer_input

check83 lda buzzer_busy
      jne check83

 lda reh3
      sta buzzer_input

check84 lda buzzer_busy
      jne check84

 lda la
      sta buzzer_input

check85 lda buzzer_busy
      jne check85
silence47 lda silence
       sub numero1
       sta silence
       jne silence47

 lda la
      sta buzzer_input

check86 lda buzzer_busy
      jne check86
silence48 lda silence
       sub numero2
       sta silence
       jne silence48
 lda la
      sta buzzer_input

check87 lda buzzer_busy
      jne check87
silence49 lda silence
       sub numero2
       sta silence
       jne silence49

 lda la
      sta buzzer_input

check88 lda buzzer_busy
      jne check88
silence50 lda silence
       sub numero2
       sta silence
       jne silence50

 lda la
      sta buzzer_input

check89 lda buzzer_busy
      jne check89

 lda la
      sta buzzer_input

check90 lda buzzer_busy
      jne check90
silence51 lda silence
       sub numero2
       sta silence
       jne silence51
 lda reh
      sta buzzer_input

check91 lda buzzer_busy
      jne check91
silence52 lda silence
       sub numero2
       sta silence
       jne silence52

 lda reh
      sta buzzer_input

check92 lda buzzer_busy
      jne check92
silence53 lda silence
       sub numero2
       sta silence
       jne silence53

 lda reh
      sta buzzer_input

check93 lda buzzer_busy
      jne check93

 lda reh3
      sta buzzer_input

check94 lda buzzer_busy
      jne check94
silence54 lda silence
       sub numero2
       sta silence
       jne silence54
 lda mih
      sta buzzer_input

check95 lda buzzer_busy
      jne check95
silence55 lda silence
       sub numero2
       sta silence
       jne silence55

 lda mih3
      sta buzzer_input

check96 lda buzzer_busy
      jne check96
silence56 lda silence
       sub numero2
       sta silence
       jne silence56

 lda dosh3
      sta buzzer_input

check97 lda buzzer_busy
      jne check97
silence57 lda silence
       sub numero1
       sta silence
       jne silence57

  lda repeat3
  sub one
  sta repeat3
  jne loop3

 lda reh6
      sta buzzer_input

check98 lda buzzer_busy
      jne check98

 lda dosh6
      sta buzzer_input

check99 lda buzzer_busy
      jne check99

 lda si6
      sta buzzer_input

check100 lda buzzer_busy
      jne check100

 lda si6
      sta buzzer_input

check101 lda buzzer_busy
      jne check101


silencef lda silencefinal
       sub numero2
       sta silence
       jne silencef

silenceinfinity lda silenceinfinite
      sub numero1
      sta silence
      jne silenceinfinity
enddddd  jmp loop1























