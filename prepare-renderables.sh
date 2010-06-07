# only adapt the following two lines
D3_TOOLBOX=~/workspace/deegree-tools/target/appassembler/bin/d3toolbox
BUILDING_DIR=~/geodaten/christian_wilmes/Campus3D/Buildings/d3buildings

TARGET_DIR=src/main/webapp/WEB-INF/data/coverage/renderable/buildings
rm -Rf $TARGET_DIR
mkdir -p $TARGET_DIR
INPUT_FILES="$BUILDING_DIR/*.gml"
for f in $INPUT_FILES
do
  echo "Processing $f..."
  $D3_TOOLBOX DataManager -a import -f $f -host org.deegree.services.wpvs.io.file.FileBackend -fbd $TARGET_DIR -t building -ql 2 -mtd 1024x1024 -tt "-2560250.0,-5638990.0" -v
done
