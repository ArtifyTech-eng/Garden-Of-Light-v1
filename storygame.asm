DEFAULT REL

extern GetStdHandle
extern ExitProcess
extern Sleep
extern WriteConsoleA
extern ReadConsoleA

section .data

msg1 db 'Welcome to The Garden of Light, User! Thank you for playing this game.', 13, 10, 0
len1 equ $ - msg1

msg2 db 'Redirecting you to the menu in 2 seconds.', 13, 10, 0
len2 equ $  - msg2

msg3 db 'The Garden of Light - Menu: q (quit) | c (continue)',13,10,0
len3 equ $ - msg3

msg0 db 'Alright, quitting as you wish!',13,10,0
len0 equ $ - msg0

msg4 db 'It is a really nice day. The sun is shining bright! Lets take a walk.',13,10,0
len4 equ $ - msg4

msg5 db 'Citizen: Please, somebody help!',13,10,0
len5 equ $ - msg5

msg6 db 'Huh? What was that? Go check it (g)? or just stay where you are (s)?',13,10,0
len6 equ $ - msg6

msg7 db 'His feet is stuck under the car! You helped him. He donated you!',13,10,0
len7 equ $ - msg7

msg8 db 'Lets go to the AVM and buy some snacks!',13,10,0
len8 equ $ - msg8

smsg8 db 'Lets go somewhere!',13,10,0
slen8 equ $ - smsg8

msg9 db 'We are at the AVM! Homeless Guy: Spare change?',13,10,0
len9 equ $ - msg9

msg10 db 'You helped him! You went to your garden and slept the night..',13,10,0
len10 equ $ - msg10

msg11 db 'Thank you for playing the game, you finished the version 1! It will be longer in future updates, but for now, you can check other endings.',13,10,0
len11 equ $ - msg11

amsg1 db 'You stayed, we got a little bit curious though!',13,10,0
alen1 equ $ - amsg1

amsg2 db 'Are those ambulance sirens?',13,10,0
alen2 equ $ - amsg2

amsg3 db 'Well, we just learned what it was. Someones foot got stuck under a car!',13,10,0
alen3 equ $ - amsg3

amsg4 db 'You felt bad and shy not to go help them. Anyways, lets go another place!',13,10,0
alen4 equ $ - amsg4

amsg5 db 'Okay, we are in a different street now. Lets just walk around a little bit.',13,10,0
alen5 equ $ - amsg5

amsg6 db 'Old Citizen: Hey buddy, can you help me carry these groceries? My house is just a few blocks away from here and i am really tired. (Respond in s (sure) or n (no))',13,10,0
alen6 equ $ - amsg6

amsg7 db 'You helped the guy! You feel a lot better. Lets get back to our garden now!',13,10,0
alen7 equ $ - amsg7

aamsg7 db 'You did not help the guy. You went to your garden.',13,10,0
aalen7 equ $ - aamsg7

aamsg8 db 'Your garden feels.. strange. Lets just go to that AVM under a few streets from here to buy some snacks to make us feel better.',13,10,0
aalen8 equ $ - aamsg8

aamsg9 db 'Homeless Guy: Hey, spare some change? (Respond in s (sure) or n (no))',13,10,0
aalen9 equ $ - aamsg9

aaamsg10 db 'You did not give money to the homeless guy. Your day was ruined after everyone asking for help, you went to your garden to think.',13,10,0
aaalen10 equ $ - aaamsg10

aaamsg11 db 'All this negativity filled you up with instant sadness, grief, madness... You, you killed yourself.',13,10,0
aaalen11 equ $ - aaamsg11

aamsg10 db 'You helped the guy! You went back to your garden because you had no money left after donating it.',13,10,0
aalen10 equ $ - aamsg10

aamsg11 db 'You felt sleepy, so you went to sleep.',13,10,0
aalen11 equ $ - aamsg11

aamsg12 db 'You could not sleep well because you did not help the other 2 people! Try again :/',13,10,0
aalen12 equ $ - aamsg12

i1 db 50 dup(0)
i1Read dd 0

i2 db 50 dup(0)
i2Read dd 0

i3 db 50 dup(0)
i3Read dd 0

i4 db 50 dup(0)
i4Read dd 0

i5 db 50 dup(0)
i5Read dd 0

i6 db 50 dup(0)
i6Read dd 0

section .text
global main
main:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg1]
mov r8d, len1
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax


lea rdx, [msg2]
mov r8d, len2
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 2000
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg3]
mov r8d, len3
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i1]
mov r8d, 50
lea r9, [i1Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i1], 'q'
je quit_game
cmp byte [i1], 'c'
je continue_game1
jmp main

quit_game:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg0]
mov r8d, len0
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 500
call Sleep

mov rcx, 0
call ExitProcess

continue_game1:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg4]
mov r8d, len4
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg5]
mov r8d, len5
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg6]
mov r8d, len6
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i2]
mov r8d, 50
lea r9, [i2Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i2], 'g'
je normal_path
cmp byte [i2], 's'
je alternate_path
jmp main

alternate_path:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg1]
mov r8d, alen1
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg2]
mov r8d, alen2
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg3]
mov r8d, alen3
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg4]
mov r8d, alen4
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg5]
mov r8d, alen5
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg6]
mov r8d, alen6
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i3]
mov r8d, 50
lea r9, [i3Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i3], 's'
je alternate_path2
cmp byte [i3], 'n'
je alternate_path3
jmp main

alternate_path2:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg7] 
mov r8d, alen7
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

alternate_path3:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg7]
mov r8d, aalen7
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 2500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg8]
mov r8d, aalen8
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 2500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg9] ; alternate bad path
mov r8d, aalen9
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i4]
mov r8d, 50
lea r9, [i4Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i4], 's'
je alternate_path4
cmp byte [i4], 'n'
je suicide_path
jmp alternate_path3

suicide_path:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aaamsg10]
mov r8d, aaalen10
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aaamsg11]
mov r8d, aaalen11 ; i think this is the suicidal ending
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

jmp main

alternate_path4:

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg10]
mov r8d, aalen10
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg11]
mov r8d, aalen11
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [aamsg12] ; this prints you couldnt sleep well
mov r8d, aalen12
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

jmp main

normal_path:

;------------------------------

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg7] ; his feet is stuck
mov r8d, len7
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [smsg8] ; lets go somewhere else
mov r8d, slen8
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [amsg6] ; old guy
mov r8d, alen6
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i5] ; help the old guy?
mov r8d, 50
lea r9, [i5Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i5], 's'
je normal_path2
cmp byte [i5], 'n'
je alternate_path

normal_path2:

; we help the old guy then go to the avm then help homeless guy then finish game

mov rcx, -11
call GetStdHandle
mov rcx, rax


lea rdx, [amsg7] ; you helped the guy blah blah blah
mov r8d, alen7
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg8] ; avm
mov r8d, len8
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg9] ; homeless
mov r8d, len9
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -10
call GetStdHandle
mov rcx, rax

lea rdx, [i6] ; help the homeless guy?
mov r8d, 50
lea r9, [i6Read]
sub rsp, 32
call ReadConsoleA
add rsp, 32

cmp byte [i6], 's'
je normal_path3
cmp byte [i6], 'n'
je alternate_path

normal_path3:

mov rcx, -11
call GetStdHandle
mov rcx, rax

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg10] 
mov r8d, len10
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 1500
call Sleep

mov rcx, -11
call GetStdHandle
mov rcx, rax

lea rdx, [msg11] ; homeless
mov r8d, len11
sub rsp, 32
lea r9, [rsp]
call WriteConsoleA
add rsp, 32

mov rcx, 2500
call Sleep

jmp main