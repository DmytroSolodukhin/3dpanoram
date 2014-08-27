
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
HUGIN_WIDTH=7696
HUGIN_HEIGHT=3848

# options for the programs
NONA_LDR_REMAPPED_COMP=-z LZW 
NONA_OPTS=
ENBLEND_OPTS= -w -f7696x3848
ENBLEND_LDR_COMP=--compression=90
ENBLEND_EXPOSURE_COMP=--compression=LZW 
ENBLEND_HDR_COMP=
HDRMERGE_OPTS=-m avg -c
ENFUSE_OPTS= -w
EXIFTOOL_COPY_ARGS=-ImageDescription -Make -Model -Artist -WhitePoint -Copyright -GPS:all -DateTimeOriginal -CreateDate -UserComment -ColorSpace -OwnerName -SerialNumber
EXIFTOOL_INFO_ARGS='-Software=Hugin 2013.0.0.4692917e7a55' '-UserComment<$${UserComment}&\#xa;Projection: Equirectangular (2)&\#xa;FOV: 360 x 180&\#xa;Ev: 9.41' -f

# the output panorama
LDR_REMAPPED_PREFIX=1
LDR_REMAPPED_PREFIX_SHELL=1
HDR_STACK_REMAPPED_PREFIX=1_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL=1_hdr_
LDR_EXPOSURE_REMAPPED_PREFIX=1_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL=1_exposure_layers_
PROJECT_FILE=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/1.pto
PROJECT_FILE_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/1.pto
LDR_BLENDED=1.jpg
LDR_BLENDED_SHELL=1.jpg
LDR_STACKED_BLENDED=1_fused.jpg
LDR_STACKED_BLENDED_SHELL=1_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED=1_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL=1_blended_fused.jpg
HDR_BLENDED=1_hdr.exr
HDR_BLENDED_SHELL=1_hdr.exr

# first input image
INPUT_IMAGE_1=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG
INPUT_IMAGE_1_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG

# all input images
INPUT_IMAGES=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG
INPUT_IMAGES_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG

# remapped images
LDR_LAYERS=10000.tif\
10001.tif\
10002.tif\
10003.tif\
10004.tif\
10005.tif\
10006.tif\
10007.tif\
10008.tif\
10009.tif\
10010.tif\
10011.tif
LDR_LAYERS_SHELL=10000.tif\
10001.tif\
10002.tif\
10003.tif\
10004.tif\
10005.tif\
10006.tif\
10007.tif\
10008.tif\
10009.tif\
10010.tif\
10011.tif

# remapped images (hdr)
HDR_LAYERS=1_hdr_0000.exr\
1_hdr_0001.exr\
1_hdr_0002.exr\
1_hdr_0003.exr\
1_hdr_0004.exr\
1_hdr_0005.exr\
1_hdr_0006.exr\
1_hdr_0007.exr\
1_hdr_0008.exr\
1_hdr_0009.exr\
1_hdr_0010.exr\
1_hdr_0011.exr
HDR_LAYERS_SHELL=1_hdr_0000.exr\
1_hdr_0001.exr\
1_hdr_0002.exr\
1_hdr_0003.exr\
1_hdr_0004.exr\
1_hdr_0005.exr\
1_hdr_0006.exr\
1_hdr_0007.exr\
1_hdr_0008.exr\
1_hdr_0009.exr\
1_hdr_0010.exr\
1_hdr_0011.exr

# remapped maxval images
HDR_LAYERS_WEIGHTS=1_hdr_0000_gray.pgm\
1_hdr_0001_gray.pgm\
1_hdr_0002_gray.pgm\
1_hdr_0003_gray.pgm\
1_hdr_0004_gray.pgm\
1_hdr_0005_gray.pgm\
1_hdr_0006_gray.pgm\
1_hdr_0007_gray.pgm\
1_hdr_0008_gray.pgm\
1_hdr_0009_gray.pgm\
1_hdr_0010_gray.pgm\
1_hdr_0011_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL=1_hdr_0000_gray.pgm\
1_hdr_0001_gray.pgm\
1_hdr_0002_gray.pgm\
1_hdr_0003_gray.pgm\
1_hdr_0004_gray.pgm\
1_hdr_0005_gray.pgm\
1_hdr_0006_gray.pgm\
1_hdr_0007_gray.pgm\
1_hdr_0008_gray.pgm\
1_hdr_0009_gray.pgm\
1_hdr_0010_gray.pgm\
1_hdr_0011_gray.pgm

