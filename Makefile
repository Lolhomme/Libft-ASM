# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alaulom <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/19 14:33:30 by alaulom           #+#    #+#              #
#    Updated: 2016/01/19 16:58:30 by alaulom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libfts.a

OBJDIR		= .objects

SRCDIR		= src

SRC			= ft_bzero.s ft_cat.s ft_isalnum.s ft_isalpha.s ft_isascii.s \
			  ft_isdigit.s ft_isprint.s ft_memcpy.s ft_memset.s ft_puts.s \
			  ft_strcat.s ft_strdup.s ft_strlen.s ft_tolower.s ft_toupper.s

INCLUDES	= includes

CC			= nasm

OBJ			= $(patsubst %.s, $(OBJDIR)/%.o, $(SRC))

PREFIX		=

UNAME		:= $(shell uname)

ifeq ($(UNAME), Linux)
	-f += elf64
	PREFIX = dLINUX=1
else
	-f += macho64
	PREFIX = --prefix _ -dOSX=1
endif

all: $(NAME)

$(NAME): $(OBJDIR) $(OBJ)
		 ar rc $(NAME) $(OBJ)
		 @echo "ASM win!"

$(OBJDIR)/%.o:  $(addprefix $(SRCDIR)/, %.s)
	$(cc) -f -o $(PREFIX) $^ -I $(INCLUDES)

$(OBJDIR): 
	mkdir -p $(OBJDIR)

test:
	gcc -o test main.c $(NAME) -I $(INCLUDES)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -rf $(OBJDIR)
	@rm -f $(NAME)

re: fclean all
