# only adapt the following two lines
export D3_TOOLBOX=~/dev/d3/deegree-tools/target/appassembler/bin/d3toolbox
export COVERAGE_SRC=~/dev/Daten/wpvs-tutorial/Coverage/barcelona-osm-map.png

# create raster pyramid in 'src/main/webapp/WEB-INF/data/coverage'
export TARGET_DIR=src/main/webapp/WEB-INF/data/coverage/osm
rm -Rf $TARGET_DIR
mkdir -p $TARGET_DIR
$D3_TOOLBOX RTBClient -it png -num_levels 4 -ot bin -rl $COVERAGE_SRC -rol $TARGET_DIR -interpolation bl -v -s_srs EPSG:4326 -t_srs EPSG:23030
