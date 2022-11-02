NAME =			tile_maker

HDR =			main.h

HDR_DIR =		./

SRC_DIR =		./

SRC_FILES =		main.c

SRC =			$(addprefix ${SRC_DIR},${SRC_FILES})

OBJ	=			${SRC:.c=.o}

FLAGS =			

%.o: %.c
					${CC} ${FLAGS} -I ${HDR_DIR} -c $^ -o $@

all: $(NAME)

$(NAME): ${OBJ}
					${CC} ${FLAGS} ${OBJ} -I${HDR_DIR} -o ${NAME}

clean:
					rm -f ${OBJ}

fclean: clean
					rm -f ${NAME}
