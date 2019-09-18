FROM clangbuiltlinux/debian AS build-stage
RUN curl -O https://raw.githubusercontent.com/vim/vim/master/src/xxd/xxd.c && clang-10 -static -O3 xxd.c -o xxd

FROM scratch
COPY --from=build-stage /xxd /xxd
