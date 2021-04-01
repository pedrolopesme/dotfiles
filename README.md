# my-vim
Personal repo with my .vimrc, colorschemes, etc

### Requirements

In order to work properly, you have to install:

* [FZF](https://github.com/junegunn/fzf)
* [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
* ctags
* [NerdFonts](https://github.com/ryanoasis/nerd-fonts)
* [Oh my shell autosuggestions and syntax highlight](https://gist.github.com/dogrocker/1efb8fd9427779c827058f873b94df95)
* [Power10k](https://github.com/romkatv/powerlevel10k)

#### Macos and TMUX at startup

On Iterm2 Go to: Preferences > General > Profiles > Defaul > General > Command (Pick Command option) and type:
`tmux new -s init`

### Shortcuts:
* `Crtl + t` : Open new tab
* `Ctrl + t + left/right` : navigate between tabs
* `:FZF` : open search files by name
* `:Ag` : open search files by content and name
* `:split` and `: vsplit` : split current window
* `Ctrl + w + left'/right/up/down` : navigate between window splits
* `Command + Deleted ` : delete line (backward)
* `Option + Delete` : delete word (backward)
* `Control + N` : open Nerdtree 
* `Control + M` : open Tagbar


#### GIT Specifics
* `:Git <git commands like commit` : Git integration
* `Gcommit` : shortcut to commit
* `Gpush`: shortcut to push 
* `Gpull`: shortcut to pull
* `:GV` : show commit history
* `<leader> s` : show inline git blame


#### Golang Specifics
* `space + a` : inspect code for errors
* `gd` : go to defintion
* `gy` : go to type defintion
* `gi` : go to implementation
* `gr` : get references 
* `ctrl + o`: go back


In order to have Coc running, you'll need to:
```
:CoConfig
```
and add:
```
{
  "languageserver": {
    "golang": {
      "command": "gopls",
      "rootPatterns": ["go.mod", ".vim/", ".git/", ".hg/"],
      "filetypes": ["go"]
    }
  }
}
```

Also, you must have gopls in your GOBIN
