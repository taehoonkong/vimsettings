# AWS Ubuntu zsh 설정, vim 설정

## 1. ZSH

### 1.1 ZSH 설치

```cli
$ sudo apt-get install zsh

$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$ sudo chsh -s /bin/zsh ubuntu
```

### 1.2 POWERLEVEL9K 설치

```cli
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

$ vim ~/.zshrc

수정: ZSH_THEME="powerlevel9k/powerlevel9k"
```

## 2. Vim

### 2.0 .vimrc 파일 복사

> $ cd ~
>
> $ vim .vimrc
> 
> .vimrc 내용 붙여넣기

### 2.1 Plug plugin manager 설치

```cli
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$ vim

/* 콜론(:) 입력후 */

:PlugInstall

/* .vimrc에 등록되어 있는 plugin 자동설치 */
```

### 2.2 NerdFont 설치

```cli
$ mkdir -p ~/.local/share/fonts
$ cd ~/.local/share/fonts
$ curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

## 3. EC2 alias 설정

```cli
/* osx 에서 */
$ vim .zshrc
추가: alias ec2='ssh -i "texcore-ec2-key.pem" ubuntu@ec2-13-124-182-197.ap-northeast-2.compute.amazonaws.com'

$ ec2
```
