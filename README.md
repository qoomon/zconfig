# zconfig

handy plugin to manage your zsh configuration with ease

## Usage

| cmd    |                                                      |
|---     |---                                                   |
| `zconfig cd`    | jump into `$ZCONFIG_HOME`, default is `$HOME`                |
| `zconfig edit [editor]` | open `$ZCONFIG_HOME` in `$EDITOR` or given editor command               |
| `zconfig update`  | eval `ZCONFIG_UPDATE_COMMAND` within `$ZCONFIG_HOME`              |
| `zconfig reload`    | reload `zsh.rc` |


## Install

### [zgem](https://github.com/qoomon/zgem)
`zgem bundle 'https://github.com/qoomon/zconfig.git' from:'git' use:'zconfig.zsh'`
### [zplug](https://github.com/zdharma/zplugin)
`zplug qoomon/zconfig`
### [zgen](https://github.com/tarjoilija/zgen)
```
zgen load qoomon/zconfig
zgen save
```
### [Antigen](https://github.com/zsh-users/antigen)
```
antigen bundle qoomon/zconfig
antigen apply
```
### [Oh My ZSH! custom plugin](http://ohmyz.sh/)
```
git clone https://github.com/qoomon/zconfig $ZSH_CUSTOM/plugins/zconfig
plugins+=(k)
```
### [zplug](https://github.com/zplug/zplug)
`zplug "qoomon/zconfig"`
### manually
```
git clone https://github.com/qoomon/zconfig.git
source zconfig/zconfig.zsh
```
