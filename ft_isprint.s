<<<<<<< HEAD
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/06 14:50:31 by alaulom           #+#    #+#              #
#    Updated: 2016/01/06 15:03:14 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isprint(int c);

gobal _ft_isprint
=======
;int		ft_isprint(int c);

global	_ft_isprint
>>>>>>> 07bb90c94c28172079042f2388315579d51419bc

section .text

_ft_isprint:
<<<<<<< HEAD
		cmp		rdi, 040
		jge		_ret
		cmp		rdi, 0176
		jle		_ret

_retf
		mov		rax, 0
		ret

_ret
		mov		rax, 0
		ret
=======
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

>>>>>>> 07bb90c94c28172079042f2388315579d51419bc
