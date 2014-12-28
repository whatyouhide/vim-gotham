![logo][logo]


> It's the colorscheme we set that defines us. *(Batman)*

Gotham is a **very dark** vim colorscheme. It works on GUI vim (MacVim or gVim)
and on terminal vim. For terminal vim, there's support for a lot of terminal
emulators in the [gotham-contrib][gotham-contrib] repository.

![screenshot][screenshot]


## Installation

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

If you don't use a plugin manager just copy the content of `vim/colors/` to
`~/.vim/colors`.

When you have the plugin installed, you can set it in your `vimrc`:

``` viml
colorscheme gotham
```

#### Terminal vim and 256 colors version

If you want to use Gotham in terminal vim, you should consider setting Gotham as
the colorscheme of your terminal emulator too. See the [relevant
section](#other).

If you're fine with not-so-faithful colors, a 256 colors version of Gotham is
available. To use it, just replace `gotham` with `gotham256` in your `vimrc`:

``` viml
colorscheme gotham256
```

Using `gotham256` (given that your terminal supports 256 colors) ensures that
the colors in vim are fixed and don't depend on the colorscheme of the terminal
emulator.

**Please**, use the 256 colors version only if you know what you're doing since
it looks "rougher" than the regular version.

#### Airline

Gotham supports [vim-airline][vim-airline] out of the box. When you use the
Gotham colorscheme, Airline should be able to pick it up and use it. If you want
to set it manually, you can use the `AirlineTheme` command for both the regular
version and the 256 colors version:

    :AirlineTheme gotham
    :AirlineTheme gotham256

#### Lightline

Gotham supports [lightline.vim][lightline.vim] too. To enable the colorscheme,
add one of the following lines to your `.vimrc`:

``` viml
let g:lightline.colorscheme = 'gotham'
let g:lightline.colorscheme = 'gotham256'
```


### <a name=other></a>Other

Gotham is available for other platforms too. If you want terminal vim to look as
good as GUI vim, you have to install the Gotham colorscheme for your terminal
emulator too.

An up-to-date list of supported platforms as well as installation instructions
for each of those platforms are available at the
[gotham-contrib][gotham-contrib] repository.

There's an [Emacs version][emacs-version] too, but I don't maintain it.


## Contributing

All forms of contribution are welcome: bug reports, bug fixes, pull requests and
simple suggestions. Thanks!

### List of contributors

You can find the list of contributors [here][contributors].


## License

MIT &copy; 2014 Andrea Leopardi, see [the license][license-file].


[logo]: http://i.imgur.com/FDLEzHC.png "Logo"
[screenshot]: http://i.imgur.com/NfRuHFN.png "A vim screenshot"
[license-file]: LICENSE.txt

[vim-plug]: https://github.com/junegunn/vim-plug
[gotham-contrib]: https://github.com/whatyouhide/gotham-contrib
[vim-airline]: https://github.com/bling/vim-airline
[lightline.vim]: https://github.com/itchyny/lightline.vim
[emacs-version]: https://github.com/wasamasa/gotham-theme
[contributors]: https://github.com/whatyouhide/vim-gotham/graphs/contributors
