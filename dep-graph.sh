echo "digraph dependencies {" > deps.dot
node dep-graph.js ./repos/*/package.json  |
sed -e s/-/_/g | sed -e 's/>/->/' >> deps.dot
echo '}' >> deps.dot
dot -Tpng deps.dot > deps.png
