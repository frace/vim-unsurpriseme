# What is it?
[vim-unsurpriseme][what-vim-unsurpriseme] is a plugin for the Vim editor.
Plugins like [vim-gitgutter][what-vim-gitgutter], [vim-signify][what-vim-signify] or [syntastic][what-syntastic]
do rely on a Vim feature called `signs` (also known as «gutter»). These have one property in common: They blend in
symbols to the left of the editor area in specific situations.
Per default the SignColumn is only visible if there are signs to show. As a consequence the SignColumn shifts the
editor area to the right by the width of the SignColumn, which happens rather abrupt than in a smooth manner.
Therefore I wanted the SignColumn to be visible permanentely, hence to behave a little bit more «unsurprisingly».

[what-vim-unsurpriseme]:https://github.com/frace/vim-unsurpriseme
[what-vim-gitgutter]:https://github.com/airblade/vim-gitgutter
[what-vim-signify]: https://github.com/mhinz/vim-signify
[what-syntastic]: https://github.com/scrooloose/syntastic


## Get it!
If you don't use a plugin manager, I recommend to use [vim-plug][getit-vimplug].
Else I'm pretty sure you know how your personal plugin management works. ;)

[getit-vimplug]: https://github.com/junegunn/vim-plug


## Configuration
```
" Show the SignColumn inside *every* buffer - default 1.
" If disabled the SignColumn will be hidden inside empty and «nofile» buffers.
let g:unsurpriseme_everywhere = 1

" Links the highlight group from SignColumn to LineNr - default 1.
" If disabled the SignColumn highlight group uses the colorscheme defaults.
let g:unsurpriseme_link_color = 1
```


## Bugs
You are welcome to report bugs at the [project bugtracker][bugs-tracker] at github.com.

[bugs-tracker]: https://github.com/frace/vim-unsurpriseme/issues
