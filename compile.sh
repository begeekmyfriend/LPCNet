#!/bin/sh

# gcc -Wall -W -O3 -g -I../include dump_data.c freq.c kiss_fft.c pitch.c celt_lpc.c -o dump_data -lm
gcc -o test_lpcnet -mavx2 -mfma -g -O3 -Iinclude -Wall -W -Wextra src/test_lpcnet.c src/common.c src/lpcnet.c src/lpcnet_dec.c src/ceps_codebooks.c src/nnet.c src/nnet_data.c src/freq.c src/kiss_fft.c src/pitch.c src/celt_lpc.c -lm
