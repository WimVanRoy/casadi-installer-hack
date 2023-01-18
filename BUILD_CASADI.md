# Info Building Casadi

After cloning casadi and checking out the right version:

```
brew install swig ipopt
```
(or using apt if you are on ubuntu)


Clone casadi, and go to the correct folder:
```
mkdir build
cd build
cmake .. -DWITH_PYTHON=on -DWITH_PYTHON3=on
```

You can configure additional packages:
 - ipopt
```
cmake .. -DWITH_IPOPT=on
```
 - QPoases
```
cmake .. -DWITH_QPOASES=on -DWITH_LAPACK=on
```
- gurobi
```
cmake .. -DWITH_GUROBI=on -DGUROBI_INCLUDE_DIR="/Library/gurobi951/macos_universal2/include/" -DGUROBI_LIBRARY="/Library/gurobi951/macos_universal2/lib/libgurobi95.dylib"
```

Afterwards, you can build using make:
```
make -j4
```

With the flag -j, several computer cores can be used to speed up the building process. Here we use 4.


Note: we have build casadi for python3.8 ONLY, so you can only use the binaries with python3.8. (systemdefault). To change this behavior, you will need to change the link to python to another version!


# Info packaging

On this system, there is a package to make install easy, it includes a custom
setup.py.

And an casadi/__init__.py file copied from another casadi installation

Afterwards, we need to copy all build/lib/* files from casadi to casadi/ as well as build/swig/python/casadi.py to casadi/ (see fill_package.sh)

So, for now:

```
fill_package.sh
```

And install in your virtual environment:
```
pip install .
```
