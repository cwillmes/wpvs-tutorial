# only adapt the following two lines
export LD_LIBRARY_PATH=~/dev/jogl-1.1.1-linux-amd64/lib
export D3_TOOLBOX=~/dev/d3/deegree-tools/target/appassembler/bin/d3toolbox

$D3_TOOLBOX InteractiveWPVS -wpvsconfig src/main/webapp/WEB-INF/conf
