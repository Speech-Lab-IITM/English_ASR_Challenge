from __future__ import print_function
import os, sys, argparse

parser = argparse.ArgumentParser(description="generates the wav.scp file from the .wav files",
                                 epilog="See steps/nnet3/train_tdnn.sh for example.");
parser.add_argument("--wav-path", type=str,
                    help="Absolute path of the directory where .wav files are stored")
parser.add_argument("--scp-path", type=str,
                    help="Relative path of data-dir where wav.scp is generated")

print(' '.join(sys.argv))

args = parser.parse_args()

#check if directories exist
if not os.path.exists(args.wav_path):
    sys.exit("wav files not found")
if not os.path.exists(args.scp_path):
    sys.exit("wav files not found")

paths = []
fnames = []
for _,_,files in os.walk(args.wav_path,topdown=True):
    for file in files:
        paths.append(os.path.join(args.wav_path, file))
        fnames.append(file.replace(".wav",""))
    
with open(os.path.join(args.scp_path,"wav.scp"),"w") as f:
    for i in range(len(paths)):
        f.write("{}\t{}\n".format(fnames[i], paths[i]))
