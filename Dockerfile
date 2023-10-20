FROM centos:8

# Switch to CentOS stream repos
# https://haydenjames.io/fix-error-failed-to-download-metadata-for-repo-appstream-centos-8/
RUN dnf --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos -y
RUN dnf distro-sync -y
RUN dnf install epel-release epel-next-release -y

# Install OS packages
RUN yum install yum-utils -y
#RUN yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
RUN yum install tar zip findutils util-linux-user zsh iputils procps tree diffutils mlocate tmux vim git python3 curl rust cmake ripgrep -y

# Install node
RUN dnf module enable nodejs:16 -y
RUN dnf install nodejs xclip -y
# Install pyright
RUN npm install pyright --global

# RUN chsh -s /bin/zsh root

# Set up neovim
## Commented on 05/21/2023 So that we can build neovim from source instead
RUN git clone https://github.com/neovim/neovim.git /root/neovim
RUN cd /root/neovim && make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
RUN cd /root/neovim && make install
RUN echo 'export PATH="$HOME/neovim/bin:$PATH"' >> /root/.bashrc
RUN mkdir -p /root/.locl/share/nvim/site/autoload
RUN echo 'alias vi=nvim' >> /root/.bashrc

# Set WORKDIR
WORKDIR /root/

