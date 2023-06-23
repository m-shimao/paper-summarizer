# convert Paddle model to ONNX
copy from https://github.com/PaddlePaddle/PaddleOCR/blob/release/2.6/deploy/paddle2onnx/readme.md

```
# clone repository and download paddle models
make setup

# convert to onnx
make convert

# check result
ls PaddleOCR/inference/*.onnx

# copy to repository root models
sudo chown -R $USER:$USER .
cp PaddleOCR/inference/*.onnx ../../models
```
