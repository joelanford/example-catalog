// docker-bake.hcl
target "docker-metadata-action" {}

target "build" {
  inherits = ["docker-metadata-action"]
  context = "./"
  dockerfile = "configs.Dockerfile"
  platforms = [
    "linux/amd64",
    "linux/arm64",
    "linux/s390x",
    "linux/ppc64le"
  ]
}
