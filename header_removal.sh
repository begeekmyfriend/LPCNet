# Place in 16k-LP7 from TSPSpeech.iso and run to concatenate wave files
# into one headerless training file
for i in data_thchs30/xmly_wuxiaobo_16000/wxb_*/*_*_*.wav
do
sox $i -r 16000 -c 1 -t sw - > wavs/${i##*/}.s16 
done
