MAIN_ROOT=/home/Downloads
KALDI_ROOT=$MAIN_ROOT/kaldi
#source $MAIN_ROOT/venv/bin/activate

[ -f $KALDI_ROOT/tools/env.sh ] && . $KALDI_ROOT/tools/env.sh
export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$PWD:$PATH
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh
export LD_LIBRARY_PATH=/usr/lib32/atlas:/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export LC_ALL=C
