# Neovim configuration

This is my personal neovim config which was started from the fantastic
[Kickstart template]("https://github.com/nvim-lua/kickstart.nvim").

At the moment I'm working on breaking this template out into smaller modules
with some slight customizations.

Some tenets I'm trying to follow for this config:

- Keep it simple and fast. I don't want to update 100+ extensions and a less
  complex system is easier to debug.
- Make it enjoyable to look at and stirke a balance between performance and UI
  elements. I have to look at this thing for a large portion of the day so might
  as well gussy it up.
- Focus on TypsScript and web development. I primarily write TS for my day-job
  for either web dev or AWS CDK. Most other features will be disabled by
  default.
- Focus on readability and grouping by plugin/feature instead of functionality.
  Having all the autocmds together, for instance, is not easy to maintain and
  challenging to read since now we have to cross reference between files to
  understand all the aspects of a particular plugin. It's also much easier to
  add/remove plugins as needed.
