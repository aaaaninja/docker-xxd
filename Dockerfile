FROM alpine AS build-stage
RUN apk update && apk add alpine-sdk clang                              &&\
    wget https://raw.githubusercontent.com/vim/vim/master/src/xxd/xxd.c &&\
    clang -static -O3 xxd.c -o xxd

FROM scratch
COPY --from=build-stage /xxd /xxd
