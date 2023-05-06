abbr -a 'tt' 'gio trash' 
abbr -a 'g' 'git'

if status is-interactive
end

if command -v exa > /dev/null abbr -a l 'exa'
  abbr -a ls 'exa'
  abbr -a ll 'exa -l' abbr -a lll 'exa -la' else
  abbr -a l 'exa'
  abbr -a ll 'exa -l'
  abbr -a lll 'exa -la'
  abbr -a ld 'exa -l --time-style=long-iso --group-directories-first'
end 

if command -v nvim > /dev/null
  abbr -a e 'nvim'
  abbr -a vi 'nvim'
  abbr -a vim 'nvim'
end

# Helix 
if command -v helix > /dev/null
  abbr -a 'h' 'helix'
  set -x HELIX_RUNTIME /usr/lib64/helix/runtime
end

set -x CHROME_EXECUTABLE /usr/bin/chromium
set -x ANDROID_NDK /home/thesimplekid/Android/Sdk/ndk/
set -x ANDROID_NDK_HOME /home/thesimplekid/Android/Sdk/ndk/25.2.9519653/
set -x LIBCLANG_PATH /usr/lib64/
set -x CPATH /usr/bin/../lib64/gcc/x86_64-suse-linux/13/include

# Thing to get flutter rust to build ring
# 
# set -x CFLAGS -Wno-gnu-include-next

# Flutter
set -gx PATH $PATH /home/thesimplekid/flutter/flutter/bin

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Fly Ctl
set FLYCTL_INSTALL "/home/thesimplekid/.fly"
set PATH "$FLYCTL_INSTALL/bin:$PATH"

# NPM
set PATH "$HOME/.npm-global/bin:$PATH"

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

