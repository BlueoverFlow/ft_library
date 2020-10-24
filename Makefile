# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ael-mezz <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/21 12:57:37 by ael-mezz          #+#    #+#              #
#    Updated: 2019/10/24 21:55:44 by ael-mezz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra -c

CC = gcc

RM = rm -f

SRCS = 				ft_atoi.c					\
					ft_bzero.c					\
					ft_isalnum.c				\
		   			ft_isalpha.c				\
		   			ft_isascii.c				\
		   			ft_isdigit.c				\
		   			ft_isprint.c				\
		   			ft_memccpy.c				\
		   			ft_memchr.c					\
		   			ft_memcmp.c					\
					ft_memcpy.c					\
		   			ft_memmove.c				\
		   			ft_memset.c					\
					ft_strchr.c					\
	   				ft_strlcat.c				\
	   				ft_strlcpy.c				\
	   				ft_strlen.c					\
	   				ft_strncmp.c				\
	   				ft_strnstr.c				\
	   				ft_strrchr.c				\
	   				ft_tolower.c				\
	   				ft_toupper.c				\
	   				ft_calloc.c					\
	   				ft_strdup.c					\
	   				ft_substr.c					\
	   				ft_strjoin.c				\
	   				ft_strtrim.c				\
	   				ft_split.c					\
	   				ft_itoa.c					\
	   				ft_strmapi.c				\
	   				ft_putchar_fd.c				\
	   				ft_putstr_fd.c				\
	   				ft_putendl_fd.c				\
	   				ft_putnbr_fd.c				\
	   				ft_strcpy.c					\
			   		ft_strcat.c

OBJ = $(SRCS:.c=.o)

HEADER = ../includes/libft.h

BONUS_SRCS =		ft_lstnew_bonus.c			\
					ft_lstadd_front_bonus.c		\
					ft_lstsize_bonus.c			\
					ft_lstlast_bonus.c			\
					ft_lstadd_back_bonus.c		\
					ft_lstdelone_bonus.c		\
					ft_lstclear_bonus.c			\
					ft_lstiter_bonus.c			\
					ft_lstmap_bonus.c

BONUS_OBJ = $(BONUS_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(SRCS) $(HEADER)
	$(CC) $(FLAGS) $(SRCS)
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

bonus: $(BONUS_SRCS) $(HEADER)
	$(CC) $(FLAGS) $(BONUS_SRCS)
	ar -rc $(NAME) $(BONUS_OBJ)
	ranlib $(NAME)

clean:
	$(RM) *.o

fclean: clean
	$(RM) $(NAME)

re: fclean all

rebonus: fclean bonus