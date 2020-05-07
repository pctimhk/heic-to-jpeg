# heic-to-jpeg

A batch converter for HEIC/HEIF images created on iOS 11 devices

Docker image available here: https://hub.docker.com/r/wshelley/heic-to-jpeg/

The following command will convert all HEIC images in the mounted volume specified:

`docker run -v /path/to/input/:/input/ /path/to/output/:/output/ pctimhk/heic-to-jpeg`

Enhance the existing version to 
1. separate input and output folder
2. output folder keep the folder structure or output in root folder

Based on https://github.com/monostream/tifig
