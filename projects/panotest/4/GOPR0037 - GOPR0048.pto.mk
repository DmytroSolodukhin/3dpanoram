
# makefile for panorama stitching, created by hugin using the new makefilelib

# Tool configuration
NONA=nona
PTSTITCHER=PTStitcher
PTMENDER=PTmender
PTBLENDER=PTblender
PTMASKER=PTmasker
PTROLLER=PTroller
ENBLEND=enblend
ENFUSE=enfuse
SMARTBLEND=smartblend.exe
HDRMERGE=hugin_hdrmerge
RM=rm
EXIFTOOL=exiftool

# Project parameters
HUGIN_PROJECTION=2
HUGIN_HFOV=360
HUGIN_WIDTH=11618
HUGIN_HEIGHT=5809

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW 
NONA_OPTS=
ENBLEND_OPTS= -w -f11618x5809
ENBLEND_LDR_COMP=--compression=90
ENBLEND_EXPOSURE_COMP=--compression=LZW 
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS='-Software=Hugin 2013.0.0.4692917e7a55' '-UserComment<$${UserComment}&\#xa;Projection: Equirectangular (2)&\#xa;FOV: 360 x 180&\#xa;Ev: 4.40' -f

# the output panorama
LDR_REMAPPED_PREFIX=GOPR0037\ -\ GOPR0048
LDR_REMAPPED_PREFIX_SHELL=GOPR0037\ -\ GOPR0048
HDR_STACK_REMAPPED_PREFIX=GOPR0037\ -\ GOPR0048_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL=GOPR0037\ -\ GOPR0048_hdr_
LDR_EXPOSURE_REMAPPED_PREFIX=GOPR0037\ -\ GOPR0048_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL=GOPR0037\ -\ GOPR0048_exposure_layers_
PROJECT_FILE=/var/www/3dp/3dpanoram/projects/panotest/4/GOPR0037\ -\ GOPR0048.pto
PROJECT_FILE_SHELL=/var/www/3dp/3dpanoram/projects/panotest/4/GOPR0037\ -\ GOPR0048.pto
LDR_BLENDED=GOPR0037\ -\ GOPR0048.jpg
LDR_BLENDED_SHELL=GOPR0037\ -\ GOPR0048.jpg
LDR_STACKED_BLENDED=GOPR0037\ -\ GOPR0048_fused.jpg
LDR_STACKED_BLENDED_SHELL=GOPR0037\ -\ GOPR0048_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED=GOPR0037\ -\ GOPR0048_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL=GOPR0037\ -\ GOPR0048_blended_fused.jpg
HDR_BLENDED=GOPR0037\ -\ GOPR0048_hdr.exr
HDR_BLENDED_SHELL=GOPR0037\ -\ GOPR0048_hdr.exr

# first input image
INPUT_IMAGE_1=/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG
INPUT_IMAGE_1_SHELL=/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG

# all input images
INPUT_IMAGES=/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG
INPUT_IMAGES_SHELL=/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG\
/var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG

# remapped images
LDR_LAYERS=GOPR0037\ -\ GOPR00480000.tif\
GOPR0037\ -\ GOPR00480001.tif\
GOPR0037\ -\ GOPR00480002.tif\
GOPR0037\ -\ GOPR00480003.tif\
GOPR0037\ -\ GOPR00480004.tif\
GOPR0037\ -\ GOPR00480005.tif\
GOPR0037\ -\ GOPR00480006.tif\
GOPR0037\ -\ GOPR00480007.tif\
GOPR0037\ -\ GOPR00480008.tif\
GOPR0037\ -\ GOPR00480009.tif\
GOPR0037\ -\ GOPR00480010.tif\
GOPR0037\ -\ GOPR00480011.tif
LDR_LAYERS_SHELL=GOPR0037\ -\ GOPR00480000.tif\
GOPR0037\ -\ GOPR00480001.tif\
GOPR0037\ -\ GOPR00480002.tif\
GOPR0037\ -\ GOPR00480003.tif\
GOPR0037\ -\ GOPR00480004.tif\
GOPR0037\ -\ GOPR00480005.tif\
GOPR0037\ -\ GOPR00480006.tif\
GOPR0037\ -\ GOPR00480007.tif\
GOPR0037\ -\ GOPR00480008.tif\
GOPR0037\ -\ GOPR00480009.tif\
GOPR0037\ -\ GOPR00480010.tif\
GOPR0037\ -\ GOPR00480011.tif

