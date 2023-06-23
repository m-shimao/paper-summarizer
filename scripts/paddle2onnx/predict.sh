#!/bin/bash
set -Ceu

cd PaddleOCR
pip install Polygon3 lanms-neo==1.0.2
pip install paddlepaddle paddle2onnx onnxruntime
python3 setup.py install

python3 -u tools/infer/predict_system.py --use_gpu=False --use_onnx=True \
  --det_model_dir=./inference/det.onnx \
  --rec_model_dir=./inference/rec.onnx \
  --cls_model_dir=./inference/cls.onnx \
  --image_dir=doc/imgs_en/img_12.jpg \
  --rec_char_dict_path=ppocr/utils/en_dict.txt

# python3 tools/infer/predict_system.py --use_gpu=False \
#   --cls_model_dir=./inference/ch_ppocr_mobile_v2.0_cls_infer \
#   --rec_model_dir=./inference/en_PP-OCRv3_rec_infer \
#   --det_model_dir=./inference/en_PP-OCRv3_det_infer \
#   --image_dir=doc/imgs_en/img_12.jpg \
#   --rec_char_dict_path=ppocr/utils/en_dict.txt
