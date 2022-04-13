# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mouarsas <mouarsas@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/11 23:09:21 by mouarsas          #+#    #+#              #
#    Updated: 2021/11/28 19:39:30 by mouarsas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC =	ft_strncmp.c\
		ft_tolower.c\
		ft_toupper.c\
		ft_atoi.c \
		ft_putstr_fd.c\
		ft_striteri.c\
		ft_memset.c\
		ft_strlcat.c \
		ft_isalnum.c\
		ft_isalpha.c\
		ft_isascii.c\
		ft_memcmp.c \
		ft_substr.c \
		ft_putchar_fd.c\
		ft_bzero.c \
		ft_memcpy.c \
		ft_strlen.c\
		ft_strmapi.c \
		ft_memchr.c \
		ft_calloc.c\
		ft_strjoin.c \
		ft_putendl_fd.c\
		ft_isalpha.c\
		ft_isdigit.c\
		ft_isalnum.c\
		ft_putnbr_fd.c\
		ft_strdup.c\
		ft_isascii.c\
		ft_strlcpy.c \
		ft_strchr.c\
		ft_strrchr.c\
		ft_isprint.c\
		ft_strnstr.c\
		ft_memmove.c\
		ft_strtrim.c\
		ft_itoa.c\
		ft_split.c\

OBJECTS = $(SRC:.c=.o)


all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	
%.o : %.c libft.h
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
