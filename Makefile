# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/20 12:41:35 by alaulom           #+#    #+#              #
#    Updated: 2016/01/28 12:20:06 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libfts.a

CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
NC		= nasm
NFLAGS	= -f macho64

SRC		= ft_bzero.s ft_cat.s ft_isalnum.s ft_isascii.s ft_isalpha.s \
		  ft_isdigit.s ft_isprint.s ft_memcpy.s ft_memset.s ft_puts.s \
		  ft_strcat.s ft_strdup.s ft_strlen.s ft_tolower.s ft_toupper.s

OBJ		= $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	@echo "ASM win!"

%.o: %.s
	$(NC) -I includes/ -o $@ -s $? $(NFLAGS)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

test: $(NAME) main.c
	gcc -I . main.c libfts.a
	./a.out

.PHONY: all clean fclean re
