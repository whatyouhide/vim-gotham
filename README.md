![logo][logo]


> It's the colorscheme we set that defines us. *(Batman)*

Gotham is a **very dark** colorscheme.
As of now, it works on GUI vim (MacVim or gVim) and on iTerm 2, but more support
is coming.

![screenshot][screenshot]


## Installation

### Vim (GUI vim + terminal vim)

I moved to [vim-plug][vim-plug] a while ago and never looked back. Anyway, you
can install Gotham with whatever package manager you use.

The most important thing to notice is that you need to specify the path to the
vim part of the colorscheme (which is `vim/`), otherwise most plugin managers
will just add this repository to the `runtimepath` and vim won't be able to see
the colorscheme.

For example:

``` viml
" vim-plug
Plug 'whatyouhide/vim-gotham', { 'rtp': 'vim' }
" NeoBundle
NeoBundle 'whatyouhide/vim-gotham', { 'rtp': 'vim' }
" Vundle
Plugin 'whatyouhide/vim-gotham', { 'rtp': 'vim' }
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

[Download][zipped] the repository, unzip it and double-click on the
`iterm2/Gotham.itermcolors` file. iTerm will confirm the colorscheme has been
installed.

Now go into `Preferences > Profiles > Colors` and select `Gotham` from the
`Color Presets...` menu.

You're done!

If you want to see some screenshots, including iTerm ones, have a look at the
[wiki][wiki].

## License

MIT &copy; 2014 Andrea Leopardi, see [the license][license-file].

[logo]: http://i.imgur.com/FDLEzHC.png "Logo"
[screenshot]: http://i.imgur.com/NfRuHFN.png "A vim screenshot"
[license-file]: LICENSE.txt

[vim-plug]: https://github.com/junegunn/vim-plug
[iterm2]: http://iterm2.com/
[iterm2-gotham]: https://github.com/whatyouhide/iterm2-gotham-colorscheme
[vim-airline]: https://github.com/bling/vim-airline
[wiki]: https://github.com/whatyouhide/gotham-colorscheme/wiki
[zipped]: https://github.com/whatyouhide/gotham-colorscheme/archive/master.zip
