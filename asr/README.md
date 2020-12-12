# IIT MADRAS SPEECH LAB'S ENGLISH ASR CHALLENGE

The baseline codes are based on Kaldi HMM-GMM and Chain Model recipes. If you want to replicate the Speech Lab IITM reported baseline results, then please follow the following steps:

1. Download the audio and text data using the link shared with you on registering for the challenge.
2. Organise the working directory after downloading data, path file, codes and other directories required(conf,steps,utils,local.
3. Maintain the directory structure followed in this GITHUB repo while organizing your working directory. 
4. The "data" folder can be either kept in the working directory or somewhere else. Just make sure that you modify the run script accordingly. Refer to 
   line 15 of run_gmm.sh and line 20 of run_tdnn.sh for better understanding.
5. Make changes to path.sh and cmd.sh file according your working environment, i.e., Kaldi and othere dependency paths.
6. In  run_gmm.sh, you can change the paramters (sen, gauss, etc) according to your requirements/working environment. 
   The baseline script shared has senones and gauss set to 7000 and 20 respectively. It is advised to make changes in the script and try out a different set of senones, gauss.
   The decode happens in the background according to the original script, if you don't have sufficient computational resources, you can avoid it by commenting out "(" and ")&" before the decode command in each stage. For example, refer to line 92 and 98 in run_gmm.sh.
4. In run_tdnn.sh, change the parameters according to your requirements/working environment and run the script.
   You can run all steps on a CPU, but it is advisable to run STAGE 16(Network Training) on a GPU as it is quicker. Additionally, even parts of STAGE 16 up to egs 
   generation can be run on a CPU and then you can switch to a GPU by changing the parameter 'train_stage' in run_tdnn.sh. Have a good amount of free space in your 
   disk, as STAGE 16 generates training, validation examples that will remain in your disk until training is completed.

_NOTE: Basic knowledge of scripting, python programming and deep learning will make it easier for you to understand the steps better._
