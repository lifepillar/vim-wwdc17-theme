# WWDC17 Color Scheme for Vim

![WWDC17 Color Scheme](https://raw.github.com/lifepillar/Resources/master/wwdc17/wwdc17.png)

A colorful light theme for Vim inspired by the colors of 2017's
[WWDC](https://developer.apple.com/wwdc/) event.

Looking for a companion dark theme? Check out
[vim-wwdc16-theme](https://github.com/lifepillar/vim-wwdc16-theme)!

This color scheme works **out of the box** if you use:

- Vim ≥7.4.1799 with `termguicolors` set, or
- NeoVim,

**and** a true-color enabled terminal (e.g., [iTerm2](https://www.iterm2.com)).

WWDC17 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, you *must* set your 16 terminal ASCII
colors to the WWDC17 palette. For macOS's Terminal.app and iTerm2, terminal
profiles are included in the repo.


## Options

Put the following options in your `vimrc` to customize the color scheme.

- **Choose you favourite frame color:**

        let g:wwdc17_frame_color = 10

  This is the color of the status line, tab line, and vertical splits.
  The value of this option should be a number between `0` and `15`.

- **Increase contrast:**

        let g:wwdc17_high_contrast = 1

- **Enable italics in the terminal:**

        let g:wwdc17_term_italics = 1

  Your terminal must support italics for this option to take effect.

- **Use a transparent background in the terminal:**

        let g:wwdc17_term_trans_bg = 1

The color palette is available through `g:wwdc17_palette`.


## Hacking

Do you want to hack the theme? Edit `src/wwdc17.vim` and `:source` it to
recreate the color scheme.

If you extend or improve WWDC17, please consider submitting a pull request!
