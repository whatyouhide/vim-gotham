![logo][logo]


> It's the vim colorscheme we set that defines us. *(Batman)*

Gotham is a **very dark** vim colorscheme. It works flawlessly with GUI vim
(MacVim and gVim) and it works on terminal vim with the proper terminal
emulator's colorscheme.

![screenshot][screenshot]


## Installation

### In Vim

I moved to [vim-plug][vim-plug] a while ago and never looked back. Anyway, you
can install Gotham with whatever package manager you use. For example:

``` viml
" vim-plug
Plug 'whatyouhide/vim-gotham'
" NeoBundle
NeoBundle 'whatyouhide/vim-gotham'
" Vundle
Plugin 'whatyouhide/vim-gotham'
```

If you use pathogen, clone the repository inside `~/.vim/bundle`:

    git clone https://github.com/whatyouhide/vim-gotham ~/.vim/bundle

If you don't use a plugin manager just copy the content of `colors/` to
`~/.vim/colors`.

When you have the plugin installed, you can set it in your `vimrc`:

``` viml
colorscheme gotham
```

Gotham supports [vim-airline][vim-airline] out of the box. When you use the
Gotham colorscheme, Airline should be able to pick it up and use it. If you want
to set it manually, you can use the `AirlineTheme` command:

    :AirlineTheme gotham


### In the terminal

As of now, the only supported terminal emulator is [iTerm 2][iterm2]. You can
find the Gotham colorscheme for iTerm 2 and its installation instructions in its
own [repository][iterm2-gotham].


## License

MIT &copy; 2014 Andrea Leopardi, see [LICENSE.txt][license-file]

[logo]: http://i.imgur.com/FDLEzHC.png
[screenshot]: http://i.imgur.com/NfRuHFN.png
[license-file]: LICENSE.txt

[vim-plug]: https://github.com/junegunn/vim-plug
[iterm2]: http://iterm2.com/
[iterm2-gotham]: https://github.com/whatyouhide/iterm2-gotham-colorscheme
[vim-airline]: https://github.com/bling/vim-airline
