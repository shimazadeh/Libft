# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shabibol <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/01 17:54:10 by shabibol          #+#    #+#              #
#    Updated: 2022/03/03 18:44:08 by shabibol         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_atoi.c ft_isascii.c ft_memcmp.c ft_putendl_fd.c ft_strdup.c ft_strlen.c ft_strtrim.c ft_bzero.c ft_isdigit.c ft_memcpy.c ft_putnbr_fd.c ft_striteri.c ft_strmapi.c ft_substr.c ft_calloc.c ft_isprint.c ft_memmove.c ft_putstr_fd.c ft_strjoin.c ft_strncmp.c ft_tolower.c ft_isalnum.c ft_itoa.c ft_memset.c ft_split.c ft_strlcat.c ft_strnstr.c ft_toupper.c ft_isalpha.c ft_memchr.c ft_putchar_fd.c ft_strchr.c ft_strlcpy.c ft_strrchr.c ft_lstnew.c ft_lstdelone.c ft_lstclear.c ft_lstadd_back.c ft_lstadd_front.c ft_lstsize.c ft_lstiter.c ft_lstmap.c ft_lstlast.c


OBJS = $(SRCS:%.c=%.o)
FLAGS = -Wall -Wextra -Werror

$(NAME):
	gcc $(FLAGS) -c $(SRCS)
	ar rc $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all