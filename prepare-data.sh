# only adapt the following three lines
export D3_TOOLBOX=~/workspace/deegree-tools/target/appassembler/bin/d3toolbox
export DEM_SRC=~/geodaten/christian_wilmes/Campus3D/dem/5m_dem/cropped/campusDEM_cropped.tif
export ORTHO_SRC=~/geodaten/christian_wilmes/Campus3D/Ortho/koeln_31466_cropped.jpg

# create Multiresolution DEM in 'src/main/webapp/WEB-INF/data/batchedmt'
export TARGET_DIR=src/main/webapp/WEB-INF/data/batchedmt 
mkdir -p $TARGET_DIR
$D3_TOOLBOX DEMDatasetGenerator -rl $DEM_SRC -it tif -s_srs EPSG:31466 -o $TARGET_DIR -ol 8 -or 64 -mh 150 -v

echo MD5SUM: `md5sum $TARGET_DIR/fragments.bin`
echo MD5SUM: `md5sum $TARGET_DIR/mrindex.bin`

# create raster pyramid in 'src/main/webapp/WEB-INF/data/coverage'
export TARGET_DIR=src/main/webapp/WEB-INF/data/coverage/campusortho
mkdir -p $TARGET_DIR
$D3_TOOLBOX RTBClient -it jpg -num_levels 4 -ot jpg -rl $ORTHO_SRC -rol $TARGET_DIR -interpolation bl -v -s_srs EPSG:31466 -t_srs EPSG:31466
