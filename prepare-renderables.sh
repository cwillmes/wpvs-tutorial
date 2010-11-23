# only adapt the following two lines
D3_TOOLBOX=~/dev/d3/deegree-tools/target/appassembler/bin/d3toolbox
BUILDING_DIR=~/dev/wpvs-tutorial/Data_23030/Buildings

TARGET_DIR=src/main/webapp/WEB-INF/data/renderable/buildings
rm -Rf $TARGET_DIR
mkdir -p $TARGET_DIR
INPUT_FILES="$BUILDING_DIR/*.gml"
for f in $INPUT_FILES
do
  echo "Processing $f..."
  $D3_TOOLBOX DataManager -a import -f $f -host org.deegree.services.wpvs.io.file.FileBackend -fbd $TARGET_DIR -t building -ql 2 -mtd 1024x1024 -tt "-925892.424,-4589021.314" -v
done
