#!/usr/bin/env bash

set -euo pipefail

readonly RESULT_FILE="/output/jmeter-report.log"

echo ""
echo "RUNNING JMETER:"

${JMETER_BIN} -Jjmeter.save.saveservice.response_data=true -Jjmeter.save.saveservice.output_format=xml -n -t /input/test.jmx -l "$RESULT_FILE"

echo ""
echo "VALIDATING RESULTS:"

/jmeter/analyze-xml.sh "$RESULT_FILE"

echo ""
echo "SUCCESS!"