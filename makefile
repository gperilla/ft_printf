# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gperilla <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/06 16:43:17 by gperilla          #+#    #+#              #
#    Updated: 2018/01/22 11:04:51 by gperilla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

EXE = ./$(NAME)

CC = gcc

WARNINGS = -Werror -Wextra -Wall

INC = -I.

LIB = -L libft/ -lft

OBJC = 	ft_printf.c \
		ft_pflags_checks.c \
		ft_pflags_checks2.c \
		ft_pstart_print.c \
		ft_psigned_dec.c \
		ft_punsigned_char.c \
		ft_pprintf_widechar.c \
		ft_pprint_base.c \
		ft_pflags_usage.c \
		ft_punsigned_base.c \
		ft_punsigned_string.c \
		ft_punsigned_string2.c \
		ft_pbuffer.c \
		my_math.c \
		ft_strlen.c \
		ft_strdup.c \
		ft_putchar.c \
		ft_strcpy.c \
		ft_isdigit.c \
		ft_isupper.c \
		ft_bzero.c \
		ft_memset.c \

OBJ = $(OBJC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ranlib $@

test:
	@$(CC) $(INC) $(LIB) $(OBJC) -o $(NAME)
	@echo "test it"

%.o: %.c
	gcc -c $(INC) $(WARNINGS) $< -o $@

clean:
	@rm -f $(OBJ)
	@echo 'removed .o'

fclean: clean
	@rm -rf $(NAME)
	@echo 'All your base are belong to us'

re: fclean all

.PHONY: all clean fclean re test
