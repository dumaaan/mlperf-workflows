#!/bin/bash
set -ex
# Get COCO 2014 data sets

cd ./object_detection

rm -rf data/
mkdir -p data/coco
pushd data/coco

apt-get update
apt-get install -y curl unzip

curl -O https://dl.fbaipublicfiles.com/detectron/coco/coco_annotations_minival.tgz
tar xzf coco_annotations_minival.tgz

curl -O http://images.cocodataset.org/zips/train2014.zip
unzip train2014.zip

curl -O http://images.cocodataset.org/zips/val2014.zip
unzip val2014.zip

curl -O http://images.cocodataset.org/annotations/annotations_trainval2014.zip
unzip annotations_trainval2014.zip

# TBD: MD5 verification
# $md5sum *.zip *.tgz
#f4bbac642086de4f52a3fdda2de5fa2c  annotations_trainval2017.zip
#cced6f7f71b7629ddf16f17bbcfab6b2  train2017.zip
#442b8da7639aecaf257c1dceb8ba8c80  val2017.zip
#2d2b9d2283adb5e3b8d25eec88e65064  coco_annotations_minival.tgz

popd
