##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Makefile
##

SRC	=		src/main.c \
			src/hello.c

CRIT_SRC	=	tests/hello.c \
				src/hello.c

CRIT_NAME	=	criterion

OBJ	=	$(SRC:.c=.o)

NAME	=	hello_world

CFLAGS	+=	-Wall -Wextra -Werror -I./inc -g

LDFLAGS = -lcriterion -lgcov --verbose -I./inc

all	:	$(NAME)

$(NAME):			$(OBJ)
		gcc -o $(NAME) $(OBJ)

clean	:
			rm -f $(NAME)

fclean	:	clean
			rm -f $(OBJ)
			rm -f $(CRIT_NAME)

re	:	fclean all

test_run:			$(OBJ)
		cc -o $(CRIT_NAME) $(CRIT_SRC) $(LDFLAGS)
		./$(CRIT_NAME)
