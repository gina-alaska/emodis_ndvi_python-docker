#!/bin/bash

docker ps | grep emodis > /dev/null
if [ $? == 0 ]; then
  echo "docker running an emodis already - that might not make sense - already running a test?"
  exit 1
fi

if [ ! -d ./test/2016-test ]; then
  echo 'extracting test/2016-test.tar to test/input'
  tar xf ./test/2016-test.tar -C ./test/
else
  echo 'detected test data available in test/2016-input - skipping extraction'
fi

if [ ! -d ./test/output ]; then
  echo 'creating output directory';
  mkdir ./test/output
else
  echo 'detected existing output directory ... should we clean it up????'
fi

if [ ! -d ../emodis_ndvi_python ]; then
  echo "missing ../emodis_ndvi_python - please checkout latest verison of code"
  echo "cd ..; git clone git@github.com:gina-alaska/emodis_ndvi_python.git"
  echo "then re-run test.sh"
  exit 1
fi

CODE_DIR=`realpath ../emodis_ndvi_python`
INPUT_DIR=`realpath ./test/2016-test`
OUTPUT_DIR=`realpath ./test/output`
RUN_SCRIPT='/code/scripts/ver-for-docker/run_test_data.bash'

docker run -v $INPUT_DIR:/2016-test -v $OUTPUT_DIR:/output emodis_ndvi_python \
       -v $CODE_DIR:/code  $RUN_SCRIPT 
fi
