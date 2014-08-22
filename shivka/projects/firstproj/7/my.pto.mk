
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
EXIFTOOL_INFO_ARGS='-Software=Hugin 2011.4.0.cf9be9344356' '-UserComment<$${UserComment}&\#xa;Projection: Equirectangular (2)&\#xa;FOV: 360 x 180&\#xa;Ev: 9.40' -f

# the output panorama
LDR_REMAPPED_PREFIX=my
LDR_REMAPPED_PREFIX_SHELL=my
HDR_STACK_REMAPPED_PREFIX=my_hdr_
HDR_STACK_REMAPPED_PREFIX_SHELL=my_hdr_
LDR_EXPOSURE_REMAPPED_PREFIX=my_exposure_layers_
LDR_EXPOSURE_REMAPPED_PREFIX_SHELL=my_exposure_layers_
PROJECT_FILE=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/my.pto
PROJECT_FILE_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/my.pto
LDR_BLENDED=my.jpg
LDR_BLENDED_SHELL=my.jpg
LDR_STACKED_BLENDED=my_fused.jpg
LDR_STACKED_BLENDED_SHELL=my_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED=my_blended_fused.jpg
LDR_EXPOSURE_LAYERS_FUSED_SHELL=my_blended_fused.jpg
HDR_BLENDED=my_hdr.exr
HDR_BLENDED_SHELL=my_hdr.exr

# first input image
INPUT_IMAGE_1=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG
INPUT_IMAGE_1_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG

# all input images
INPUT_IMAGES=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG
INPUT_IMAGES_SHELL=/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG\
/var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG

# remapped images
LDR_LAYERS=my0000.tif\
my0001.tif\
my0002.tif\
my0003.tif\
my0004.tif\
my0005.tif\
my0006.tif\
my0007.tif\
my0008.tif\
my0009.tif\
my0010.tif\
my0011.tif
LDR_LAYERS_SHELL=my0000.tif\
my0001.tif\
my0002.tif\
my0003.tif\
my0004.tif\
my0005.tif\
my0006.tif\
my0007.tif\
my0008.tif\
my0009.tif\
my0010.tif\
my0011.tif

# remapped images (hdr)
HDR_LAYERS=my_hdr_0000.exr\
my_hdr_0001.exr\
my_hdr_0002.exr\
my_hdr_0003.exr\
my_hdr_0004.exr\
my_hdr_0005.exr\
my_hdr_0006.exr\
my_hdr_0007.exr\
my_hdr_0008.exr\
my_hdr_0009.exr\
my_hdr_0010.exr\
my_hdr_0011.exr
HDR_LAYERS_SHELL=my_hdr_0000.exr\
my_hdr_0001.exr\
my_hdr_0002.exr\
my_hdr_0003.exr\
my_hdr_0004.exr\
my_hdr_0005.exr\
my_hdr_0006.exr\
my_hdr_0007.exr\
my_hdr_0008.exr\
my_hdr_0009.exr\
my_hdr_0010.exr\
my_hdr_0011.exr

# remapped maxval images
HDR_LAYERS_WEIGHTS=my_hdr_0000_gray.pgm\
my_hdr_0001_gray.pgm\
my_hdr_0002_gray.pgm\
my_hdr_0003_gray.pgm\
my_hdr_0004_gray.pgm\
my_hdr_0005_gray.pgm\
my_hdr_0006_gray.pgm\
my_hdr_0007_gray.pgm\
my_hdr_0008_gray.pgm\
my_hdr_0009_gray.pgm\
my_hdr_0010_gray.pgm\
my_hdr_0011_gray.pgm
HDR_LAYERS_WEIGHTS_SHELL=my_hdr_0000_gray.pgm\
my_hdr_0001_gray.pgm\
my_hdr_0002_gray.pgm\
my_hdr_0003_gray.pgm\
my_hdr_0004_gray.pgm\
my_hdr_0005_gray.pgm\
my_hdr_0006_gray.pgm\
my_hdr_0007_gray.pgm\
my_hdr_0008_gray.pgm\
my_hdr_0009_gray.pgm\
my_hdr_0010_gray.pgm\
my_hdr_0011_gray.pgm

# stacked hdr images
HDR_STACK_0=my_stack_hdr_0000.exr
HDR_STACK_0_SHELL=my_stack_hdr_0000.exr
HDR_STACK_0_INPUT=my_hdr_0000.exr\
my_hdr_0001.exr\
my_hdr_0002.exr\
my_hdr_0003.exr\
my_hdr_0004.exr\
my_hdr_0005.exr\
my_hdr_0006.exr\
my_hdr_0007.exr\
my_hdr_0008.exr\
my_hdr_0009.exr\
my_hdr_0010.exr\
my_hdr_0011.exr
HDR_STACK_0_INPUT_SHELL=my_hdr_0000.exr\
my_hdr_0001.exr\
my_hdr_0002.exr\
my_hdr_0003.exr\
my_hdr_0004.exr\
my_hdr_0005.exr\
my_hdr_0006.exr\
my_hdr_0007.exr\
my_hdr_0008.exr\
my_hdr_0009.exr\
my_hdr_0010.exr\
my_hdr_0011.exr
HDR_STACKS_NUMBERS=0 
HDR_STACKS=$(HDR_STACK_0) 
HDR_STACKS_SHELL=$(HDR_STACK_0_SHELL) 

