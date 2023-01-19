CASADI_PATH=../casadi/

cp $CASADI_PATH/build/lib/* casadi/
cp -r  $CASADI_PATH/swig/python/* casadi/
cp $CASADI_PATH/build/swig/python/casadi.py casadi/