# remapped images (hdr)
HDR_LAYERS=GOPR0037\ -\ GOPR0048_hdr_0000.exr\
GOPR0037\ -\ GOPR0048_hdr_0001.exr\
GOPR0037\ -\ GOPR0048_hdr_0002.exr\
GOPR0037\ -\ GOPR0048_hdr_0003.exr\
GOPR0037\ -\ GOPR0048_hdr_0004.exr\
GOPR0037\ -\ GOPR0048_hdr_0005.exr\
GOPR0037\ -\ GOPR0048_hdr_0006.exr\
GOPR0037\ -\ GOPR0048_hdr_0007.exr\
GOPR0037\ -\ GOPR0048_hdr_0008.exr\
GOPR0037\ -\ GOPR0048_hdr_0009.exr\
GOPR0037\ -\ GOPR0048_hdr_0010.exr\
GOPR0037\ -\ GOPR0048_hdr_0011.exr
HDR_LAYERS_SHELL=GOPR0037\ -\ GOPR0048_hdr_0000.exr\
GOPR0037\ -\ GOPR0048_hdr_0001.exr\
GOPR0037\ -\ GOPR0048_hdr_0002.exr\
GOPR0037\ -\ GOPR0048_hdr_0003.exr\
GOPR0037\ -\ GOPR0048_hdr_0004.exr\
GOPR0037\ -\ GOPR0048_hdr_0005.exr\
GOPR0037\ -\ GOPR0048_hdr_0006.exr\
GOPR0037\ -\ GOPR0048_hdr_0007.exr\
GOPR0037\ -\ GOPR0048_hdr_0008.exr\
GOPR0037\ -\ GOPR0048_hdr_0009.exr\
GOPR0037\ -\ GOPR0048_hdr_0010.exr\
GOPR0037\ -\ GOPR0048_hdr_0011.exr

# remapped maxval images
HDR_LAYERS_WEIGHTS=GOPR0037\ -\ GOPR0048_hdr_0000_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0001_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0002_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0003_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0004_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0005_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0006_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0007_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0008_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0009_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0010_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0011_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL=GOPR0037\ -\ GOPR0048_hdr_0000_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0001_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0002_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0003_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0004_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0005_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0006_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0007_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0008_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0009_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0010_gray.pgm\
GOPR0037\ -\ GOPR0048_hdr_0011_gray.pgm

