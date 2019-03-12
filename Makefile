##
## Makefile for  in /home/antoine/Rendu/Assembly/asm_minilibc
## 
## Made by Antoine
## Login   <antoine.roche@epitech.eu>
## 
## Started on  Mon Mar 20 15:27:13 2017 Antoine
## Last update Sun Mar 26 23:11:31 2017 Simon
##

NAME	= libasm.so

LIB	= -lmy -L

RM	= rm -f

SRCS	= ./strlen.asm	\
	  ./strcmp.asm	\
	  ./strncmp.asm \
	  ./strchr.asm	\
	  ./rindex.asm	\
	  ./strstr.asm	\
	  ./strcspn.asm	\
	  ./strpbrk.asm	\

OBJS	= $(SRCS:.asm=.o)

LSFLAGS  = -shared -fPIC

ASMFLAGS = -f elf64

all: $(NAME)

$(NAME): $(OBJS)
	ld $(LSFLAGS) -o $(NAME) $(OBJS)

%.o:	%.asm
	nasm $(ASMFLAGS) $< -o $@
clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
