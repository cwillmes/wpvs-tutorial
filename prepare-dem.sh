# only adapt the following two lines
export D3_TOOLBOX=~/workspace/deegree-tools/target/appassembler/bin/d3toolbox
export DEM_SRC=~/geodaten/christian_wilmes/Campus3D/dem/5m_dem/campusDEM.tif

# create Multiresolution DEM in 'src/main/webapp/WEB-INF/data/batchedmt'
export TARGET_DIR=src/main/webapp/WEB-INF/data/batchedmt
rm -Rf $TARGET_DIR 
mkdir -p $TARGET_DIR
$D3_TOOLBOX DEMDatasetGenerator -rl $DEM_SRC -it tif -s_srs EPSG:31466 -o $TARGET_DIR -ol 10 -or 64 -mh 150 -v
