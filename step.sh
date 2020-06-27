#!/bin/bash
set -e
set -x
curl -X POST -T ${upload_path} "https://"${perfecto_cloudname}"/services/repositories/media/"${perfecto_filepath}"?operation=upload&securityToken="${perfecto_accesskey}""
