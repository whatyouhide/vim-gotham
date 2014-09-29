![logo][logo]


> It's the colorscheme we set that defines us. *(Batman)*

Gotham is a **very dark** vim colorscheme.
As of now, it works on GUI vim (MacVim or gVim) and on iTerm 2, but more support
is coming.

![screenshot][screenshot]


## Installation

### Vim (GUI vim + terminal vim)

I moved to [vim-plug][vim-plug] a while ago and never looked back. Anyway, you
can install Gotham with whatever package manager you use.

For example:

``` viml
" vim-plug
Plug 'whatyouhide/vim-gotham'
" NeoBundle
NeoBundle 'whatyouhide/vim-gotham'
" Vundle
Plugin 'whatyouhide/vim-gotham'
```

If you don't use a plugin manager just copy the content of `vim/colors/` to
`~/.vim/colors`.

When you have the plugin installed, you can set it in your `vimrc`:

``` viml
colorscheme gotham
```

Gotham supports [vim-airline][vim-airline] out of the box. When you use the
Gotham colorscheme, Airline should be able to pick it up and use it. If you want
to set it manually, you can use the `AirlineTheme` command:

    :AirlineTheme gotham


### iTerm 2

Installation instructions and screenshots for iTerm 2 are available in [their
own repository][iterm-repo].

If you don't know what iTerm 2 is (and you use OSX), you should really have a
look at its [project page][iterm2].


## License

MIT &copy; 2014 Andrea Leopardi, see [the license][license-file].


[logo]: http://i.imgur.com/FDLEzHC.png "Logo"
[screenshot]: http://i.imgur.com/NfRuHFN.png "A vim screenshot"
[license-file]: LICENSE.txt

[vim-plug]: https://github.com/junegunn/vim-plug
[iterm2]: http://iterm2.com/
[iterm-repo]: https://github.com/whatyouhide/iterm2-gotham
[vim-airline]: https://github.com/bling/vim-airline
