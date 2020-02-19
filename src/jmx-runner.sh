#!/usr/bin/env bash

set -eo pipefail
set -u
ENVIRONMENT="${1:-}"
readonly RESULT_FILE="/output/jmeter-report.log"

echo ""
echo "RUNNING JMETER:"

${JMETER_BIN} "$ENVIRONMENT" -Jjmeter.save.saveservice.response_data=true -Jjmeter.save.saveservice.output_format=xml -n -t /input/test.jmx -l "$RESULT_FILE"

echo ""
echo "VALIDATING RESULTS:"

/jmeter/analyze-xml.sh "$RESULT_FILE"

echo ""
echo "SUCCESS!"
