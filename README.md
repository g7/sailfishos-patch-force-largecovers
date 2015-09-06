sailfishos-patch-force-largecovers
==================================

As the new SailfishOS UI's application switcher is now vertically scrollable,
it's now finally possible to force the large covers while being able to multitask
with more than four applications.

This patch does that, alongside some other tweaks that improve the experience
in this particular case:

* The status bar sticks at the top even when scrolling through the open
  applications.
* The status bar background is more prominent, easing its readability
* The application switcher doesn't scroll to the top anymore when peeking/returning
  to the home screen.

Works on SailfishOS 1.1.9+.
