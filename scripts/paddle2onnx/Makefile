setup:
	git clone -b release/2.6 https://github.com/PaddlePaddle/PaddleOCR.git
	wget -nc -P ./PaddleOCR/inference https://paddleocr.bj.bcebos.com/PP-OCRv3/english/en_PP-OCRv3_det_infer.tar
	cd ./PaddleOCR/inference && tar xf en_PP-OCRv3_det_infer.tar && cd ../..
	wget -nc  -P ./PaddleOCR/inference https://paddleocr.bj.bcebos.com/PP-OCRv3/english/en_PP-OCRv3_rec_infer.tar
	cd ./PaddleOCR/inference && tar xf en_PP-OCRv3_rec_infer.tar && cd ../..
	wget -nc  -P ./PaddleOCR/inference https://paddleocr.bj.bcebos.com/dygraph_v2.0/ch/ch_ppocr_mobile_v2.0_cls_infer.tar
	cd ./PaddleOCR/inference && tar xf ch_ppocr_mobile_v2.0_cls_infer.tar && cd ../..

convert:
	docker run -it --rm \
		--name paper-summarizer \
		-v ${PWD}:/home/paper-summarizer \
		paper-summarizer:0.1.0 bash convert.sh
