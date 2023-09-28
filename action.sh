echo "$DOCKER_IMAGE"
grep -r "image:" $MANIFEST_PATH | awk -F ':' '{print $1}' | xargs -I {} yq -i e '.[0].image = "'${DOCKER_IMAGE}'"' {}
#grep -r "image:" $MANIFEST_PATH | awk -F ':' '{print $1}' | xargs -I {}  {} sed -i 's|<IMAGE>|'${DOCKER_IMAGE}'|' {}
