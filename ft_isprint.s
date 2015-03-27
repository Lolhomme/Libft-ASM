;int		ft_isprint(int c);

global	_ft_isprint

section .text

_ft_isprint:
	cmp		rdi, ' '
	jl		_retf
	cmp		rdi, '~'
	jg		_retf

_ret:
	mov		rax, 1
	ret

_retf:
	mov		rax, 0
	ret:w

