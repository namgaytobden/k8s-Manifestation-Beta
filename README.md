# Kubernetes Manifestation
This action finds all **Kubernetes manifest** files containing **image** in their content, and for each file, it updates the **image** tag to the value of the `image` environment variable. 

This is useful for automatically updating **image** references in your Kubernetes configuration during deployment or GitOps process.

- It takes in **2** inputs: *(**Required**)*
  - Docker Image Tag
  - k8s manifest/resource path

```yaml
uses: namgaytobden/k8s-manifestation@main
with:
  image: docker_repo:tag
  manifest_path: deployment/manifest/
```

#**NOTE:** It modifies `Image` content in `spec.template.spec.containers[0].image` of any yaml file.

