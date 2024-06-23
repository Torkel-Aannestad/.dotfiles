# manual install
sudo apt install
zsh

adduser torkel --uid 1000 --gid 1000
usermod -aG sudo torkel

endre shell
chsh -s $(which zsh)
mkdir -p ~/.oh-my-zsh

software-properties-common
git
build-essential
curl
unzip
htop
python3-pip
moreutils
tmux
fzf

apt-add-repository -y ppa:ansible/ansible



- name: Install ZSH
  apt: name=zsh
  tags: &tags_for_zsh_tasks [ 'install', 'productivity', 'dotfiles', 'zsh' ]
    
- name: Change shell to zsh
  shell: chsh -s $(which zsh)
  tags: *tags_for_zsh_tasks

- name: Check that the somefile.conf exists
  stat:
    path: /home/theprimeagen/.oh-my-zsh
  register: oh_my_stats
  tags: *tags_for_zsh_tasks

- name: Oh-My-Zsh
  shell: curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh > ~/.oh-my-installer && chmod +x ~/.oh-my-installer && ~/.oh-my-installer
  tags: *tags_for_zsh_tasks
  when: oh_my_stats.stat.exists == False
  become_user: theprimeagen

- name: Install zsh-autosuggestions
  ansible.builtin.git:
    repo: 'https://github.com/zsh-users/zsh-autosuggestions.git'
    dest: "~/.oh-my-zsh/plugins/zsh-autosuggestions"
  tags: *tags_for_zsh_tasks
