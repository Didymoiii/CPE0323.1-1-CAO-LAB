TITLE logicsim.asm

.model small
.stack 0100h
.data
.code
main proc
	;al = (ah ^ bh + al ^ bl)' xor (cl + (ch ^ dh)' ^ dl)'
	mov ax, 11110111b
	mov bx, 11000110b
	mov cx, 01010111b
	mov dx, 11001011b

	and ch, dh	;ch ^ dh
	not ch		;ch holds the value of ch ^ dh
	;al = (ah ^ bh + al ^ bl)' xor (cl + ch ^ dl)'

	and ch, dl	;ch ^ dl -- (cl + ch ^ dl) this term will now become (cl + ch)
	or cl, ch	;cl + ch, cl now holds the value
	not cl		;the last term left is cl and it is negated
	;al = (ah ^ bh + al ^ bl)' xor cl

	and ah, bh	;ah ^ bh, ah holds the value
	and al, bl	;al ^ bl, al holds the value
	;(ah ^ bh + al ^ bl)' now becomes (ah + al)'

	or al, ah	;al + ah, al holds the value
	not al		;al is negated
	;al = al xor cl

	xor al, cl	; al xor cl, al holds the value

	mov ah, 02h
	int 21h

	mov ax, 4c00h
	int 21h
endp
end main