# stacked hdr images
HDR_STACK_0=1_stack_hdr_0000.exr
HDR_STACK_0_SHELL=1_stack_hdr_0000.exr
HDR_STACK_0_INPUT=1_hdr_0000.exr
HDR_STACK_0_INPUT_SHELL=1_hdr_0000.exr
HDR_STACK_1=1_stack_hdr_0001.exr
HDR_STACK_1_SHELL=1_stack_hdr_0001.exr
HDR_STACK_1_INPUT=1_hdr_0001.exr
HDR_STACK_1_INPUT_SHELL=1_hdr_0001.exr
HDR_STACK_2=1_stack_hdr_0002.exr
HDR_STACK_2_SHELL=1_stack_hdr_0002.exr
HDR_STACK_2_INPUT=1_hdr_0002.exr\
1_hdr_0003.exr\
1_hdr_0004.exr
HDR_STACK_2_INPUT_SHELL=1_hdr_0002.exr\
1_hdr_0003.exr\
1_hdr_0004.exr
HDR_STACK_3=1_stack_hdr_0003.exr
HDR_STACK_3_SHELL=1_stack_hdr_0003.exr
HDR_STACK_3_INPUT=1_hdr_0005.exr
HDR_STACK_3_INPUT_SHELL=1_hdr_0005.exr
HDR_STACK_4=1_stack_hdr_0004.exr
HDR_STACK_4_SHELL=1_stack_hdr_0004.exr
HDR_STACK_4_INPUT=1_hdr_0006.exr\
1_hdr_0007.exr
HDR_STACK_4_INPUT_SHELL=1_hdr_0006.exr\
1_hdr_0007.exr
HDR_STACK_5=1_stack_hdr_0005.exr
HDR_STACK_5_SHELL=1_stack_hdr_0005.exr
HDR_STACK_5_INPUT=1_hdr_0008.exr
HDR_STACK_5_INPUT_SHELL=1_hdr_0008.exr
HDR_STACK_6=1_stack_hdr_0006.exr
HDR_STACK_6_SHELL=1_stack_hdr_0006.exr
HDR_STACK_6_INPUT=1_hdr_0009.exr
HDR_STACK_6_INPUT_SHELL=1_hdr_0009.exr
HDR_STACK_7=1_stack_hdr_0007.exr
HDR_STACK_7_SHELL=1_stack_hdr_0007.exr
HDR_STACK_7_INPUT=1_hdr_0010.exr
HDR_STACK_7_INPUT_SHELL=1_hdr_0010.exr
HDR_STACK_8=1_stack_hdr_0008.exr
HDR_STACK_8_SHELL=1_stack_hdr_0008.exr
HDR_STACK_8_INPUT=1_hdr_0011.exr
HDR_STACK_8_INPUT_SHELL=1_hdr_0011.exr
HDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 8 
HDR_STACKS=$(HDR_STACK_0) $(HDR_STACK_1) $(HDR_STACK_2) $(HDR_STACK_3) $(HDR_STACK_4) $(HDR_STACK_5) $(HDR_STACK_6) $(HDR_STACK_7) $(HDR_STACK_8) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) $(HDR_STACK_1_SHELL) $(HDR_STACK_2_SHELL) $(HDR_STACK_3_SHELL) $(HDR_STACK_4_SHELL) $(HDR_STACK_5_SHELL) $(HDR_STACK_6_SHELL) $(HDR_STACK_7_SHELL) $(HDR_STACK_8_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=1_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL=1_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_INPUT=1_exposure_layers_0000.tif\
1_exposure_layers_0001.tif\
1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif\
1_exposure_layers_0005.tif\
1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif\
1_exposure_layers_0008.tif\
1_exposure_layers_0009.tif\
1_exposure_layers_0010.tif\
1_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL=1_exposure_layers_0000.tif\
1_exposure_layers_0001.tif\
1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif\
1_exposure_layers_0005.tif\
1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif\
1_exposure_layers_0008.tif\
1_exposure_layers_0009.tif\
1_exposure_layers_0010.tif\
1_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=10000.tif\
10001.tif\
10002.tif\
10003.tif\
10004.tif\
10005.tif\
10006.tif\
10007.tif\
10008.tif\
10009.tif\
10010.tif\
10011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL=10000.tif\
10001.tif\
10002.tif\
10003.tif\
10004.tif\
10005.tif\
10006.tif\
10007.tif\
10008.tif\
10009.tif\
10010.tif\
10011.tif
LDR_EXPOSURE_LAYER_0_EXPOSURE=9.40721
LDR_EXPOSURE_LAYERS_NUMBERS=0 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=1_exposure_layers_0000.tif\
1_exposure_layers_0001.tif\
1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif\
1_exposure_layers_0005.tif\
1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif\
1_exposure_layers_0008.tif\
1_exposure_layers_0009.tif\
1_exposure_layers_0010.tif\
1_exposure_layers_0011.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL=1_exposure_layers_0000.tif\
1_exposure_layers_0001.tif\
1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif\
1_exposure_layers_0005.tif\
1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif\
1_exposure_layers_0008.tif\
1_exposure_layers_0009.tif\
1_exposure_layers_0010.tif\
1_exposure_layers_0011.tif

# stacked ldr images
LDR_STACK_0=1_stack_ldr_0000.tif
LDR_STACK_0_SHELL=1_stack_ldr_0000.tif
LDR_STACK_0_INPUT=1_exposure_layers_0000.tif
LDR_STACK_0_INPUT_SHELL=1_exposure_layers_0000.tif
LDR_STACK_1=1_stack_ldr_0001.tif
LDR_STACK_1_SHELL=1_stack_ldr_0001.tif
LDR_STACK_1_INPUT=1_exposure_layers_0001.tif
LDR_STACK_1_INPUT_SHELL=1_exposure_layers_0001.tif
LDR_STACK_2=1_stack_ldr_0002.tif
LDR_STACK_2_SHELL=1_stack_ldr_0002.tif
LDR_STACK_2_INPUT=1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif
LDR_STACK_2_INPUT_SHELL=1_exposure_layers_0002.tif\
1_exposure_layers_0003.tif\
1_exposure_layers_0004.tif
LDR_STACK_3=1_stack_ldr_0003.tif
LDR_STACK_3_SHELL=1_stack_ldr_0003.tif
LDR_STACK_3_INPUT=1_exposure_layers_0005.tif
LDR_STACK_3_INPUT_SHELL=1_exposure_layers_0005.tif
LDR_STACK_4=1_stack_ldr_0004.tif
LDR_STACK_4_SHELL=1_stack_ldr_0004.tif
LDR_STACK_4_INPUT=1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif
LDR_STACK_4_INPUT_SHELL=1_exposure_layers_0006.tif\
1_exposure_layers_0007.tif
LDR_STACK_5=1_stack_ldr_0005.tif
LDR_STACK_5_SHELL=1_stack_ldr_0005.tif
LDR_STACK_5_INPUT=1_exposure_layers_0008.tif
LDR_STACK_5_INPUT_SHELL=1_exposure_layers_0008.tif
LDR_STACK_6=1_stack_ldr_0006.tif
LDR_STACK_6_SHELL=1_stack_ldr_0006.tif
LDR_STACK_6_INPUT=1_exposure_layers_0009.tif
LDR_STACK_6_INPUT_SHELL=1_exposure_layers_0009.tif
LDR_STACK_7=1_stack_ldr_0007.tif
LDR_STACK_7_SHELL=1_stack_ldr_0007.tif
LDR_STACK_7_INPUT=1_exposure_layers_0010.tif
LDR_STACK_7_INPUT_SHELL=1_exposure_layers_0010.tif
LDR_STACK_8=1_stack_ldr_0008.tif
LDR_STACK_8_SHELL=1_stack_ldr_0008.tif
LDR_STACK_8_INPUT=1_exposure_layers_0011.tif
LDR_STACK_8_INPUT_SHELL=1_exposure_layers_0011.tif
LDR_STACKS_NUMBERS=0 1 2 3 4 5 6 7 8 
LDR_STACKS=$(LDR_STACK_0) $(LDR_STACK_1) $(LDR_STACK_2) $(LDR_STACK_3) $(LDR_STACK_4) $(LDR_STACK_5) $(LDR_STACK_6) $(LDR_STACK_7) $(LDR_STACK_8) 
LDR_STACKS_SHELL=$(LDR_STACK_0_SHELL) $(LDR_STACK_1_SHELL) $(LDR_STACK_2_SHELL) $(LDR_STACK_3_SHELL) $(LDR_STACK_4_SHELL) $(LDR_STACK_5_SHELL) $(LDR_STACK_6_SHELL) $(LDR_STACK_7_SHELL) $(LDR_STACK_8_SHELL) 
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
	@echo 'Project file: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/1.pto'
	@echo 'Output prefix: 1'
	@echo 'Projection: Equirectangular (2)'
	@echo 'Field of view: 360 x 180'
	@echo 'Canvas dimensions: 7696 x 3848'
	@echo 'Crop area: (0,0) - (7696,3848)'
	@echo 'Output exposure value: 9.41'
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
	@echo 'Image 0: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG'
	@echo 'Image 0: Size 3000x4000, Exposure: 9.40'
	@echo 'Image 1: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG'
	@echo 'Image 1: Size 3000x4000, Exposure: 9.30'
	@echo 'Image 2: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG'
	@echo 'Image 2: Size 3000x4000, Exposure: 9.67'
	@echo 'Image 3: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG'
	@echo 'Image 3: Size 3000x4000, Exposure: 9.74'
	@echo 'Image 4: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG'
	@echo 'Image 4: Size 3000x4000, Exposure: 9.38'
	@echo 'Image 5: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG'
	@echo 'Image 5: Size 3000x4000, Exposure: 9.09'
	@echo 'Image 6: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG'
	@echo 'Image 6: Size 3000x4000, Exposure: 9.83'
	@echo 'Image 7: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG'
	@echo 'Image 7: Size 3000x4000, Exposure: 9.42'
	@echo 'Image 8: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG'
	@echo 'Image 8: Size 3000x4000, Exposure: 9.06'
	@echo 'Image 9: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG'
	@echo 'Image 9: Size 3000x4000, Exposure: 9.26'
	@echo 'Image 10: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG'
	@echo 'Image 10: Size 3000x4000, Exposure: 9.19'
	@echo 'Image 11: /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG'
	@echo 'Image 11: Size 3000x4000, Exposure: 9.54'

# Rules for ordinary TIFF_m and hdr output

10000.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

1_hdr_0000.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

10001.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

1_hdr_0001.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

10002.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

1_hdr_0002.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

10003.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

1_hdr_0003.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

10004.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

1_hdr_0004.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

10005.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

1_hdr_0005.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

10006.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

1_hdr_0006.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

10007.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

1_hdr_0007.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

10008.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

1_hdr_0008.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

10009.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

1_hdr_0009.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

10010.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

1_hdr_0010.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

10011.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

1_hdr_0011.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

1_exposure_layers_0000.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0061.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.40146 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

1_exposure_layers_0001.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0063.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.29726 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

1_exposure_layers_0002.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0068.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.6693 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

1_exposure_layers_0003.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0066.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.73659 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

1_exposure_layers_0004.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0070.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.382 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

1_exposure_layers_0005.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0069.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.09225 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

1_exposure_layers_0006.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0064.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.83394 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

1_exposure_layers_0007.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0062.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.41694 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

1_exposure_layers_0008.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0065.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.06289 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

1_exposure_layers_0009.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0071.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.26392 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

1_exposure_layers_0010.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0067.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.19145 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

1_exposure_layers_0011.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/6/GOPR0072.JPG $(PROJECT_FILE) 
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.53853 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

# Rules for LDR and HDR stack merging, a rule for each stack

$(LDR_STACK_0) : $(LDR_STACK_0_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_0_SHELL) -- $(LDR_STACK_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_0_SHELL)

$(HDR_STACK_0) : $(HDR_STACK_0_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_0_SHELL) -- $(HDR_STACK_0_INPUT_SHELL)

$(LDR_STACK_1) : $(LDR_STACK_1_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_1_SHELL) -- $(LDR_STACK_1_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_1_SHELL)

$(HDR_STACK_1) : $(HDR_STACK_1_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_1_SHELL) -- $(HDR_STACK_1_INPUT_SHELL)

$(LDR_STACK_2) : $(LDR_STACK_2_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_2_SHELL) -- $(LDR_STACK_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_2_SHELL)

$(HDR_STACK_2) : $(HDR_STACK_2_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_2_SHELL) -- $(HDR_STACK_2_INPUT_SHELL)

$(LDR_STACK_3) : $(LDR_STACK_3_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_3_SHELL) -- $(LDR_STACK_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_3_SHELL)

$(HDR_STACK_3) : $(HDR_STACK_3_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_3_SHELL) -- $(HDR_STACK_3_INPUT_SHELL)

$(LDR_STACK_4) : $(LDR_STACK_4_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_4_SHELL) -- $(LDR_STACK_4_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_4_SHELL)

$(HDR_STACK_4) : $(HDR_STACK_4_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_4_SHELL) -- $(HDR_STACK_4_INPUT_SHELL)

$(LDR_STACK_5) : $(LDR_STACK_5_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_5_SHELL) -- $(LDR_STACK_5_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_5_SHELL)

$(HDR_STACK_5) : $(HDR_STACK_5_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_5_SHELL) -- $(HDR_STACK_5_INPUT_SHELL)

$(LDR_STACK_6) : $(LDR_STACK_6_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_6_SHELL) -- $(LDR_STACK_6_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_6_SHELL)

$(HDR_STACK_6) : $(HDR_STACK_6_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_6_SHELL) -- $(HDR_STACK_6_INPUT_SHELL)

$(LDR_STACK_7) : $(LDR_STACK_7_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_7_SHELL) -- $(LDR_STACK_7_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_7_SHELL)

$(HDR_STACK_7) : $(HDR_STACK_7_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_7_SHELL) -- $(HDR_STACK_7_INPUT_SHELL)

$(LDR_STACK_8) : $(LDR_STACK_8_INPUT) 
	$(ENFUSE) $(ENFUSE_OPTS) -o $(LDR_STACK_8_SHELL) -- $(LDR_STACK_8_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_STACK_8_SHELL)

$(HDR_STACK_8) : $(HDR_STACK_8_INPUT) 
	$(HDRMERGE) $(HDRMERGE_OPTS) -o $(HDR_STACK_8_SHELL) -- $(HDR_STACK_8_INPUT_SHELL)

$(LDR_BLENDED) : $(LDR_LAYERS) 
	$(ENBLEND) $(ENBLEND_LDR_COMP) $(ENBLEND_OPTS) -o $(LDR_BLENDED_SHELL) -- $(LDR_LAYERS_SHELL)
	-$(EXIFTOOL) -E -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(EXIFTOOL_INFO_ARGS) $(LDR_BLENDED_SHELL)

$(LDR_EXPOSURE_LAYER_0) : $(LDR_EXPOSURE_LAYER_0_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_0_SHELL) -- $(LDR_EXPOSURE_LAYER_0_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_0_SHELL)

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
