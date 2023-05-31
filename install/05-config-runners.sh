# Join Runner in shell mode in GitLab
# If using gitlab.com or certificate, change this to HTTPS://
sudo gitlab-runner register -n \
  --url http://IP-OU-URL \
  --registration-token TOKEN \
  --executor shell \
  --description "Runner Shell"

# Create gitlab-runner container for Docker
# If using gitlab.com or certificate, change this to HTTPS://
docker run -dit \
  --name runner-docker \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:ubuntu-v14.9.1

# Join Runner in docker mode in GitLab
# If using gitlab.com or certificate, change this to HTTPS://
docker exec -it runner-docker \
gitlab-runner register -n \
  --url http://IP-OU-URL \
  --registration-token TOKEN \
  --clone-url http://IP-OU-URL\
  --executor docker \
  --docker-image "docker:latest" \
  --docker-privileged

