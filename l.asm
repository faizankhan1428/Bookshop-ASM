.model small           
.386
.stack 1000h
.data
wm db 09,10,10,"        ############################################################  $"
wm1 db 09,10,"          #  ***********WELCOME TO THE Bookshop*************         #  $"
wm2 db 09,10,"          #              Choose the category                         # $"
wm3 DB 10,"          #        **       1.Story Books              **            # $" 
wm4 DB 10,"          #        **       2.Science Fiction          **            # $"
wm5 DB 10,"          #        **       3.Historical Fiction       **            # $"
wm6 DB 10,"          #        **       4.Poetry                   **            # $"
wm7 DB 10,"          #        **       5.Autobiography            **            # $"
wm8 DB 10,"          #        **                                  **            # $"
wm9 DB 10,"          #                                                          # $"
wm10 db 09,10,"      ############################################################ $"
cho db 10,13,"Choose the Book $"
B1 DB 10,13, "  **      1. The Very Hungry Caterpillar             **$" 
B2 DB 10,13,"  **      2. Goodnight Moon                          **$" 
B3 DB 10,13,"  **      3. The Snowy Day                           **$" 
B4 DB 10,13,"  **      4. The Charlie and the Chocolate Factory   **$" 
B5 DB 10,13,"  **      5.  The Tale of Peter Rabbit               **$"  

B6 DB 10,13,"  **      1. Red Mars                         **$" 
B7 DB 10,13,"  **      2. THe War of the World             **$" 
B8 DB 10,13,"  **      3.  Brave New World                 **$" 
B9 DB 10,13,"  **      4. The Left Hand Darkness           **$" 
B10 DB 10,13,"  **      5.  The Time Machine                **$"  

B11 DB 10,13,"  **      1.  Trust                       **$" 
B12 DB 10,13,"  **      2.  War and Peace               **$" 
B13 DB 10,13,"  **      3.  Girl with a Pearl Earing    **$" 
B14 DB 10,13,"  **      4. The Nightingle               **$" 
B15 DB 10,13,"  **      5. The Pillars of The Earth     **$" 

B16 DB 10,13,"  **      1. Time is a Mother         **$" 
B17 DB 10,13,"  **      2.  Pillow Thoughts         **$" 
B18 DB 10,13,"  **      3.  Leaves of Grass         **$" 
B19 DB 10,13,"  **      4.  Milk and Honey          **$" 
B20 DB 10,13,"  **      5.  The Sun and Her Flower  **$" 

B21 DB 10,13,"  **      1. The Glass Castle          **$" 
B22 DB 10,13,"  **      2. Spare                     **$" 
B23 DB 10,13,"  **      3. Born a Crime              **$" 
B24 DB 10,13,"  **      4. When Breathe Becomes Air  **$" 
B25 DB 10,13,"  **      5. The Dairy of a Young Girl **$" 

Inv db 10,13,"Invalid Book$"

cho1 db 10,13,"Enter your Book$"

 sm db 0Ah, "Book transaction successfully!", 0Ah,"$"

cho2 db 10,13,"1.Back to main menu$"
cho3 db 10,13,"2.Exit$"
.code
start:
mov ax,@data
mov ds,ax
Top:
call gr
call categorys
mov ah,4ch
int 21h

new macro
mov ah,02
mov dl,10
int 21h
endm new

backgrounda macro
MOV AH,0
MOV AL,6
INT 10H

Mov ah,0bh      ;background color
mov bh, 00h
mov bl, 25
int 10h
	
mov bh,1
mov bl,5
int 10h
endm backgrounda
backgroundb macro
MOV AH,0
MOV AL,6
INT 10H

Mov ah,0bh      ;background color
mov bh, 00h
mov bl, 19
int 10h
	
mov bh,1
mov bl,1
int 10h
endm backgroundb
gr proc


mov ax ,6
int 10h

mov ax ,@data
mov ds,ax

mov ah ,09
mov dx,offset wm
int 21h

mov ah ,09
mov dx,offset wm1
int 21h

mov ah ,09
mov dx,offset wm2
int 21h
mov ah ,09
mov dx,offset wm3
int 21h
mov ah ,09
mov dx,offset wm4
int 21h
mov ah ,09
mov dx,offset wm5
int 21h

mov ah ,09
mov dx,offset wm6
int 21h

mov ah ,09
mov dx,offset wm7
int 21h

mov ah ,09
mov dx,offset wm8
int 21h 

mov ah ,09
mov dx,offset wm9
int 21h 

mov ah ,09
mov dx,offset wm10
int 21h 

mov ah ,09
mov dx,offset cho
int 21h 



Mov ah,0bh      ;background color
mov bh, 00h
mov bl, 11
int 10h
	
mov bh,1
mov bl,12
int 10h
	
mov ah,0ch
mov al,2
mov cx,100
mov dx,30

ret
 gr endp
