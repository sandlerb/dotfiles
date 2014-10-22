# .dotfiles!

These are my dotfiles.

## Usage

script/bootstrap will install everything.  
Anything with a `.zsh` extension will be sourced.  
Anything with a `.symln_target` extension will be 
symlinked as `$HOME/.{file}`.

## Etc

### These are not my dotfiles
Much of this is from [@holman][@1]'s [dotfiles][l1] and I also like to pinch a line or three from [@peplin][@2]'s [dotfiles][l2].  Some of the comments and base files are from [prezto][l3].

### TODO
* symlink /etc/ zsh files
* clean up whitespace
* move zprezto stuff into dotfiles
* get rid of zprezto
* integrate mackup so it doesn't symlink everything to DropBox


[@1]: https://github.com/holman
[@2]: https://github.com/peplin

[l1]: https://github.com/holman/dotfiles
[l2]: https://github.com/peplin/dotfiles
[l3]: https://github.com/sorin-ionescu/prezto