# Kubernetes Manifestation
- It takes in 3 inputs: 
  - Docker Image Tag
  - k8s manifest/resource path
  - Namespace

 

```
uses: namgaytobden/k8s-manifestation@main
with:
  image: docker_repo:tag
  manifest_path: /deployment/.
  namespace: test

```