categorys proc


new
new
mov ah,01
int 21h


mov bh,al
sub bh,48

cmp bh,1
je story

cmp bh,2
je Science

cmp bh,3
je Historical

cmp bh,4
je Poetry

cmp bh,5
je Autobiography

jmp INVALID

story:
backgroundb
mov ah,02
mov dl,10
int 21h
lea dx,cho
mov ah,09
int 21h

mov ah,02
mov dl,10
int 21h

lea dx,B1
mov ah,09
int 21h

lea dx,B2
mov ah,09
int 21h

lea dx,B3
mov ah,09
int 21h

lea dx,B4
mov ah,09
int 21h

lea dx,B5
mov ah,09
int 21h

lea dx,cho1
mov ah,09
int 21h


mov ah,01
int 21h

lea dx, sm 
mov ah, 09
int 21h

mov bl,al
sub bl,48


cmp al,1
je TOP

lea dx,cho2                  ;go back to main menu
mov ah,09
int 21h

lea dx,cho3
mov ah,09
int 21h

lea dx,wm2              ;main menu                 
mov ah,09
int 21h

sub al,48

cmp al,1
je TOP

Science:
backgroundb
mov ah,02
mov dl,10
int 21h

lea dx,cho
mov ah,09
int 21h

mov ah,02
mov dl,10
int 21h

lea dx,B6
mov ah,09
int 21h

lea dx,B7
mov ah,09
int 21h

lea dx,B8
mov ah,09
int 21h

lea dx,B9
mov ah,09
int 21h

lea dx,B10
mov ah,09
int 21h

lea dx,cho1
mov ah,09
int 21h


mov ah,01
int 21h
lea dx, sm 
mov ah, 09
int 21h

sub al,48
cmp al, 1
je TOP

lea dx,cho2                 ;go back to main menu
mov ah,09
int 21h

lea dx,cho3
mov ah,09
int 21h

lea dx,wm2               ;main menu                 
mov ah,09
int 21h

mov ah,01
int 21h

sub al,48

cmp al,1
je TOP




Historical:
backgroundb
mov ah,02
mov dl,10
int 21h

lea dx,cho
mov ah,09
int 21h

mov ah,02
mov dl,10
int 21h

lea dx,B11
mov ah,09
int 21h

lea dx,B12
mov ah,09
int 21h

lea dx,B13
mov ah,09
int 21h

lea dx,B14
mov ah,09
int 21h

lea dx,B15
mov ah,09
int 21h


lea dx,cho1
mov ah,09
int 21h

mov ah,01
int 21h
lea dx, sm 
mov ah, 09
int 21h

mov bl,al
sub bl,48
cmp al, 1
je Top

lea dx,cho2                 ;go back to main menu
mov ah,09
int 21h

lea dx,cho3
mov ah,09
int 21h

lea dx,wm2                ;main menu                 
mov ah,09
int 21h

mov ah,01
int 21h

sub al,48

cmp al,1
je TOP


Poetry:
backgroundb
mov ah,02
mov dl,10
int 21h

lea dx,cho
mov ah,09
int 21h

mov ah,02
mov dl,10
int 21h

lea dx,B16
mov ah,09
int 21h

lea dx,B17
mov ah,09
int 21h

lea dx,B18
mov ah,09
int 21h

lea dx,B19
mov ah,09
int 21h

lea dx,B20
mov ah,09
int 21h

lea dx,cho1
mov ah,09
int 21h

mov ah,01
int 21h
lea dx, sm 
mov ah, 09
int 21h
mov bl,al
sub bl,48
cmp al,1
je Top



lea dx,cho2                 ;go back to main menu
mov ah,09
int 21h

lea dx,cho3
mov ah,09
int 21h

lea dx,wm2               ;main menu                 
mov ah,09
int 21h

mov ah,01
int 21h

sub al,48

cmp al,1
je TOP

Autobiography:
backgroundb
mov ah,02
mov dl,10
int 21h

lea dx,cho
mov ah,09
int 21h

mov ah,02
mov dl,10
int 21h

lea dx,B21
mov ah,09
int 21h

lea dx,B22
mov ah,09
int 21h

lea dx,B23
mov ah,09
int 21h

lea dx,B24
mov ah,09
int 21h

lea dx,B25
mov ah,09
int 21h

lea dx,cho1
mov ah,09
int 21h

mov ah,01
int 21h
lea dx, sm 
mov ah, 09
int 21h

mov bl,al
sub bl,48
cmp al, 1
je Top

lea dx,cho2                 ;go back to main menu
mov ah,09
int 21h

lea dx,cho3
mov ah,09
int 21h

lea dx,wm2               ;main menu                 
mov ah,09
int 21h

mov ah,01
int 21h

sub al,48

cmp al,1
je TOP

INVALID:
Lea dx,Inv
mov ah,09
int 21h
ret
categorys endp



end start