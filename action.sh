
echo "$DOCKER_IMAGE=$Image" >> $GITHUB_ENV
echo "${{ env.Image }}"

grep -r "image:" $MANIFEST_PATH | awk -F ':' '{print $1}' | xargs -I {} yq -i e '.spec.template.spec.containers[0].image = w' {}
