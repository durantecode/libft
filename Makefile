# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldurante <ldurante@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/06 16:59:01 by ldurante          #+#    #+#              #
#    Updated: 2022/01/27 14:43:09 by ldurante         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# VARIABLE DECLARATIONS #

NAME = libft.a
RM = rm -f
CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs

# COLORS #

RED = \033[0;31m
GREEN = \033[0;32m
MAGENTA = \033[0;35m
NO_COLOR = \033[0m

# SOURCES & OBJECTS #

SRCS =  srcs/ft_memset.c \
		srcs/ft_bzero.c \
		srcs/ft_memcpy.c \
		srcs/ft_memccpy.c \
		srcs/ft_memmove.c \
		srcs/ft_memchr.c \
		srcs/ft_memcmp.c \
		srcs/ft_strlen.c \
		srcs/ft_strlcpy.c \
		srcs/ft_strlcat.c \
		srcs/ft_strchr.c \
		srcs/ft_strrchr.c \
		srcs/ft_strnstr.c \
		srcs/ft_strncmp.c \
		srcs/ft_atoi.c \
		srcs/ft_isalpha.c \
		srcs/ft_isdigit.c \
		srcs/ft_isalnum.c \
		srcs/ft_isascii.c \
		srcs/ft_isprint.c \
		srcs/ft_toupper.c \
		srcs/ft_tolower.c \
		srcs/ft_calloc.c \
		srcs/ft_strdup.c \
		srcs/ft_substr.c \
		srcs/ft_strjoin.c \
		srcs/ft_strtrim.c \
		srcs/ft_itoa.c \
		srcs/ft_strmapi.c \
		srcs/ft_putchar_fd.c \
		srcs/ft_putstr_fd.c \
		srcs/ft_putendl_fd.c \
		srcs/ft_putnbr_fd.c \
		srcs/ft_split.c \
		srcs/ft_lstnew.c \
		srcs/ft_lstadd_front.c \
		srcs/ft_lstsize.c \
		srcs/ft_lstlast.c \
		srcs/ft_lstadd_back.c \
		srcs/ft_lstdelone.c \
		srcs/ft_lstclear.c \
		srcs/ft_lstiter.c \
		srcs/ft_lstmap.c \
		srcs/ft_new_node.c \
		srcs/ft_strcmp.c \
		srcs/ft_lstdup.c \
		srcs/get_next_line.c \
		srcs/free_matrix.c \
		srcs/print_matrix.c \
		srcs/ft_strjoin3.c \
		srcs/list_to_matrix.c \
		srcs/matrix_len.c \
		srcs/matrix_add_back.c \
		srcs/matrix_dup.c \
		srcs/del_str_pos.c \
		srcs/del_matrix_pos.c \
		srcs/ft_lst_sort.c \
		srcs/ft_lst_free.c \

SRCS_PF = ft_printf/ft_printf.c ft_printf/check_format.c ft_printf/check_flags.c ft_printf/type_c.c \
		  ft_printf/type_s.c ft_printf/type_p.c ft_printf/type_diu.c ft_printf/type_x.c ft_printf/width_no_precision.c \
		  ft_printf/width_precision.c ft_printf/base_hex_functions.c ft_printf/ft_uitoa.c \

OBJS = $(SRCS:.c=.o)
OBJS_PF = $(SRCS_PF:.c=.o)

# RULES #

all: $(NAME)

$(NAME): $(OBJS) $(OBJS_PF)
	@$(AR) $(NAME) $(OBJS) $(OBJS_PF)
	@echo "$(MAGENTA) Libft compiled $(GREEN) ✔✔✔ $(NO_COLOR)"

clean:
	@$(RM) $(OBJS) $(OBJS_PF)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all re clean fclean

.SILENT: $(OBJS) $(OBJS_PF)
