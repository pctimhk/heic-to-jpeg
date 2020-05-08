# heic-to-jpeg

A batch converter for HEIC/HEIF images created on iOS 11 devices

Docker image available here: https://hub.docker.com/r/wshelley/heic-to-jpeg/

The following command will convert all HEIC images in the mounted volume specified:

`docker run -v /path/to/input/:/input/ /path/to/output/:/output/ pctimhk/heic-to-jpeg`

Enhance and support the following feature
1. separate input and output folder
2. output the file as same as input folder structure

Based on https://github.com/monostream/tifig