# stacked hdr images
HDR_STACK_0=GOPR0037\ -\ GOPR0048_stack_hdr_0000.exr
HDR_STACK_0_SHELL=GOPR0037\ -\ GOPR0048_stack_hdr_0000.exr
HDR_STACK_0_INPUT=GOPR0037\ -\ GOPR0048_hdr_0000.exr\
GOPR0037\ -\ GOPR0048_hdr_0001.exr\
GOPR0037\ -\ GOPR0048_hdr_0002.exr\
GOPR0037\ -\ GOPR0048_hdr_0003.exr\
GOPR0037\ -\ GOPR0048_hdr_0004.exr\
GOPR0037\ -\ GOPR0048_hdr_0005.exr\
GOPR0037\ -\ GOPR0048_hdr_0006.exr\
GOPR0037\ -\ GOPR0048_hdr_0007.exr\
GOPR0037\ -\ GOPR0048_hdr_0008.exr\
GOPR0037\ -\ GOPR0048_hdr_0009.exr\
GOPR0037\ -\ GOPR0048_hdr_0010.exr\
GOPR0037\ -\ GOPR0048_hdr_0011.exr
HDR_STACK_0_INPUT_SHELL=GOPR0037\ -\ GOPR0048_hdr_0000.exr\
GOPR0037\ -\ GOPR0048_hdr_0001.exr\
GOPR0037\ -\ GOPR0048_hdr_0002.exr\
GOPR0037\ -\ GOPR0048_hdr_0003.exr\
GOPR0037\ -\ GOPR0048_hdr_0004.exr\
GOPR0037\ -\ GOPR0048_hdr_0005.exr\
GOPR0037\ -\ GOPR0048_hdr_0006.exr\
GOPR0037\ -\ GOPR0048_hdr_0007.exr\
GOPR0037\ -\ GOPR0048_hdr_0008.exr\
GOPR0037\ -\ GOPR0048_hdr_0009.exr\
GOPR0037\ -\ GOPR0048_hdr_0010.exr\
GOPR0037\ -\ GOPR0048_hdr_0011.exr
HDR_STACKS_NUMBERS=0 
HDR_STACKS=$(HDR_STACK_0) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=GOPR0037\ -\ GOPR0048_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL=GOPR0037\ -\ GOPR0048_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_INPUT=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=GOPR0037\ -\ GOPR00480000.tif\
GOPR0037\ -\ GOPR00480001.tif\
GOPR0037\ -\ GOPR00480005.tif\
GOPR0037\ -\ GOPR00480006.tif\
GOPR0037\ -\ GOPR00480007.tif\
GOPR0037\ -\ GOPR00480008.tif\
GOPR0037\ -\ GOPR00480009.tif\
GOPR0037\ -\ GOPR00480010.tif\
GOPR0037\ -\ GOPR00480011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL=GOPR0037\ -\ GOPR00480000.tif\
GOPR0037\ -\ GOPR00480001.tif\
GOPR0037\ -\ GOPR00480005.tif\
GOPR0037\ -\ GOPR00480006.tif\
GOPR0037\ -\ GOPR00480007.tif\
GOPR0037\ -\ GOPR00480008.tif\
GOPR0037\ -\ GOPR00480009.tif\
GOPR0037\ -\ GOPR00480010.tif\
GOPR0037\ -\ GOPR00480011.tif
LDR_EXPOSURE_LAYER_0_EXPOSURE=4.46626
LDR_EXPOSURE_LAYER_1=GOPR0037\ -\ GOPR0048_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_SHELL=GOPR0037\ -\ GOPR0048_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_INPUT=GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif
LDR_EXPOSURE_LAYER_1_INPUT_SHELL=GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER=GOPR0037\ -\ GOPR00480002.tif\
GOPR0037\ -\ GOPR00480003.tif\
GOPR0037\ -\ GOPR00480004.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER_SHELL=GOPR0037\ -\ GOPR00480002.tif\
GOPR0037\ -\ GOPR00480003.tif\
GOPR0037\ -\ GOPR00480004.tif
LDR_EXPOSURE_LAYER_1_EXPOSURE=5.14914
LDR_EXPOSURE_LAYERS_NUMBERS=0 1 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) $(LDR_EXPOSURE_LAYER_1) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) $(LDR_EXPOSURE_LAYER_1_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif

# stacked ldr images
LDR_STACK_0=GOPR0037\ -\ GOPR0048_stack_ldr_0000.tif
LDR_STACK_0_SHELL=GOPR0037\ -\ GOPR0048_stack_ldr_0000.tif
LDR_STACK_0_INPUT=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif
LDR_STACK_0_INPUT_SHELL=GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif\
GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif
LDR_STACKS_NUMBERS=0 
LDR_STACKS=$(LDR_STACK_0) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) 
DO_LDR_BLENDED=1

all : startStitching $(LDR_BLENDED) 

startStitching : 
	@echo '==========================================================================='
	@echo 'Stitching panorama'
	@echo '==========================================================================='

clean : 
	@echo '==========================================================================='
	@echo 'Remove temporary files'
	@echo '==========================================================================='
	-$(RM) $(LDR_LAYERS_SHELL) 

