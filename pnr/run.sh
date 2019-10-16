#!/bin/bash -x
user=$1

if [ -z "$user" ]; then
    user=durst
fi

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine_linux=true;;
    Darwin*)    machine_linux=false;;
esac
if $machine_linux; then
  sed_="sed"
else
  sed_="gsed"
  if ! hash gsed 2>/dev/null; then
    echo "gsed needs to be installed on mac" 1>&2
    exit 1
  fi
fi

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ssh $user@kiwi "rm -rf results"
ssh $user@kiwi "mkdir -p results"
scp $dir/remote.sh $user@kiwi:
scp $dir/constraints.xdc $user@kiwi:
scp $dir/compile.sh $user@kiwi:


for circuit_path in ${dir}/../test/verilog_examples/*/*/*.v; do
	echo "Processing ${circuit_path}"
  scp $circuit_path $user@kiwi:
  circuit_basename=$(basename $circuit_path)
  circuit_name=`$sed_ -n -E "s/(.*)_[^_]*/\1/p" <<< $circuit_basename`
  circuit_par=`$sed_ -n -E "s/.*_([^_]*).v$/\1/p" <<< $circuit_basename`
  ssh $user@kiwi "./remote.sh $(basename $circuit_path) ${circuit_name} ${circuit_par}"
  ssh $user@kiwi "rm $(basename $circuit_path)"
done

scp $user@kiwi:results/results.csv $dir/results.csv

