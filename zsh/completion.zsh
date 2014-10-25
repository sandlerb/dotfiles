
setopt COMPLETE_IN_WORD   # complete from both ends of a word
setopt ALWAYS_TO_END      # move cursor to end of completed word
setopt AUTO_LIST          # list choices
setopt AUTO_PARAM_SLASH   # if completed word is a dir, add a trailing slash
unsetopt MENU_COMPLETE    # don't autoselect first completion entry

# match uppercase from lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
unsetopt CASE_GLOB

# completers
zstyle ':completion:*' completer _expand _complete _match _approximate

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# use caching so commands like dpkg and apt are usable
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "~.zcompcache"

# match presentation
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'

# completion ignore
zstyle ':completion:*:*:*:users' ignored-patterns \
  adm amanda apache avahi beaglidx bin cacti canna clamav daemon \
  dbus distcache dovecot fax ftp games gdm gkrellmd gopher \
  hacluster haldaemon halt hsqldb ident junkbust ldap lp mail \
  mailman mailnull mldonkey mysql nagios \
  named netdump news nfsnobody nobody nscd ntp nut nx openvpn \
  operator pcap postfix postgres privoxy pulse pvm quagga radvd \
  rpc rpcuser rpm shutdown squid sshd sync uucp vcsa xfs '_*'

# man
zstyle ':completion:*:manuals' separate-sections true