test : 
	@echo '==========================================================================='
	@echo 'Testing programs'
	@echo '==========================================================================='
	@echo -n 'Checking nona...'
	@-$(NONA) --help > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enblend...'
	@-$(ENBLEND) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking enfuse...'
	@-$(ENFUSE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking hugin_hdrmerge...'
	@-$(HDRMERGE) -h > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'
	@echo -n 'Checking exiftool...'
	@-$(EXIFTOOL) -ver > /dev/null 2>&1 && echo '[OK]' || echo '[FAILED]'

info : 
	@echo '==========================================================================='
	@echo '***************  Panorama makefile generated by Hugin       ***************'
	@echo '==========================================================================='
	@echo 'System information'
	@echo '==========================================================================='
	@echo -n 'Operating system: '
	@-uname -o
	@echo -n 'Release: '
	@-uname -r
	@echo -n 'Kernel version: '
	@-uname -v
	@echo -n 'Machine: '
	@-uname -m
	@echo 'Disc usage'
	@-df -h
	@echo 'Memory usage'
	@-free -m
	@echo '==========================================================================='
	@echo 'Output options'
	@echo '==========================================================================='
	@echo 'Hugin Version: 2013.0.0.4692917e7a55'
	@echo 'Project file: /var/www/3dp/3dpanoram/projects/panotest/4/GOPR0037 - GOPR0048.pto'
	@echo 'Output prefix: GOPR0037 - GOPR0048'
	@echo 'Projection: Equirectangular (2)'
	@echo 'Field of view: 360 x 180'
	@echo 'Canvas dimensions: 11618 x 5809'
	@echo 'Crop area: (0,0) - (11618,5809)'
	@echo 'Output exposure value: 4.40'
	@echo 'Output stacks minimum overlap: 0.700'
	@echo 'Output layers maximum Ev difference: 0.50'
	@echo 'Selected outputs'
	@echo 'Normal panorama'
	@echo '* Blended panorama'
	@echo '==========================================================================='
	@echo 'Input images'
	@echo '==========================================================================='
	@echo 'Number of images in project file: 12'
	@echo 'Number of active images: 12'
	@echo 'Image 0: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG'
	@echo 'Image 0: Size 3000x4000, Exposure: 4.40'
	@echo 'Image 1: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG'
	@echo 'Image 1: Size 3000x4000, Exposure: 4.70'
	@echo 'Image 2: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG'
	@echo 'Image 2: Size 3000x4000, Exposure: 5.22'
	@echo 'Image 3: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG'
	@echo 'Image 3: Size 3000x4000, Exposure: 5.10'
	@echo 'Image 4: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG'
	@echo 'Image 4: Size 3000x4000, Exposure: 5.13'
	@echo 'Image 5: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG'
	@echo 'Image 5: Size 3000x4000, Exposure: 4.89'
	@echo 'Image 6: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG'
	@echo 'Image 6: Size 3000x4000, Exposure: 4.25'
	@echo 'Image 7: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG'
	@echo 'Image 7: Size 3000x4000, Exposure: 4.53'
	@echo 'Image 8: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG'
	@echo 'Image 8: Size 3000x4000, Exposure: 4.20'
	@echo 'Image 9: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG'
	@echo 'Image 9: Size 3000x4000, Exposure: 4.48'
	@echo 'Image 10: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG'
	@echo 'Image 10: Size 3000x4000, Exposure: 4.29'
	@echo 'Image 11: /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG'
	@echo 'Image 11: Size 3000x4000, Exposure: 4.44'

# Rules for ordinary TIFF_m and hdr output

GOPR0037\ -\ GOPR00480000.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0000.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480001.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0001.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480002.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0002.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480003.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0003.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480004.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0004.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480005.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0005.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480006.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0006.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480007.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0007.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480008.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0008.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480009.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0009.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480010.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0010.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR00480011.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_hdr_0011.exr : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

GOPR0037\ -\ GOPR0048_exposure_layers_0000.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0049.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.40381 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0001.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0050.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.70421 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0005.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0054.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.88624 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0006.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0055.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.24957 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0007.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0056.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.53157 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0008.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0057.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.20303 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0009.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0058.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.48182 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0010.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0059.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.29278 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0011.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0060.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 4.44334 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0002.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0051.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 5.22193 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0003.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0052.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 5.09723 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

GOPR0037\ -\ GOPR0048_exposure_layers_0004.tif : /var/www/3dp/3dpanoram/projects/panotest/5/GOPR0053.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 5.12825 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

$(LDR_EXPOSURE_LAYER_1) : $(LDR_EXPOSURE_LAYER_1_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_1_SHELL) -- $(LDR_EXPOSURE_LAYER_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_1_SHELL)

$(LDR_STACKED_BLENDED) : $(LDR_STACKS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_STACKED_BLENDED_SHELL) -- $(LDR_STACKS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_STACKED_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYERS_FUSED) : $(LDR_EXPOSURE_LAYERS) 
	$(ENFUSE) $(ENBLEND_LDR_COMP) $(ENFUSE_OPTS) -o $(LDR_EXPOSURE_LAYERS_FUSED_SHELL) -- $(LDR_EXPOSURE_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_EXPOSURE_LAYERS_FUSED_SHELL)

$(HDR_BLENDED) : $(HDR_STACKS) 
	$(ENBLEND) $(ENBLEND_HDR_COMP) $(ENBLEND_OPTS) -o $(HDR_BLENDED_SHELL) -- $(HDR_STACKS_SHELL)

$(LDR_REMAPPED_PREFIX)_multilayer.tif : $(LDR_LAYERS) 
	tiffcp $(LDR_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.tif

$(LDR_REMAPPED_PREFIX)_fused_multilayer.tif : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	tiffcp $(LDR_STACKS_SHELL) $(LDR_EXPOSURE_LAYERS_SHELL) $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.tif

$(LDR_REMAPPED_PREFIX)_multilayer.psd : $(LDR_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_multilayer.psd $(LDR_LAYERS_SHELL)

$(LDR_REMAPPED_PREFIX)_fused_multilayer.psd : $(LDR_STACKS) $(LDR_EXPOSURE_LAYERS) 
	PTtiff2psd -o $(LDR_REMAPPED_PREFIX_SHELL)_fused_multilayer.psd $(LDR_STACKS_SHELL)$(LDR_EXPOSURE_LAYERS_SHELL)
