#!/bin/bash

docker build -t lines-four .
docker image pull myregistry.local:5000/apps/lines-four

cat >my-artifact.html <<EOF
<html>
<body>
<h3>An example artifact</h3>
<pre>
==== ==== ====
An example artifact, created on: $(date)
Pipeline which created it: $GO_PIPELINE_NAME
Pipeline counter was: $GO_PIPELINE_COUNTER
==== ==== ====
</pre>
<body>
</html>
EOF
