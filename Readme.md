# WWDC17 Color Scheme for Vim

![WWDC17 Color Scheme](https://raw.github.com/lifepillar/Resources/master/wwdc17/wwdc17.png)

A colorful light theme for Vim inspired by the colors of 2017's
[WWDC](https://developer.apple.com/wwdc/) event.

Looking for a companion dark theme? Check out
[vim-wwdc16-theme](https://github.com/lifepillar/vim-wwdc16-theme)!

This color scheme works **out of the box everywhere**. For the best experience,
you need:

- Vim ≥7.4.1799, or NeoVim, with `termguicolors` set, **and**
- [a true-color enabled terminal](https://gist.github.com/XVilka/8346728).

WWDC17 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, WWDC17 will fall back to use a (pretty
good) approximate palette based on xterm's 256 colors.


## Options

Put the following options in your `vimrc` to customize the color scheme.

- **Give your theme a unique touch by selecting a different frame
  color:**

        let g:wwdc17_frame_color = 10

  This is the color of the status line, tab line, and vertical splits.
  The value of this option should be a number between `0` and `15`.

- **Use a transparent background in the terminal:**

        let g:wwdc17_transp_bg = 1

The color palette is available through `g:terminal_ansi_colors`.

![WWDC17 Frames](https://raw.github.com/lifepillar/Resources/master/wwdc17/screenshot.png)


## Hacking

Do you want to hack the theme? Install the
[Colortemplate](https://github.com/lifepillar/vim-colortemplate) ftplugin and
modify `wwdc17.colortemplate`, then rebuild the colorscheme with the
`:Colortemplate` command.

If you extend or improve WWDC17, please consider submitting a pull request!

