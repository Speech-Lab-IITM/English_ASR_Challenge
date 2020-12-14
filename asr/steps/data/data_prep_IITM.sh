#!/bin/bash

# Copyright 2020  Vishwas M Shetty

# Code to extract zipped wav files
# The final expected data structure:
# NPTEL_IITM_English_Challenge/Train_Dev
# --> transcription_dictionary
#   --> Trans_and_dict 
# --> wav
#   --> IITM/<wav files>
#   --> NPTEL/<course ids>/<wav files>

#Usage: data_prep_IIT.sh /home/vishwas/NPTEL_IITM_English_Challenge/Train_Dev/wav /home/vishwas/NPTEL_IITM_English_Challenge/Train_Dev/transcription_dictionary/Trans_and_dict

audio_dir=$1  # "Absolute" path to NPTEL_IITM_English_Challenge/Train_Dev/wav
data=$2     # "Absolute" path to NPTEL_IITM_English_Challenge/Train_Dev/transcription_dictionary/Trans_and_dict

#NOTE: the files should be named "train_NPTEL_IITM", "dev_IITM" and "dev_NPTEL". If giving others names please update the arguments below.
train_set=train_NPTEL_IITM   #train_NPTEL_IITM
recog_sets="dev_IITM dev_NPTEL"  #"dev_IITM dev_NPTEL"

for folder in IITM_1.tar.gz IITM_2.tar.gz IITM_3.tar.gz IITM_4.tar.gz IITM_5.tar.gz; do
    cd $audio_dir/IITM
    tar -pxvzf ${folder}.tar.gz
done

for folder in NPTEL_1.tar.gz NPTEL_2.tar.gz NPTEL_3.tar.gz NPTEL_4.tar.gz NPTEL_5.tar.gz NPTEL_6.tar.gz;do
    cd $audio_dir/NPTEL
    tar -pxvzf ${folder}.tar.gz
done

mv $audio_dir/IITM/IITM_*/* $audio_dir/IITM/.
mkdir -p $audio_dir/IITM/zip
#Save the downloaded zip folders
mv $audio_dir/IITM/IITM*gz $audio_dir/IITM/zip/.
rm -rf $audio_dir/IITM/IITM_*

mv $audio_dir/NPTEL/NPTEL_*/* $audio_dir/NPTEL/.
mkdir -p $audio_dir/NPTEL/zip
#Save the downloaded zip folders
mv $audio_dir/NPTEL/NPTEL*gz $audio_dir/NPTEL/zip/.
rm -rf $audio_dir/NPTEL/NPTEL_*

# updating wav.scp with the absolute path to downloaded wav file directory. Optional
for folder in $train_set $recog_sets; do
    sed -i 's|NPTEL_IITM_English_Challenge/Train_Dev/wav|'${audio_dir}'|g' ${data}/${folder}/wav.scp
done
