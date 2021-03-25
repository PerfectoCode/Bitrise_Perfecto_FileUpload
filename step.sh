#!/bin/bash
set -e
set -x

curl --location --request POST "https://"${perfecto_cloudname}"/repository/api/v1/artifacts" --header "'Perfecto-Authorization:${perfecto_accesskey}'" --form inputStream=@"${upload_path}" --form requestPart="{\"artifactLocator\":"${perfecto_filepath}"};type=application/json"
