# only adapt the following two lines
export D3_TOOLBOX=~/dev/d3/deegree-tools/target/appassembler/bin/d3toolbox
export DEM_SRC=~/dev/wpvs-tutorial/Data_23030/DEM/barcelona_23030_dem.tif

# create Multiresolution DEM in 'src/main/webapp/WEB-INF/data/batchedmt'
export TARGET_DIR=src/main/webapp/WEB-INF/data/batchedmt
rm -Rf $TARGET_DIR 
mkdir -p $TARGET_DIR
$D3_TOOLBOX DEMDatasetGenerator -rl $DEM_SRC -it tif -s_srs EPSG:23030 -o $TARGET_DIR -ol 10 -or 64 -mh 150 -v
