docker run --rm --privileged -v ~/.docker:/root/.docker -v $(pwd)/censored_git_pull:/data -v /var/run/docker.sock:/var/run/docker.sock homeassistant/amd64-builder --addon --all -t /data
