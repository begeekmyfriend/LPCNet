# Place in 16k-LP7 from TSPSpeech.iso and run to concatenate wave files
# into one headerless training file
for i in wavs/*.s16 
do
b1=$(basename $i | cut -d . -f1)
b2=$(basename $b1 | cut -d . -f1)
b3=$(basename $b2 | cut -d . -f1)
./dump_data -test $i features/${b3##*/}.f32
done