# number of image sets with similar exposure
LDR_EXPOSURE_LAYER_0=my_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_SHELL=my_exposure_0000.tif
LDR_EXPOSURE_LAYER_0_INPUT=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_SHELL=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER=my0000.tif\
my0001.tif\
my0002.tif\
my0010.tif\
my0011.tif
LDR_EXPOSURE_LAYER_0_INPUT_PTMENDER_SHELL=my0000.tif\
my0001.tif\
my0002.tif\
my0010.tif\
my0011.tif
LDR_EXPOSURE_LAYER_0_EXPOSURE=9.1875
LDR_EXPOSURE_LAYER_1=my_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_SHELL=my_exposure_0001.tif
LDR_EXPOSURE_LAYER_1_INPUT=my_exposure_layers_0003.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0009.tif
LDR_EXPOSURE_LAYER_1_INPUT_SHELL=my_exposure_layers_0003.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0009.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER=my0003.tif\
my0005.tif\
my0007.tif\
my0009.tif
LDR_EXPOSURE_LAYER_1_INPUT_PTMENDER_SHELL=my0003.tif\
my0005.tif\
my0007.tif\
my0009.tif
LDR_EXPOSURE_LAYER_1_EXPOSURE=8.53815
LDR_EXPOSURE_LAYER_2=my_exposure_0002.tif
LDR_EXPOSURE_LAYER_2_SHELL=my_exposure_0002.tif
LDR_EXPOSURE_LAYER_2_INPUT=my_exposure_layers_0004.tif\
my_exposure_layers_0006.tif
LDR_EXPOSURE_LAYER_2_INPUT_SHELL=my_exposure_layers_0004.tif\
my_exposure_layers_0006.tif
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER=my0004.tif\
my0006.tif
LDR_EXPOSURE_LAYER_2_INPUT_PTMENDER_SHELL=my0004.tif\
my0006.tif
LDR_EXPOSURE_LAYER_2_EXPOSURE=7.61509
LDR_EXPOSURE_LAYER_3=my_exposure_0003.tif
LDR_EXPOSURE_LAYER_3_SHELL=my_exposure_0003.tif
LDR_EXPOSURE_LAYER_3_INPUT=my_exposure_layers_0008.tif
LDR_EXPOSURE_LAYER_3_INPUT_SHELL=my_exposure_layers_0008.tif
LDR_EXPOSURE_LAYER_3_INPUT_PTMENDER=my0008.tif
LDR_EXPOSURE_LAYER_3_INPUT_PTMENDER_SHELL=my0008.tif
LDR_EXPOSURE_LAYER_3_EXPOSURE=8.25423
LDR_EXPOSURE_LAYERS_NUMBERS=0 1 2 3 
LDR_EXPOSURE_LAYERS=$(LDR_EXPOSURE_LAYER_0) $(LDR_EXPOSURE_LAYER_1) $(LDR_EXPOSURE_LAYER_2) $(LDR_EXPOSURE_LAYER_3) 
LDR_EXPOSURE_LAYERS_SHELL=$(LDR_EXPOSURE_LAYER_0_SHELL) $(LDR_EXPOSURE_LAYER_1_SHELL) $(LDR_EXPOSURE_LAYER_2_SHELL) $(LDR_EXPOSURE_LAYER_3_SHELL) 
LDR_EXPOSURE_LAYERS_REMAPPED=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif\
my_exposure_layers_0003.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0009.tif\
my_exposure_layers_0004.tif\
my_exposure_layers_0006.tif\
my_exposure_layers_0008.tif
LDR_EXPOSURE_LAYERS_REMAPPED_SHELL=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif\
my_exposure_layers_0003.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0009.tif\
my_exposure_layers_0004.tif\
my_exposure_layers_0006.tif\
my_exposure_layers_0008.tif

