#!/bin/bash
set -e
set -x
#curl -X POST -T ${upload_path} "https://"${perfecto_cloudname}"/services/repositories/media/"${perfecto_filepath}"?operation=upload&securityToken="${perfecto_accesskey}""
#curl --location --request POST https://"${perfecto_cloudname}"/repository/api/v1/artifacts --header 'Perfecto-Authorization:'${perfecto_accesskey}'' --form inputStream=@"${upload_path}" --form requestPart="{\"artifactLocator\":${perfecto_filepath}\"}";type=application/json
#curl --location --request POST https://${perfecto_cloudname}/repository/api/v1/artifacts --header 'Perfecto-Authorization:'${perfecto_accesskey} --form inputStream=@\"${upload_path}\" --form requestPart="{\"artifactLocator\":"${perfecto_filepath}"}";type=application/json
curl --location --request POST "https://"${perfecto_cloudname}"/repository/api/v1/artifacts" --header "'Perfecto-Authorization:${perfecto_accesskey}'" --form inputStream=@"${upload_path}" --form requestPart="{\"artifactLocator\":"${perfecto_filepath}"};type=application/json"