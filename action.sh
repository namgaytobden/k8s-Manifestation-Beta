grep -r "image:" . | awk -F ':' '{print $1}' | xargs -I {} sed -i 's|<IMAGE>|${DOCKER_IMAGE}|' {}

kubectl apply -f $MANIFEST_PATH -n $NAMESPACE
