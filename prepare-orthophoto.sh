# only adapt the following two lines
export D3_TOOLBOX=~/Programmieren/Java/workspace/deegree-tools/target/appassembler/bin/d3toolbox
export ORTHO_SRC=~/Programmieren/Data/geodaten/christian_wilmes/Campus3D/Ortho/LuftbildWMS/campusOrtho10240.jpg

# create raster pyramid in 'src/main/webapp/WEB-INF/data/coverage'
export TARGET_DIR=src/main/webapp/WEB-INF/data/coverage/campusortho
rm -Rf $TARGET_DIR
mkdir -p $TARGET_DIR
$D3_TOOLBOX RTBClient -it jpg -num_levels 4 -ot bin -rl $ORTHO_SRC -rol $TARGET_DIR -interpolation bl -v -s_srs EPSG:31466 -t_srs EPSG:31466
