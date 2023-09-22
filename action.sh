grep -r "image:" . | awk -F ':' '{print $1}' | xargs -I {} yq -i '.spec.template.spec.containers[0].image = $DOCKER_IMAGE' {}

