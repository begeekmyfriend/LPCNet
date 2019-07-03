# Place in 16k-LP7 from TSPSpeech.iso and run to concatenate wave files
# into one headerless training file
for i in tacotron_output/eval/*.f32 
do
  basename=$(basename $i | cut -d . -f1)
  ./test_lpcnet $i tacotron_output/eval/$basename.s16
  ffmpeg -y -f s16le -ar 16k -ac 1 -i tacotron_output/eval/$basename.s16 tacotron_output/eval/$basename.wav
done
printf "file %s\n" tacotron_output/eval/*.wav > list.txt
ffmpeg -y -f concat -i list.txt -acodec copy wuxiaobo_lpc.wav
