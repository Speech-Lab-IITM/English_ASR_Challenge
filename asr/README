IIT MADRAS SPEECH LAB'S ENGLISH ASR CHALLENGE

The baseline code is based on Kaldi Chain Model. If you want to repeat the baseline or work based on it:

1. Organise the working directory after downloading data, path file, codes and other directories required(conf,steps,utils,local)[REFER to the GITHUB repo provided 
   to organise the working directory. Data can be eiher kept in the working directory or somewhere else, but modify the script accordingly)
2. Make changes to path.sh and cmd.sh file according your working environment.
3. In  run_gmm.sh, first change the paramters according to your requiremnts and working environment and run the script. 
   The baseline script is for 7000 senones and 20 gauss. You can make changes in the script if you want to try out a different set of senones, gauss.
   The decode happens in the background according to the original script, if you don't have sufficient computational resources, you can change the script to run 
   normally.
4. In run_tdnn.sh, change the parameters and according to your requiremnts and working environment and run the script.
   You can run all steps on a CPU, but it is advisable to run STAGE 16(Network Training) on a GPU as it is quicker. Additionally, even parts of STAGE 16 up to egs      generation can be run on a CPU and then you can switch to a GPU by changing the parameter 'train_stage' in run_tdnn.sh 
   Have a good amount of free space in your disk, as STAGE 16 generates training, validation examples that will reamain in your disk until training is completed.

NOTE:
Basic knowledge of scripting, python programming and deep learning will make it easier for you to understand the steps better.   
