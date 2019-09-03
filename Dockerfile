FROM alpine

RUN apk update && apk add alpine-sdk clang
 && wget https://raw.githubusercontent.com/vim/vim/master/src/xxd/xxd.c
 && clang xxd.c
