The site is using the Ananke theme.
It is currently referenced via a git submodule.

Because I have no push access to the ananke github remote, I resorted
to copying the theme files I needed to modify from the /themes/ananke/
directory to /.

Specifically:

  /themes/ananke/layouts/index.html -> /layouts/index.html
  /themes/ananke/layouts/partials/site-footer.html -> /layouts/partials/site-footer.html
  ...

Any file that exists both in /themes/ananke/layouts/ and /layouts/ is
likely being taken from ananke and customized.