# stacked ldr images
LDR_STACK_0=my_stack_ldr_0000.tif
LDR_STACK_0_SHELL=my_stack_ldr_0000.tif
LDR_STACK_0_INPUT=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0003.tif\
my_exposure_layers_0004.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0006.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0008.tif\
my_exposure_layers_0009.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif
LDR_STACK_0_INPUT_SHELL=my_exposure_layers_0000.tif\
my_exposure_layers_0001.tif\
my_exposure_layers_0002.tif\
my_exposure_layers_0003.tif\
my_exposure_layers_0004.tif\
my_exposure_layers_0005.tif\
my_exposure_layers_0006.tif\
my_exposure_layers_0007.tif\
my_exposure_layers_0008.tif\
my_exposure_layers_0009.tif\
my_exposure_layers_0010.tif\
my_exposure_layers_0011.tif
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
	@echo 'Hugin Version: 2011.4.0.cf9be9344356'
	@echo 'Project file: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/my.pto'
	@echo 'Output prefix: my'
	@echo 'Projection: Equirectangular (2)'
	@echo 'Field of view: 360 x 180'
	@echo 'Canvas dimensions: 11618 x 5809'
	@echo 'Crop area: (0,0) - (11618,5809)'
	@echo 'Output exposure value: 9.40'
	@echo 'Selected outputs'
	@echo 'Normal panorama'
	@echo '* Blended panorama'
	@echo '==========================================================================='
	@echo 'Input images'
	@echo '==========================================================================='
	@echo 'Number of images in project file: 12'
	@echo 'Number of active images: 12'
	@echo 'Image 0: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG'
	@echo 'Image 0: Size 3000x4000, Exposure: 9.40'
	@echo 'Image 1: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG'
	@echo 'Image 1: Size 3000x4000, Exposure: 9.05'
	@echo 'Image 2: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG'
	@echo 'Image 2: Size 3000x4000, Exposure: 9.05'
	@echo 'Image 3: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG'
	@echo 'Image 3: Size 3000x4000, Exposure: 8.78'
	@echo 'Image 4: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG'
	@echo 'Image 4: Size 3000x4000, Exposure: 7.74'
	@echo 'Image 5: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG'
	@echo 'Image 5: Size 3000x4000, Exposure: 8.35'
	@echo 'Image 6: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG'
	@echo 'Image 6: Size 3000x4000, Exposure: 7.49'
	@echo 'Image 7: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG'
	@echo 'Image 7: Size 3000x4000, Exposure: 8.34'
	@echo 'Image 8: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG'
	@echo 'Image 8: Size 3000x4000, Exposure: 8.25'
	@echo 'Image 9: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG'
	@echo 'Image 9: Size 3000x4000, Exposure: 8.69'
	@echo 'Image 10: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG'
	@echo 'Image 10: Size 3000x4000, Exposure: 9.31'
	@echo 'Image 11: /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG'
	@echo 'Image 11: Size 3000x4000, Exposure: 9.12'

# Rules for ordinary TIFF_m and hdr output

my0000.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

my_hdr_0000.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

my0001.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

my_hdr_0001.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

my0002.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

my_hdr_0002.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

my0003.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

my_hdr_0003.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

my0004.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

my_hdr_0004.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

my0005.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

my_hdr_0005.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

my0006.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

my_hdr_0006.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

my0007.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

my_hdr_0007.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

my0008.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

my_hdr_0008.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

my0009.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

my_hdr_0009.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

my0010.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

my_hdr_0010.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

my0011.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -m TIFF_m -o $(LDR_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

my_hdr_0011.exr : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) -r hdr -m EXR_m -o $(HDR_STACK_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

# Rules for exposure layer output

my_exposure_layers_0000.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0100.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.40146 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 0 $(PROJECT_FILE_SHELL)

my_exposure_layers_0001.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0107.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.05279 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 1 $(PROJECT_FILE_SHELL)

my_exposure_layers_0002.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0103.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.05279 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 2 $(PROJECT_FILE_SHELL)

my_exposure_layers_0010.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0105.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.31094 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 10 $(PROJECT_FILE_SHELL)

my_exposure_layers_0011.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0110.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 9.11952 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 11 $(PROJECT_FILE_SHELL)

my_exposure_layers_0003.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0109.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.77773 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 3 $(PROJECT_FILE_SHELL)

my_exposure_layers_0005.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0101.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.34927 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 5 $(PROJECT_FILE_SHELL)

my_exposure_layers_0007.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0106.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.33928 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 7 $(PROJECT_FILE_SHELL)

my_exposure_layers_0009.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0099.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.6863 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 9 $(PROJECT_FILE_SHELL)

my_exposure_layers_0004.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0104.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.74441 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 4 $(PROJECT_FILE_SHELL)

my_exposure_layers_0006.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0102.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 7.48577 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 6 $(PROJECT_FILE_SHELL)

my_exposure_layers_0008.tif : /var/www/3dp/3dpanoram/shivka/projects/firstproj/7/GOPR0108.JPG $(PROJECT_FILE)
	$(NONA) $(NONA_OPTS) $(NONA_LDR_REMAPPED_COMP) -r ldr -e 8.25423 -m TIFF_m -o $(LDR_EXPOSURE_REMAPPED_PREFIX_SHELL) -i 8 $(PROJECT_FILE_SHELL)

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

$(LDR_EXPOSURE_LAYER_2) : $(LDR_EXPOSURE_LAYER_2_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_2_SHELL) -- $(LDR_EXPOSURE_LAYER_2_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_2_SHELL)

$(LDR_EXPOSURE_LAYER_3) : $(LDR_EXPOSURE_LAYER_3_INPUT) 
	$(ENBLEND) $(ENBLEND_EXPOSURE_COMP) $(ENBLEND_OPTS) -o $(LDR_EXPOSURE_LAYER_3_SHELL) -- $(LDR_EXPOSURE_LAYER_3_INPUT_SHELL)
	-$(EXIFTOOL) -overwrite_original_in_place -TagsFromFile $(INPUT_IMAGE_1_SHELL) $(EXIFTOOL_COPY_ARGS) $(LDR_EXPOSURE_LAYER_3_SHELL)

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
