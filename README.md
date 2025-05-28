# PerfInliner : A Cost Model Guided Machine Learning Inlining Framework to Optimize Performance

PerfInliner is a performance-oriented inlining framework built upon LLVM’s ML-inliner.

The `model/saved_policy` directory contains a trained inlining decision model specifically designed to optimize program performance on AMD Ryzen 7995 processor.

## Prerequisites
- Ubuntu distro, e.g. 20.04
- A Python(3.9.x/3.10.x/3.11.x) environment with TensorFlow installed

## build

```bash
git clone https://github.com/cgo2026/PerfInliner.git

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release   -DLLVM_ENABLE_PROJECTS="clang;lld" -DTENSORFLOW_AOT_PATH="PATH-to-PYTHON/site-packages/tensorflow" -DLLVM_HAVE_TFLITE=FALSE -DLLVM_INLINER_MODEL_PATH="../model/saved_policy" -DCMAKE_INSTALL_PREFIX=./  ../llvm/llvm

make -jN
make install
```

## Usage

By default, LLVM uses a heuristic-based inlining strategy. 
The ML-based inliner can be enabled by passing the flag `-mllvm -enable-ml-inliner=release`.