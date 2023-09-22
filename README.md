# Kubernetes Manifestation
This action finds all **Kubernetes manifest** files containing **image** in their content, and for each file, it updates the **image** tag to the value of the `image` environment variable. 

This is useful for automatically updating **image** references in your Kubernetes configuration during deployment or CI/CD processes.

- It takes in **2** inputs: 
  - Docker Image Tag
  - k8s manifest/resource path

```
uses: namgaytobden/k8s-manifestation@main
with:
  image: docker_repo:tag
  manifest_path: deployment/manifest/
```

#**NOTE:** It modifies the manifest files. 
