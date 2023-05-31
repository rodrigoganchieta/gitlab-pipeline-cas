# Install Gitlab-Runner
sudo curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner

# Adding gitlab-runner user to docker group
sudo usermod -aG docker gitlab-runner

# Add gitlab-runner to sudo without asking for password
sudo echo "gitlab-runner    ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
