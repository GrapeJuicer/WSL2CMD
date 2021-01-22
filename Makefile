#
#  Makefile
#

# 最終目的のファイル
TARGET = @

# ソースファイル(*.c)の一覧
SRCS = @.c

# オブジェクトファイル(*.o)の一覧
OBJS = ${SRCS:.c=.o}

# ヘッダファイルの一覧
HEADERS = 

# コンパイラ・リンカの指定
CC = gcc
CCFLAGS =
LD = gcc
LDFLAGS =
LIBS =

# OBJSからTARGETを作る方法
$(TARGET) : $(OBJS)
	$(LD) $(OBJS) $(LDFLAGS) -o $(TARGET) $(LIBS)

# *.c から *.o を作る方法
.c.o :
	$(CC) $(CCFLAGS) -c $<

# *.oは HEADERS と Makefile に依存(これらが書き終わったときにも*.oを再構築)
$(OBJS) : $(HEADERS) Makefile

# make cleanとしたときに実行されるコマンド
clean :
	rm -f $(TARGET) $(OBJS) core *~
