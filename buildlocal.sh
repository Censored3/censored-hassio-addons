#docker build --build-arg BUILD_FROM="homeassistant/amd64-base:latest" -t local/addon_censored_git_pull .
#docker run --rm --privileged -v ~/.docker:/root/.docker -v ~/censored_git_pull:/data homeassistant/amd64-builder --amd64 -t /data
docker run --rm --privileged -v ~/.docker:/root/.docker -v $(pwd)/censored_git_pull:/data -v /var/run/docker.sock:/var/run/docker.sock homeassistant/amd64-builder --amd64 -t /data

