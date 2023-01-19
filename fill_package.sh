if [ -z "$1" ] ; then
    CASADI_PATH="../casadi"
else
    CASADI_PATH=$1
fi

cp $CASADI_PATH/build/lib/* casadi/
cp -r  $CASADI_PATH/swig/python/* casadi/
cp $CASADI_PATH/build/swig/python/casadi.py casadi/
