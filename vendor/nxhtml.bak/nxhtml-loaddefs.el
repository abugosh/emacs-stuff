;; Autoloads for nXthml
;;
;; This file should be updated by `nxhtmlmaint-get-file-autoloads',
;; `nxhtmlmaint-get-dir-autoloads' or `nxhtmlmaint-get-all-autoloads'.
(eval-when-compile (require 'nxhtml-base))
(eval-when-compile (require 'web-vcs))

;;;### (autoloads (amrita-mode) "amrita" "related/amrita.el" (19502
;;;;;;  22614))
;;; Generated autoloads from related/amrita.el
(web-autoload-require 'amrita 'lp '(nxhtml-download-root-url nil) "related/amrita" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote amrita-mode) "amrita" "\
A major mode for editing Amrita files.

\(fn)" t nil)

;;;***

;;;### (autoloads (cancel-secondary-selection set-secondary-selection
;;;;;;  anchored-transpose) "anchored-transpose" "util/anchored-transpose.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from util/anchored-transpose.el
(web-autoload-require 'anchored-transpose 'lp '(nxhtml-download-root-url nil) "util/anchored-transpose" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote anchored-transpose) "anchored-transpose" "\
Transpose portions of the region around an anchor phrase.

`this phrase but not that word'    can be transposed into
`that word but not this phrase'

I want this phrase but not that word.
       |----------------------------|. .This is the entire phrase.
                  |-------|. . . . . . .This is the anchor phrase.

First select the entire phrase and type \\[anchored-transpose].
This set the secondary selection.

Then select the anchor phrase and type \\[anchored-transpose]
again.  Alternatively you can do the selections like this:

I want this phrase but not that word.
       |----------|       |---------|   Separate phrase selection.

By default the anchor phrase will automatically include
any surrounding whitespace even if you don't explicitly select
it.  Also, it won't include certain trailing punctuation.  See
`anchored-transpose-do-fuzzy' for details.  A prefix arg prior to
either selection means `no fuzzy logic, use selections
literally'.

You can select the regions to be swapped separately in any
order.

After swapping both primary and secondary selection are still
active.  They will be canceled after second next command if you
do not swap regions again.  (Second because this allow you to
adjust the regions and try again.)

You can also swap text between different buffers this way.

Typing \\[anchored-transpose] with nothing selected clears any
prior selection, ie secondary selection.

\(fn BEG1 END1 FLG1 &optional BEG2 END2 FLG2 WIN2)" t nil)

(nxhtml-autoload (quote set-secondary-selection) "anchored-transpose" "\
Set the secondary selection to the current region.
This must be bound to a mouse drag event.

\(fn BEG END)" t nil)

(nxhtml-autoload (quote cancel-secondary-selection) "anchored-transpose" "\
Not documented

\(fn)" t nil)

;;;***

;;;### (autoloads (appmenu-mode appmenu-add appmenu) "appmenu" "util/appmenu.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/appmenu.el
(web-autoload-require 'appmenu 'lp '(nxhtml-download-root-url nil) "util/appmenu" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote appmenu) (quote custom-loads)))) (if (member (quote "appmenu") loads) nil (put (quote appmenu) (quote custom-loads) (cons (quote "appmenu") loads))))

(nxhtml-autoload (quote appmenu-add) "appmenu" "\
Add entry to `appmenu-alist'.
Add an entry to this list with ID, PRIORITY, TEST, TITLE and
DEFINITION as explained there.

\(fn ID PRIORITY TEST TITLE DEFINITION)" nil nil)

(defvar appmenu-mode nil "\
Non-nil if Appmenu mode is enabled.
See the command `appmenu-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `appmenu-mode'.")

(custom-autoload (quote appmenu-mode) "appmenu" nil)

(nxhtml-autoload (quote appmenu-mode) "appmenu" "\
Use a context sensitive popup menu.
AppMenu (appmenu.el) is a framework for creating cooperative
context sensitive popup menus with commands from different major
and minor modes. Using this different modes may cooperate about
the use of popup menus.

There is also the command `appmenu-as-help' that shows the key
bindings at current point in the help buffer.

The popup menu and the help buffer version are on these keys:

\\{appmenu-mode-map}

The variable `appmenu-alist' is where the popup menu entries
comes from.

If there is a `keymap' property at point then relevant bindings
from this is also shown in the popup menu.

You can write functions that use whatever information you want in
Emacs to construct these entries. Since this information is only
collected when the popup menu is shown you do not have to care as
much about computation time as for entries in the menu bar.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (as-external-mode as-external-for-wiki as-external-for-el-files
;;;;;;  as-external-check-contents as-external-for-mail-mode as-external-for-xhtml
;;;;;;  as-external) "as-external" "util/as-external.el" (19502 22614))
;;; Generated autoloads from util/as-external.el
(web-autoload-require 'as-external 'lp '(nxhtml-download-root-url nil) "util/as-external" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote as-external) (quote custom-loads)))) (if (member (quote "as-external") loads) nil (put (quote as-external) (quote custom-loads) (cons (quote "as-external") loads))))

(nxhtml-autoload (quote as-external-for-xhtml) "as-external" "\
Setup for Firefox addon It's All Text to edit XHTML.
It's All Text is a Firefox add-on for editing textareas with an
external editor.
See URL `https://addons.mozilla.org/en-US/firefox/addon/4125'.

In this case Emacs is used to edit textarea fields on a web page.
The text will most often be part of a web page later, like on a
blog.  Therefore turn on these:

- `nxhtml-mode' since some XHTML tags may be allowed.
- `nxhtml-validation-header-mode' since it is not a full page.
- `wrap-to-fill-column-mode' to see what you are writing.
- `html-write-mode' to see it even better.

Also bypass the question for line end conversion when using
emacsw32-eol.

\(fn)" t nil)

(nxhtml-autoload (quote as-external-for-mail-mode) "as-external" "\
Setup for Firefox addon It's All Text to edit mail.
Set normal mail comment markers in column 1 (ie >).

Set `fill-column' to 90 and enable `wrap-to-fill-column-mode' so
that it will look similar to how it will look in the sent plain
text mail.

See also `as-external-mode'.

\(fn)" t nil)

(nxhtml-autoload (quote as-external-check-contents) "as-external" "\
Try to guess the file contents.

\(fn)" nil nil)

(nxhtml-autoload (quote as-external-for-el-files) "as-external" "\
Setup for Firefox addon It's All Text to edit MediaWikis.

\(fn)" t nil)

(nxhtml-autoload (quote as-external-for-wiki) "as-external" "\
Setup for Firefox addon It's All Text to edit MediaWikis.

\(fn)" t nil)

(defvar as-external-mode nil "\
Non-nil if As-External mode is enabled.
See the command `as-external-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `as-external-mode'.")

(custom-autoload (quote as-external-mode) "as-external" nil)

(nxhtml-autoload (quote as-external-mode) "as-external" "\
If non-nil check if Emacs is called as external editor.
When Emacs is called as an external editor for example to edit
text areas on a web page viewed with Firefox this library tries
to help to setup the buffer in a useful way. It may for example
set major and minor modes for the buffer.

This can for example be useful when blogging or writing comments
on blogs.

See `as-external-alist' for more information.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (buffer-bg-set-color) "buffer-bg" "util/buffer-bg.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/buffer-bg.el
(web-autoload-require 'buffer-bg 'lp '(nxhtml-download-root-url nil) "util/buffer-bg" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote buffer-bg-set-color) "buffer-bg" "\
Add an overlay with background color COLOR to buffer BUFFER.
If COLOR is nil remove previously added overlay.

\(fn COLOR BUFFER)" t nil)

;;;***

;;;### (autoloads (chartg-make-chart chartg-complete) "chartg" "util/chartg.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/chartg.el
(web-autoload-require 'chartg 'lp '(nxhtml-download-root-url nil) "util/chartg" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote chartg-complete) "chartg" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote chartg-make-chart) "chartg" "\
Try to make a new chart.
If region is active then make a new chart from data in the
selected region.

Else if current buffer is in `chartg-mode' then do it from the
chart specifications in this buffer.  Otherwise create a new
buffer and initialize it with `chartg-mode'.

If the chart specifications are complete enough to make a chart
then do it and show the resulting chart image.  If not then tell
user what is missing.

NOTE: This is beta, no alpha code. It is not ready.

Below are some examples.  To test them mark an example and do

  M-x chartg-make-chart

* Example, simple x-y chart:

  Output-file: \"~/temp-chart.png\"
  Size: 200 200
  Data: 3 8 5 | 10 20 30
  Type: line-chartg-xy

* Example, pie:

  Output-file: \"~/temp-depression.png\"
  Size: 400 200
  Data:
  2,160,000
  3,110,000
  1,510,000
  73,600
  775,000
  726,000
  8,180,000
  419,000
  Type: pie-3-dimensional
  Chartg-title: \"Depression hits on Google\"
  Legends:
  \"SSRI\"
  | \"Psychotherapy\"
  | \"CBT\"
  | \"IPT\"
  | \"Psychoanalysis\"
  | \"Mindfulness\"
  | \"Meditation\"
  | \"Exercise\"


* Example, pie:

  Output-file: \"~/temp-panic.png\"
  Size: 400 200
  Data:
  979,000
  969,000
  500,000
  71,900
  193,000
  154,000
  2,500,000
  9,310,000
  Type: pie-3-dimensional
  Chartg-title: \"Depression hits on Google\"
  Legends:
  \"SSRI\"
  | \"Psychotherapy\"
  | \"CBT\"
  | \"IPT\"
  | \"Psychoanalysis\"
  | \"Mindfulness\"
  | \"Meditation\"
  | \"Exercise\"


* Example using raw:

  Output-file: \"~/temp-chartg-slipsen-kostar.png\"
  Size: 400 130
  Data: 300 1000 30000
  Type: bar-chartg-horizontal
  Chartg-title: \"Vad killen i slips tjÅ‰nar jÅ‰mfÅˆrt med dig och mig\"
  Google-chartg-raw: \"&chds=0,30000&chco=00cd00|ff4500|483d8b&chxt=y,x&chxl=0:|Killen+i+slips|Partiledarna|Du+och+jag&chf=bg,s,ffd700\"


\(fn)" t nil)

;;;***

;;;### (autoloads (csharp-mode csharp-mode-hook) "csharp-mode" "related/csharp-mode.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from related/csharp-mode.el
(web-autoload-require 'csharp-mode 'lp '(nxhtml-download-root-url nil) "related/csharp-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(add-to-list (quote auto-mode-alist) (quote ("\\.cs$" . csharp-mode)))

(defvar csharp-mode-hook nil "\
*Hook called by `csharp-mode'.")

(custom-autoload (quote csharp-mode-hook) "csharp-mode" t)

(nxhtml-autoload (quote csharp-mode) "csharp-mode" "\
Major mode for editing C# code. This mode is derived from CC Mode to
support C#.

The hook `c-mode-common-hook' is run with no args at mode
initialization, then `csharp-mode-hook'.

This mode will automatically add a symbol and regexp to the
`compilation-error-regexp-alist' and `compilation-error-regexp-alist-alist'
respectively, for Csc.exe error and warning messages.

Key bindings:
\\{csharp-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (css-color-test css-color-global-mode css-color-mode
;;;;;;  css-color) "css-color" "util/css-color.el" (19502 22614))
;;; Generated autoloads from util/css-color.el
(web-autoload-require 'css-color 'lp '(nxhtml-download-root-url nil) "util/css-color" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote css-color) (quote custom-loads)))) (if (member (quote "css-color") loads) nil (put (quote css-color) (quote custom-loads) (cons (quote "css-color") loads))))

(nxhtml-autoload (quote css-color-mode) "css-color" "\
Show hex color literals with the given color as background.
In this mode hexadecimal colour specifications like #3253ff are
displayed with the specified colour as background.

Certain keys are bound to special colour editing commands when
point is at a hexadecimal colour:

\\{css-color-map}

\(fn &optional ARG)" t nil)

(defvar css-color-global-mode nil "\
Non-nil if Css-Color-Global mode is enabled.
See the command `css-color-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `css-color-global-mode'.")

(custom-autoload (quote css-color-global-mode) "css-color" nil)

(nxhtml-autoload (quote css-color-global-mode) "css-color" "\
Toggle Css-Color mode in every possible buffer.
With prefix ARG, turn Css-Color-Global mode on if and only if ARG is positive.
Css-Color mode is enabled in all buffers where `css-color-turn-on-in-buffer' would do it.
See `css-color-mode' for more information on Css-Color mode.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote css-color-test) "css-color" "\
Test colors interactively.
The colors are displayed in the echo area. You can specify the
colors as any viable css color.  Example:

  red
  #f00
  #0C0
  #b0ff00
  hsla(100, 50%, 25%)
  rgb(255,100,120)

\(fn FG-COLOR BG-COLOR)" t nil)

;;;***

;;;### (autoloads (css-palette-global-mode css-palette css-palette-mode)
;;;;;;  "css-palette" "util/css-palette.el" (19502 22614))
;;; Generated autoloads from util/css-palette.el
(web-autoload-require 'css-palette 'lp '(nxhtml-download-root-url nil) "util/css-palette" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote css-palette-mode) "css-palette" "\
Minor mode for palettes in CSS.

The mode `css-palette-mode' acts on the first COLORS declaration in your
  file of the form:

COLORS:
\(
c0 \"#6f5d25\"	;tainted sand
c1 \"#000000\"	;Black
c2 \"#cca42b\"	;goldenslumber
c3 \"#6889cb\"	;far off sky
c4 \"#fff\"	;strange aeons
)

Such declarations should appear inside a block comment, in order
  to be parsed properly by the LISP reader.

Type \\[css-palette-update-all], and any occurence of

  color: #f55; /*[c3]*/

will be updated with

  color: #6899cb; /*[c3]*/

The following commands are available to insert key-value pairs
  and palette declarations:
  \\{css-palette-mode-map}

You can extend or redefine the types of palettes by defining a
  new palette specification of the form (PATTERN REGEXP
  REF-FOLLOWS-VALUE), named according to the naming scheme
  css-palette:my-type, where

PATTERN is a pattern containing two (%s) format directives which
  will be filled in with the variable and its value,

REGEXP is a regular expression to match a value - variable
  pattern,

and REF-FOLLOWS-VALUE defined whether or not the reference comes
  after the value. This allows for more flexibility.

Note that, although the w3c spec at URL
  `http://www.w3.org/TR/CSS2/syndata.html#comments' says that
  comments \" may occur anywhere between tokens, and their
  contents have no influence on the rendering\", Internet
  Explorer does not think so. Better keep all your comments after
  a \"statement\", as per the default. This means `css-palette'
  is ill-suited for use within shorthands.

See variable `css-palette:colors' for an example of a palette
  type.

The extension mechanism means that palette types can be used to
  contain arbitrary key-value mappings.

Besides the colors palette, css-palette defines the palette
  definition variables `css-palette:colors-outside' and
  `css-palette:files', for colors with the reference outside and
  for file url()'s respectively.

You can fine-control which palette types css-palette should look
  at via the variable `css-palette-types'.

\(fn &optional ARG)" t nil)

(let ((loads (get (quote css-palette) (quote custom-loads)))) (if (member (quote "css-palette") loads) nil (put (quote css-palette) (quote custom-loads) (cons (quote "css-palette") loads))))

(defvar css-palette-global-mode nil "\
Non-nil if Css-Palette-Global mode is enabled.
See the command `css-palette-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `css-palette-global-mode'.")

(custom-autoload (quote css-palette-global-mode) "css-palette" nil)

(nxhtml-autoload (quote css-palette-global-mode) "css-palette" "\
Toggle Css-Palette mode in every possible buffer.
With prefix ARG, turn Css-Palette-Global mode on if and only if ARG is positive.
Css-Palette mode is enabled in all buffers where `css-palette-turn-on-in-buffer' would do it.
See `css-palette-mode' for more information on Css-Palette mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cusnu-export-my-skin-options customize-for-new-user)
;;;;;;  "cus-new-user" "util/cus-new-user.el" (19502 22614))
;;; Generated autoloads from util/cus-new-user.el
(web-autoload-require 'cus-new-user 'lp '(nxhtml-download-root-url nil) "util/cus-new-user" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote customize-for-new-user) "cus-new-user" "\
Show special customization page for new user.

\(fn &optional NAME)" t nil)

(nxhtml-autoload (quote cusnu-export-my-skin-options) "cus-new-user" "\
Export to file FILE custom options in `cusnu-my-skin-options'.
The options is exported to elisp code that other users can run to
set the options that you have added to `cusnu-my-skin-options'.

For more information about this see `cusnu-export-cust-group'.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (django-mode) "django" "related/django.el" (19502
;;;;;;  22614))
;;; Generated autoloads from related/django.el
(web-autoload-require 'django 'lp '(nxhtml-download-root-url nil) "related/django" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote django-mode) "django" "\
Simple Django mode for use with mumamo.
This mode only provides syntax highlighting.

\(fn)" t nil)

;;;***

;;;### (autoloads (ediff-url) "ediff-url" "util/ediff-url.el" (19502
;;;;;;  22614))
;;; Generated autoloads from util/ediff-url.el
(web-autoload-require 'ediff-url 'lp '(nxhtml-download-root-url nil) "util/ediff-url" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote ediff-url) "ediff-url" "\
Compare current buffer to a web URL using `ediff-buffers'.
Check URL using `ediff-url-redirects' before fetching the file.

This is for checking downloaded file.  A the file may have a comment
telling the download URL of thise form in the header:

   ;; URL: http://the-server.net/the-path/the-file.el

If not the user is asked for the URL.

\(fn URL)" t nil)

;;;***

;;;### (autoloads (google-chrome-server-mode) "edit-server" "util/edit-server.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/edit-server.el
(web-autoload-require 'edit-server 'lp '(nxhtml-download-root-url nil) "util/edit-server" nxhtml-install-dir 'nxhtml-byte-compile-file)


(defvar google-chrome-server-mode nil "\
Non-nil if Google-Chrome-Server mode is enabled.
See the command `google-chrome-server-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `google-chrome-server-mode'.")

(custom-autoload (quote google-chrome-server-mode) "edit-server" nil)

(nxhtml-autoload (quote google-chrome-server-mode) "edit-server" "\
Accept editing requests from Google Chrome.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ert-run-tests-interactively ert-deftest) "ert"
;;;;;;  "tests/ert.el" (19502 22614))
;;; Generated autoloads from tests/ert.el
(web-autoload-require 'ert 'lp '(nxhtml-download-root-url nil) "tests/ert" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote ert-deftest) "ert" "\
Define NAME (a symbol) as a test.

\(fn NAME () [:documentation DOCSTRING] [:expected-result TYPE] BODY...)" nil (quote macro))

(nxhtml-autoload (quote ert-run-tests-interactively) "ert" "\
Run the tests specified by SELECTOR and display the results in a buffer.

\(fn SELECTOR &optional OUTPUT-BUFFER-NAME MESSAGE-FN)" t nil)

;;;***

;;;### (autoloads (ffip-find-file-in-dirtree ffip-set-current-project)
;;;;;;  "ffip" "util/ffip.el" (19502 22613))
;;; Generated autoloads from util/ffip.el
(web-autoload-require 'ffip 'lp '(nxhtml-download-root-url nil) "util/ffip" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote ffip-set-current-project) "ffip" "\
Setup ffip project NAME with top directory ROOT of type TYPE.
ROOT can either be just a directory or a list of directory where
the first used just for prompting purposes and the files in the
rest are read into the ffip project.

Type is a type in `ffip-project-file-types'.

\(fn NAME ROOT TYPE)" nil nil)

(nxhtml-autoload (quote ffip-find-file-in-dirtree) "ffip" "\
Find files in directory tree ROOT.

\(fn ROOT)" t nil)

;;;***

;;;### (autoloads (flymake-css-load) "flymake-css" "related/flymake-css.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/flymake-css.el
(web-autoload-require 'flymake-css 'lp '(nxhtml-download-root-url nil) "related/flymake-css" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote flymake-css-load) "flymake-css" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (flymake-java-1-load) "flymake-java-1" "related/flymake-java-1.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/flymake-java-1.el
(web-autoload-require 'flymake-java-1 'lp '(nxhtml-download-root-url nil) "related/flymake-java-1" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote flymake-java-1-load) "flymake-java-1" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (flymake-js-load flymake-js) "flymake-js" "related/flymake-js.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/flymake-js.el
(web-autoload-require 'flymake-js 'lp '(nxhtml-download-root-url nil) "related/flymake-js" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote flymake-js) (quote custom-loads)))) (if (member (quote "flymake-js") loads) nil (put (quote flymake-js) (quote custom-loads) (cons (quote "flymake-js") loads))))

(nxhtml-autoload (quote flymake-js-load) "flymake-js" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (fold-dwim-turn-on-outline-and-hide-all fold-dwim-turn-on-hs-and-hide
;;;;;;  fold-dwim-unhide-hs-and-outline fold-dwim-mode fold-dwim-toggle
;;;;;;  fold-dwim) "fold-dwim" "util/fold-dwim.el" (19502 22614))
;;; Generated autoloads from util/fold-dwim.el
(web-autoload-require 'fold-dwim 'lp '(nxhtml-download-root-url nil) "util/fold-dwim" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote fold-dwim) (quote custom-loads)))) (if (member (quote "fold-dwim") loads) nil (put (quote fold-dwim) (quote custom-loads) (cons (quote "fold-dwim") loads))))

(nxhtml-autoload (quote fold-dwim-toggle) "fold-dwim" "\
Toggle visibility or some other visual things.
Try toggling different visual things in this order:

- Images shown at point with `inlimg-mode'
- Text at point prettified by `html-write-mode'.

For the rest it unhides if possible, otherwise hides in this
order:

- `org-mode' header or something else using that outlines.
- Maybe `fold-dwim-toggle-selective-display'.
- `Tex-fold-mode' things.
- In html if `outline-minor-mode' and after heading hide content.
- `hs-minor-mode' things.
- `outline-minor-mode' things. (Turns maybe on this.)

It uses `fold-dwim-show' to show any hidden text at point; if no
hidden fold is found, try `fold-dwim-hide' to hide the
construction at the cursor.

Note: Also first turn on `fold-dwim-mode' to get the keybinding
for this function from it.

\(fn)" t nil)

(defvar fold-dwim-mode nil "\
Non-nil if Fold-Dwim mode is enabled.
See the command `fold-dwim-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `fold-dwim-mode'.")

(custom-autoload (quote fold-dwim-mode) "fold-dwim" nil)

(nxhtml-autoload (quote fold-dwim-mode) "fold-dwim" "\
Key binding for `fold-dwim-toggle'.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote fold-dwim-unhide-hs-and-outline) "fold-dwim" "\
Unhide everything hidden by Hide/Show and Outline.
Ie everything hidden by `hs-minor-mode' and
`outline-minor-mode'.

\(fn)" t nil)

(nxhtml-autoload (quote fold-dwim-turn-on-hs-and-hide) "fold-dwim" "\
Turn on minor mode `hs-minor-mode' and hide.
If major mode is derived from `nxml-mode' call `hs-hide-block'
else call `hs-hide-all'.

\(fn)" t nil)

(nxhtml-autoload (quote fold-dwim-turn-on-outline-and-hide-all) "fold-dwim" "\
Turn on `outline-minor-mode' and call `hide-body'.

\(fn)" t nil)

;;;***

;;;### (autoloads (foldit-global-mode foldit-mode foldit) "foldit"
;;;;;;  "util/foldit.el" (19502 22614))
;;; Generated autoloads from util/foldit.el
(web-autoload-require 'foldit 'lp '(nxhtml-download-root-url nil) "util/foldit" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote foldit) (quote custom-loads)))) (if (member (quote "foldit") loads) nil (put (quote foldit) (quote custom-loads) (cons (quote "foldit") loads))))

(nxhtml-autoload (quote foldit-mode) "foldit" "\
Minor mode providing visual aids for folding.
Shows some hints about what you have hidden and how to reveal it.

Supports `hs-minor-mode', `outline-minor-mode' and major modes
derived from `outline-mode'.

\(fn &optional ARG)" t nil)

(defvar foldit-global-mode nil "\
Non-nil if Foldit-Global mode is enabled.
See the command `foldit-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `foldit-global-mode'.")

(custom-autoload (quote foldit-global-mode) "foldit" nil)

(nxhtml-autoload (quote foldit-global-mode) "foldit" "\
Toggle Foldit mode in every possible buffer.
With prefix ARG, turn Foldit-Global mode on if and only if ARG is positive.
Foldit mode is enabled in all buffers where `(lambda nil (foldit-mode 1))' would do it.
See `foldit-mode' for more information on Foldit mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (gimpedit-can-edit gimpedit-edit-buffer gimpedit-edit-file
;;;;;;  gimpedit) "gimpedit" "util/gimpedit.el" (19502 22614))
;;; Generated autoloads from util/gimpedit.el
(web-autoload-require 'gimpedit 'lp '(nxhtml-download-root-url nil) "util/gimpedit" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote gimpedit) (quote custom-loads)))) (if (member (quote "gimpedit") loads) nil (put (quote gimpedit) (quote custom-loads) (cons (quote "gimpedit") loads))))

(nxhtml-autoload (quote gimpedit-edit-file) "gimpedit" "\
Edit IMAGE-FILE with GIMP.
See also `gimpedit-edit-file'.

\(fn IMAGE-FILE &optional EXTRA-ARGS)" t nil)

(nxhtml-autoload (quote gimpedit-edit-buffer) "gimpedit" "\
Edit image file in current buffer with GIMP.
See also `gimpedit-edit-file'.

You may also be interested in gimpedit-mode with which you can edit
gimp files from within Emacs using GIMP's scripting
possibilities. See

  URL `http://www.emacswiki.org/emacs/GimpMode'

\(fn)" t nil)

(nxhtml-autoload (quote gimpedit-can-edit) "gimpedit" "\
Not documented

\(fn FILE-NAME)" nil nil)

;;;***

;;;### (autoloads (gpl-mode) "gpl" "util/gpl.el" (19502 22614))
;;; Generated autoloads from util/gpl.el
(web-autoload-require 'gpl 'lp '(nxhtml-download-root-url nil) "util/gpl" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote gpl-mode) "gpl" "\
Mode for font-locking and editing color palettes of the GPL format.

Such palettes are used and produced by free software applications
such as the GIMP, Inkscape, Scribus, Agave and on-line tools such
as http://colourlovers.com.

You can also use
URL `http://niels.kicks-ass.org/public/elisp/css-palette.el' to import
such palette into a css-file as hexadecimal color palette.

\(fn)" t nil)

;;;***

;;;### (autoloads (hfyview-frame hfyview-window hfyview-region hfyview-buffer
;;;;;;  hfyview-quick-print-in-files-menu) "hfyview" "util/hfyview.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/hfyview.el
(web-autoload-require 'hfyview 'lp '(nxhtml-download-root-url nil) "util/hfyview" nxhtml-install-dir 'nxhtml-byte-compile-file)


(defvar hfyview-quick-print-in-files-menu nil "\
Add Quick print entries to File menu if non-nil.
If you set this to nil you have to restart Emacs to get rid of
the Quick Print entry.")

(custom-autoload (quote hfyview-quick-print-in-files-menu) "hfyview" nil)

(nxhtml-autoload (quote hfyview-buffer) "hfyview" "\
Convert buffer to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(nxhtml-autoload (quote hfyview-region) "hfyview" "\
Convert region to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(nxhtml-autoload (quote hfyview-window) "hfyview" "\
Convert window to html preserving faces and show in web browser.
With command prefix ARG also show html source in other window.

\(fn ARG)" t nil)

(nxhtml-autoload (quote hfyview-frame) "hfyview" "\
Convert frame to html preserving faces and show in web browser.
Make an XHTML view of the current Emacs frame. Put it in a buffer
named *hfyview-frame* and show that buffer in a web browser.

If WHOLE-BUFFERS is non-nil then the whole content of the buffers
is shown in the XHTML page, otherwise just the part that is
visible currently on the frame.

If you turn on the minor mode `hfyview-frame-mode' you can also
get the minibuffer/echo area in the output. See this mode for
details.

With command prefix also show html source in other window.

\(fn WHOLE-BUFFERS)" t nil)

;;;***

;;;### (autoloads (hl-needed-mode hl-needed) "hl-needed" "util/hl-needed.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/hl-needed.el
(web-autoload-require 'hl-needed 'lp '(nxhtml-download-root-url nil) "util/hl-needed" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote hl-needed) (quote custom-loads)))) (if (member (quote "hl-needed") loads) nil (put (quote hl-needed) (quote custom-loads) (cons (quote "hl-needed") loads))))

(defvar hl-needed-mode nil "\
Non-nil if Hl-Needed mode is enabled.
See the command `hl-needed-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `hl-needed-mode'.")

(custom-autoload (quote hl-needed-mode) "hl-needed" nil)

(nxhtml-autoload (quote hl-needed-mode) "hl-needed" "\
Try to highlight current line and column when needed.
This is a global minor mode.  It can operate in some different
ways:

- Highlighting can be on always, see `hl-needed-always'.

Or, it can be turned on depending on some conditions.  In this
case highlighting is turned off after each command and turned on
again in the current window when either:

- A new window was selected, see `hl-needed-on-new-window'.
- A new buffer was selected, see `hl-needed-on-new-buffer'.
- Window configuration was changed, see `hl-needed-on-config-change'.
- Buffer was scrolled see `hl-needed-on-scrolling'.
- A window was clicked with the mouse, see `hl-needed-on-mouse'.

After this highlighting may be turned off again, normally after a
short delay, see `hl-needed-flash'.

If either highlighting was not turned on or was turned off again
it will be turned on when

- Emacs has been idle for `hl-needed-idle-time' seconds.

See also `hl-needed-not-in-modes' and `hl-needed-currently-fun'.

Note 1: For columns to be highlighted vline.el must be available.

Note 2: This mode depends on `hl-line-mode' and `vline-mode' and
tries to cooperate with them. If you turn on either of these that
overrides the variables for turning on the respective
highlighting here.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (html-chklnk) "html-chklnk" "nxhtml/html-chklnk.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from nxhtml/html-chklnk.el
(web-autoload-require 'html-chklnk 'lp '(nxhtml-download-root-url nil) "nxhtml/html-chklnk" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-chklnk) (quote custom-loads)))) (if (member (quote "html-chklnk") loads) nil (put (quote html-chklnk) (quote custom-loads) (cons (quote "html-chklnk") loads))))

;;;***

;;;### (autoloads (html-pagetoc-rebuild-toc html-pagetoc-insert-toc
;;;;;;  html-pagetoc) "html-pagetoc" "nxhtml/html-pagetoc.el" (19502
;;;;;;  22613))
;;; Generated autoloads from nxhtml/html-pagetoc.el
(web-autoload-require 'html-pagetoc 'lp '(nxhtml-download-root-url nil) "nxhtml/html-pagetoc" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-pagetoc) (quote custom-loads)))) (if (member (quote "html-pagetoc") loads) nil (put (quote html-pagetoc) (quote custom-loads) (cons (quote "html-pagetoc") loads))))

(nxhtml-autoload (quote html-pagetoc-insert-toc) "html-pagetoc" "\
Inserts a table of contents for the current html file.
The html header tags h1-h6 found in the file are inserted into
this table.  MIN-LEVEL and MAX-LEVEL specifies the minimum and
maximum level of h1-h6 to include.  They should be integers.

\(fn &optional MIN-LEVEL MAX-LEVEL)" t nil)

(nxhtml-autoload (quote html-pagetoc-rebuild-toc) "html-pagetoc" "\
Update the table of contents inserted by `html-pagetoc-insert-toc'.

\(fn)" t nil)

(defconst html-pagetoc-menu-map (let ((map (make-sparse-keymap))) (define-key map [html-pagetoc-rebuild-toc] (list (quote menu-item) "Update Page TOC" (quote html-pagetoc-rebuild-toc))) (define-key map [html-pagetoc-insert-style-guide] (list (quote menu-item) "Insert CSS Style for Page TOC" (quote html-pagetoc-insert-style-guide))) (define-key map [html-pagetoc-insert-toc] (list (quote menu-item) "Insert Page TOC" (quote html-pagetoc-insert-toc))) map))

;;;***

;;;### (autoloads (html-site-query-replace html-site-rgrep html-site-find-file
;;;;;;  html-site-dired-current html-site-set-site html-site-buffer-or-dired-file-name
;;;;;;  html-site) "html-site" "nxhtml/html-site.el" (19502 22614))
;;; Generated autoloads from nxhtml/html-site.el
(web-autoload-require 'html-site 'lp '(nxhtml-download-root-url nil) "nxhtml/html-site" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-site) (quote custom-loads)))) (if (member (quote "html-site") loads) nil (put (quote html-site) (quote custom-loads) (cons (quote "html-site") loads))))

(nxhtml-autoload (quote html-site-buffer-or-dired-file-name) "html-site" "\
Return buffer file name or file pointed to in dired.

\(fn)" nil nil)

(nxhtml-autoload (quote html-site-set-site) "html-site" "\
Not documented

\(fn NAME)" t nil)

(nxhtml-autoload (quote html-site-dired-current) "html-site" "\
Open `dired' in current site top directory.

\(fn)" t nil)

(nxhtml-autoload (quote html-site-find-file) "html-site" "\
Find file in current site.

\(fn)" t nil)

(nxhtml-autoload (quote html-site-rgrep) "html-site" "\
Search current site's files with `rgrep'.
See `rgrep' for the arguments REGEXP and FILES.

\(fn REGEXP FILES)" t nil)

(nxhtml-autoload (quote html-site-query-replace) "html-site" "\
Query replace in current site's files.

\(fn FROM TO FILE-REGEXP DELIMITED)" t nil)

;;;***

;;;### (autoloads (html-toc) "html-toc" "nxhtml/html-toc.el" (19502
;;;;;;  22613))
;;; Generated autoloads from nxhtml/html-toc.el
(web-autoload-require 'html-toc 'lp '(nxhtml-download-root-url nil) "nxhtml/html-toc" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-toc) (quote custom-loads)))) (if (member (quote "html-toc") loads) nil (put (quote html-toc) (quote custom-loads) (cons (quote "html-toc") loads))))

(defconst html-toc-menu-map (let ((map (make-sparse-keymap))) (define-key map [html-toc-browse-frames-file] (list (quote menu-item) "Browse Frames File" (quote html-toc-browse-frames-file))) (define-key map [html-toc-write-frames-file] (list (quote menu-item) "Write Frames File" (quote html-toc-write-frames-file))) (define-key map [html-toc-write-toc-file] (list (quote menu-item) "Write TOC File for Frames" (quote html-toc-write-toc-file))) (define-key map [html-toc-sep1] (list (quote menu-item) "--")) (define-key map [html-toc-edit-pages-file] (list (quote menu-item) "Edit List of Pages for TOC" (quote html-site-edit-pages-file))) (define-key map [html-toc-create-pages-file] (list (quote menu-item) "Write List of Pages for TOC" (quote html-toc-create-pages-file))) map))

;;;***

;;;### (autoloads (html-upl-ediff-file html-upl-edit-remote-file-with-toc
;;;;;;  html-upl-edit-remote-file html-upl-upload-file html-upl-remote-dired
;;;;;;  html-upl-upload-site html-upl-upload-site-with-toc html-upl)
;;;;;;  "html-upl" "nxhtml/html-upl.el" (19502 22614))
;;; Generated autoloads from nxhtml/html-upl.el
(web-autoload-require 'html-upl 'lp '(nxhtml-download-root-url nil) "nxhtml/html-upl" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-upl) (quote custom-loads)))) (if (member (quote "html-upl") loads) nil (put (quote html-upl) (quote custom-loads) (cons (quote "html-upl") loads))))

(nxhtml-autoload (quote html-upl-upload-site-with-toc) "html-upl" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote html-upl-upload-site) "html-upl" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote html-upl-remote-dired) "html-upl" "\
Start dired for remote directory or its parent/ancestor.

\(fn DIRNAME)" t nil)

(nxhtml-autoload (quote html-upl-upload-file) "html-upl" "\
Upload a single file in a site.
For the definition of a site see `html-site-current'.

\(fn FILENAME)" t nil)

(nxhtml-autoload (quote html-upl-edit-remote-file) "html-upl" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote html-upl-edit-remote-file-with-toc) "html-upl" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote html-upl-ediff-file) "html-upl" "\
Run ediff on local and remote file.
FILENAME could be either the remote or the local file.

\(fn FILENAME)" t nil)

;;;***

;;;### (autoloads (html-write-mode html-write) "html-write" "util/html-write.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/html-write.el
(web-autoload-require 'html-write 'lp '(nxhtml-download-root-url nil) "util/html-write" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-write) (quote custom-loads)))) (if (member (quote "html-write") loads) nil (put (quote html-write) (quote custom-loads) (cons (quote "html-write") loads))))

(nxhtml-autoload (quote html-write-mode) "html-write" "\
Minor mode for convenient display of some HTML tags.
When this mode is on a tag in `html-write-tag-list' is displayed as
the inner text of the tag with a face corresponding to the tag.
By default for example <i>...</i> is displayed as italic and
<a>...</a> is displayed as an underlined clickable link.

Only non-nested tags are hidden.  The idea is just that it should
be easier to read and write, not that it should look as html
rendered text.

See the customization group `html-write' for more information about
faces.

The following keys are defined when you are on a tag handled by
this minor mode:

\\{html-write-keymap}

IMPORTANT: Most commands you use works also on the text that is
hidden.  The movement commands is an exception, but as soon as
you edit the buffer you may also change the hidden parts.

Hint: Together with `wrap-to-fill-column-mode' this can make it
easier to see what text you are actually writing in html parts of
a web file.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (html-wtoc) "html-wtoc" "nxhtml/html-wtoc.el" (19502
;;;;;;  22613))
;;; Generated autoloads from nxhtml/html-wtoc.el
(web-autoload-require 'html-wtoc 'lp '(nxhtml-download-root-url nil) "nxhtml/html-wtoc" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote html-wtoc) (quote custom-loads)))) (if (member (quote "html-wtoc") loads) nil (put (quote html-wtoc) (quote custom-loads) (cons (quote "html-wtoc") loads))))

;;;***

;;;### (autoloads (inlimg-toggle-slicing inlimg-toggle-display inlimg-global-mode
;;;;;;  inlimg-mode inlimg) "inlimg" "util/inlimg.el" (19502 22614))
;;; Generated autoloads from util/inlimg.el
(web-autoload-require 'inlimg 'lp '(nxhtml-download-root-url nil) "util/inlimg" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote inlimg) (quote custom-loads)))) (if (member (quote "inlimg") loads) nil (put (quote inlimg) (quote custom-loads) (cons (quote "inlimg") loads))))

(nxhtml-autoload (quote inlimg-mode) "inlimg" "\
Display images inline.
Search buffer for image tags.  Display found images.

Image tags are setup per major mode in `inlimg-mode-specs'.

Images are displayed on a line below the tag referencing them.
The whole image or a slice of it may be displayed, see
`inlimg-slice'.  Margins relative text are specified in
`inlimg-margins'.

See also the commands `inlimg-toggle-display' and
`inlimg-toggle-slicing'.

Note: This minor mode uses `font-lock-mode'.

\(fn &optional ARG)" t nil)

(defvar inlimg-global-mode nil "\
Non-nil if Inlimg-Global mode is enabled.
See the command `inlimg-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `inlimg-global-mode'.")

(custom-autoload (quote inlimg-global-mode) "inlimg" nil)

(nxhtml-autoload (quote inlimg-global-mode) "inlimg" "\
Toggle Inlimg mode in every possible buffer.
With prefix ARG, turn Inlimg-Global mode on if and only if ARG is positive.
Inlimg mode is enabled in all buffers where `inlimg--global-turn-on' would do it.
See `inlimg-mode' for more information on Inlimg mode.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote inlimg-toggle-display) "inlimg" "\
Toggle display of image at point POINT.
See also the command `inlimg-mode'.

\(fn POINT)" t nil)

(nxhtml-autoload (quote inlimg-toggle-slicing) "inlimg" "\
Toggle slicing of image at point POINT.
See also the command `inlimg-mode'.

\(fn POINT)" t nil)

;;;***

;;;### (autoloads (iss-mode) "iss-mode" "related/iss-mode.el" (19502
;;;;;;  22614))
;;; Generated autoloads from related/iss-mode.el
(web-autoload-require 'iss-mode 'lp '(nxhtml-download-root-url nil) "related/iss-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote iss-mode) "iss-mode" "\
Major mode for editing InnoSetup script files. Upon startup iss-mode-hook is run.

\(fn)" t nil)

;;;***

;;;### (autoloads (iss-mumamo-mode) "iss-mumamo" "related/iss-mumamo.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from related/iss-mumamo.el
(web-autoload-require 'iss-mumamo 'lp '(nxhtml-download-root-url nil) "related/iss-mumamo" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote iss-mumamo-mode) "iss-mumamo" "\
Turn on multiple major modes Inno Setup .iss files.
The main major mode will be `iss-mode'.
The [code] section, if any, will be in `pascal-mode'." t)

;;;***

;;;### (autoloads (key-cat-help) "key-cat" "util/key-cat.el" (19502
;;;;;;  22614))
;;; Generated autoloads from util/key-cat.el
(web-autoload-require 'key-cat 'lp '(nxhtml-download-root-url nil) "util/key-cat" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote key-cat-help) "key-cat" "\
Display reference sheet style help for common commands.
See also `key-cat-cmd-list'.

\(fn)" t nil)

;;;***

;;;### (autoloads (majmodpri majmodpri-apply-priorities majmodpri-apply
;;;;;;  majmodpri-sort-lists) "majmodpri" "util/majmodpri.el" (19502
;;;;;;  22613))
;;; Generated autoloads from util/majmodpri.el
(web-autoload-require 'majmodpri 'lp '(nxhtml-download-root-url nil) "util/majmodpri" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote majmodpri-sort-lists) "majmodpri" "\
Sort the list used when selecting major mode.
Only sort those lists choosen in `majmodpri-lists-to-sort'.
Sort according to priorities in `majmodpri-mode-priorities'.
Keep the old order in the list otherwise.

The lists can be sorted when loading elisp libraries, see
`majmodpri-sort-after-load'.

See also `majmodpri-apply-priorities'.

\(fn)" t nil)

(nxhtml-autoload (quote majmodpri-apply) "majmodpri" "\
Sort major mode lists and apply to existing buffers.
Note: This function is suitable to add to
`desktop-after-read-hook'. It will restore the multi major modes
in buffers.

\(fn)" nil nil)

(nxhtml-autoload (quote majmodpri-apply-priorities) "majmodpri" "\
Apply major mode priorities.
First run `majmodpri-sort-lists' and then if CHANGE-MODES is
non-nil apply to existing file buffers.  If interactive ask
before applying.

\(fn CHANGE-MODES)" t nil)

(let ((loads (get (quote majmodpri) (quote custom-loads)))) (if (member (quote "majmodpri") loads) nil (put (quote majmodpri) (quote custom-loads) (cons (quote "majmodpri") loads))))

;;;***

;;;### (autoloads (markchars-global-mode markchars-mode markchars)
;;;;;;  "markchars" "util/markchars.el" (19502 22614))
;;; Generated autoloads from util/markchars.el
(web-autoload-require 'markchars 'lp '(nxhtml-download-root-url nil) "util/markchars" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote markchars) (quote custom-loads)))) (if (member (quote "markchars") loads) nil (put (quote markchars) (quote custom-loads) (cons (quote "markchars") loads))))

(nxhtml-autoload (quote markchars-mode) "markchars" "\
Mark special characters.
Which characters to mark are defined by `markchars-keywords'.

The default is to mark non-IDN, non-ascii chars with a magenta
underline.

For information about IDN chars see `idn-is-recommended'.

If you change anything in the customization group `markchars' you
must restart this minor mode for the changes to take effect.

\(fn &optional ARG)" t nil)

(defvar markchars-global-mode nil "\
Non-nil if Markchars-Global mode is enabled.
See the command `markchars-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `markchars-global-mode'.")

(custom-autoload (quote markchars-global-mode) "markchars" nil)

(nxhtml-autoload (quote markchars-global-mode) "markchars" "\
Toggle Markchars mode in every possible buffer.
With prefix ARG, turn Markchars-Global mode on if and only if ARG is positive.
Markchars mode is enabled in all buffers where `(lambda nil (markchars-mode 1))' would do it.
See `markchars-mode' for more information on Markchars mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mlinks-global-mode mlinks-mode mlinks) "mlinks"
;;;;;;  "util/mlinks.el" (19502 22614))
;;; Generated autoloads from util/mlinks.el
(web-autoload-require 'mlinks 'lp '(nxhtml-download-root-url nil) "util/mlinks" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote mlinks) (quote custom-loads)))) (if (member (quote "mlinks") loads) nil (put (quote mlinks) (quote custom-loads) (cons (quote "mlinks") loads))))

(nxhtml-autoload (quote mlinks-mode) "mlinks" "\
Recognizes certain parts of a buffer as hyperlinks.
The hyperlinks are created in different ways for different major
modes with the help of the functions in the list
`mlinks-mode-functions'.

The hyperlinks can be hilighted when point is over them.  Use
`mlinks-toggle-hilight' to toggle this feature for the current
buffer.

All keybindings in this mode are by default done under the prefiÅßx
key

  C-c RET

which is supposed to be a kind of mnemonic for link (alluding to
the RET key commonly used in web browser to follow a link).
\(Unfortunately this breaks the rules in info node `Key Binding
Conventions'.) Below are the key bindings defined by this mode:

\\{mlinks-mode-map}

For some major modes `mlinks-backward-link' and
`mlinks-forward-link' will take you to the previous/next link.
By default the link moved to will be active, see
`mlinks-active-links'.

\(fn &optional ARG)" t nil)

(defvar mlinks-global-mode nil "\
Non-nil if Mlinks-Global mode is enabled.
See the command `mlinks-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `mlinks-global-mode'.")

(custom-autoload (quote mlinks-global-mode) "mlinks" nil)

(nxhtml-autoload (quote mlinks-global-mode) "mlinks" "\
Toggle Mlinks mode in every possible buffer.
With prefix ARG, turn Mlinks-Global mode on if and only if ARG is positive.
Mlinks mode is enabled in all buffers where `mlinks-turn-on-in-buffer' would do it.
See `mlinks-mode' for more information on Mlinks mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (inferior-moz-start-process inferior-moz-stop-process
;;;;;;  inferior-moz-mode moz-minor-mode) "moz" "related/moz.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/moz.el
(web-autoload-require 'moz 'lp '(nxhtml-download-root-url nil) "related/moz" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote moz-minor-mode) "moz" "\
MozRepl minor mode for interaction with Firefox.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

When this minor mode is enabled, some commands become available
to send current code area (as understood by c-mark-function) or
region or buffer to an inferior MozRepl process (which will be
started as needed).

The following keys are bound in this minor mode:

\\{moz-minor-mode-map}

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote inferior-moz-mode) "moz" "\
Major mode for interacting with Firefox via MozRepl.

\(fn)" t nil)

(nxhtml-autoload (quote inferior-moz-stop-process) "moz" "\
Stop what `inferior-moz-start-process' started.

\(fn)" t nil)

(nxhtml-autoload (quote inferior-moz-start-process) "moz" "\
Start an inferior Mozrepl process and connect to Firefox.
If the process is already running stop it first.

Run the hook `inferior-moz-hook' after starting the process and
setting up the inferior Firefox buffer.

Note that you have to start the MozRepl server from Firefox.

\(fn)" t nil)

;;;***

;;;### (autoloads (mozadd-mirror-mode global-mozadd-refresh-edited-on-save-mode
;;;;;;  mozadd-refresh-edited-on-save-mode) "mozadd" "related/mozadd.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/mozadd.el
(web-autoload-require 'mozadd 'lp '(nxhtml-download-root-url nil) "related/mozadd" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote mozadd-refresh-edited-on-save-mode) "mozadd" "\
Refresh mozadd edited file in Firefox when saving file.
The mozadd edited file is the file in the last buffer visited in
`mozadd-mirror-mode'.  If the current buffer is an html file then
this file will be refreshed.

You can use this for example when you edit CSS files.

The mozadd edited file must be shown in Firefox and visible.

\(fn &optional ARG)" t nil)

(defvar global-mozadd-refresh-edited-on-save-mode nil "\
Non-nil if Global-Mozadd-Refresh-Edited-On-Save mode is enabled.
See the command `global-mozadd-refresh-edited-on-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-mozadd-refresh-edited-on-save-mode'.")

(custom-autoload (quote global-mozadd-refresh-edited-on-save-mode) "mozadd" nil)

(nxhtml-autoload (quote global-mozadd-refresh-edited-on-save-mode) "mozadd" "\
Toggle Mozadd-Refresh-Edited-On-Save mode in every possible buffer.
With prefix ARG, turn Global-Mozadd-Refresh-Edited-On-Save mode on if and only if ARG is positive.
Mozadd-Refresh-Edited-On-Save mode is enabled in all buffers where `(lambda nil (when (or (derived-mode-p (quote css-mode)) (mozadd-html-buffer-file-p)) (mozadd-refresh-edited-on-save-mode 1)))' would do it.
See `mozadd-refresh-edited-on-save-mode' for more information on Mozadd-Refresh-Edited-On-Save mode.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote mozadd-mirror-mode) "mozadd" "\
Mirror content of current file buffer in Firefox.
When you turn on this mode the html file you are editing will be
opened in Firefox.
\\<mozadd-mirror-mode-map>
Updating of Firefox is made when the buffer is saved and can be
made any time with \\[mozadd-update-mozilla].

This can be done also during `isearch-mode' and from
`re-builder'.  Tags containing matches are then shown as CSS
outlines in Firefox.  To show submatches instead use
\\[mozadd-set-outline-regexp-submatch-num].

The style for the outlines is `mozadd-matches-outline-style'.

If `nxml-where-mode' is on its marks will also be shown in
Firefox as CSS outline style.  These outlines have the style
`mozadd-xml-path-outline-style'.

If you are editing a file from a web URL you may want to add a
<base href=... /> tag to get the page looking better in Firefox.
You can add that with the command \\[mozadd-add-href-base].

When updating Firefox the hook `mozadd-send-buffer-hook' is run
first.  (This adds the CSS outlines above.)

Updating Firefox can also be done automatically.  In this case
every change you make in the buffer will trigger a redraw (after
a short delay) in Firefox - regardless of if you save the file or
not.  This is maybe slow currently.  However to turn this on use
`mozadd-auto-update-mirror-mode'.

This mode also turn on `mozadd-refresh-edited-on-save-mode'.
Note that the latter can be used when you edit CSS files to
update Firefox when you save the CSS file.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mumamo-multi-major-modep mumamo-guess-multi-major
;;;;;;  mumamo-list-defined-multi-major-modes mumamo-mark-for-refontification
;;;;;;  mumamo-hi-lock-faces mumamo mumamo-add-to-defined-multi-major-modes
;;;;;;  define-mumamo-multi-major-mode) "mumamo" "util/mumamo.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from util/mumamo.el
(web-autoload-require 'mumamo 'lp '(nxhtml-download-root-url nil) "util/mumamo" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote define-mumamo-multi-major-mode) "mumamo" "\
Define a function that turn on support for multiple major modes.
Define a function FUN-SYM that set up to divide the current
buffer into chunks with different major modes.

The documentation string for FUN-SYM should contain the special
documentation in the string SPEC-DOC, general documentation for
functions of this type and information about chunks.

The new function will use the definitions in CHUNKS (which is
called a \"chunk family\") to make the dividing of the buffer.

The function FUN-SYM can be used to setup a buffer instead of a
major mode function:

- The function FUN-SYM can be called instead of calling a major
  mode function when you want to use multiple major modes in a
  buffer.

- The defined function can be used instead of a major mode
  function in for example `auto-mode-alist'.

- As the very last thing FUN-SYM will run the hook FUN-SYM-hook,
  just as major modes do.

- There is also a general hook, `mumamo-turn-on-hook', which is
  run when turning on mumamo with any of these functions.  This
  is run right before the hook specific to any of the functions
  above that turns on the multiple major mode support.

- The multi major mode FUN-SYM has a keymap named FUN-SYM-map.
  This overrides the major modes' keymaps since it is handled as
  a minor mode keymap.

- There is also a special mumamo keymap, `mumamo-map' that is
  active in every buffer with a multi major mode.  This is also
  handled as a minor mode keymap and therefor overrides the major
  modes' keymaps.

- However when this support for multiple major mode is on the
  buffer is divided into chunks, each with its own major mode.

- The chunks are fontified according the major mode assigned to
  them for that.

- Indenting is also done according to the major mode assigned to
  them for that.

- The actual major mode used in the buffer is changed to the one
  in the chunk when moving point between these chunks.

- When major mode is changed the hooks for the new major mode,
  `after-change-major-mode-hook' and `change-major-mode-hook' are
  run.

- There will be an alias for FUN-SYM called mumamo-alias-FUN-SYM.
  This can be used to check whic multi major modes have been
  defined.

** A little bit more technical description:

The name of the function is saved in in the buffer local variable
`mumamo-multi-major-mode' when the function is called.

All functions defined by this macro is added to the list
`mumamo-defined-multi-major-modes'.

Basically Mumamo handles only major modes that uses jit-lock.
However as a special effort also `nxml-mode' and derivatives
thereof are handled.  Since it seems impossible to me to restrict
those major modes fontification to only a chunk without changing
`nxml-mode' the fontification is instead done by
`html-mode'/`sgml-mode' for chunks using `nxml-mode' and its
derivates.

CHUNKS is a list where each entry have the format

  (CHUNK-DEF-NAME MAIN-MAJOR-MODE SUBMODE-CHUNK-FUNCTIONS)

CHUNK-DEF-NAME is the key name by which the entry is recognized.
MAIN-MAJOR-MODE is the major mode used when there is no chunks.
If this is nil then `major-mode' before turning on this mode will
be used.

SUBMODE-CHUNK-FUNCTIONS is a list of the functions that does the
chunk division of the buffer.  They are tried in the order they
appear here during the chunk division process.

If you want to write new functions for chunk divisions then
please see `mumamo-possible-chunk-forward'.  You can perhaps also
use `mumamo-quick-chunk-forward' which is more easy-to-use
alternative.  See also the file mumamo-chunks.el where there are
many routines for chunk division and the file mumamo-fun where
many multi major modes are defined.

When you write those new functions you may want to use some of
the functions for testing chunks in the file

   `nxhtml/tests/mumamo-test.el'

\(fn FUN-SYM SPEC-DOC CHUNKS)" nil (quote macro))

(nxhtml-autoload (quote mumamo-add-to-defined-multi-major-modes) "mumamo" "\
Not documented

\(fn ENTRY)" nil nil)

(let ((loads (get (quote mumamo) (quote custom-loads)))) (if (member (quote "mumamo") loads) nil (put (quote mumamo) (quote custom-loads) (cons (quote "mumamo") loads))))

(let ((loads (get (quote mumamo-hi-lock-faces) (quote custom-loads)))) (if (member (quote "mumamo") loads) nil (put (quote mumamo-hi-lock-faces) (quote custom-loads) (cons (quote "mumamo") loads))))

(nxhtml-autoload (quote mumamo-mark-for-refontification) "mumamo" "\
Mark region between MIN and MAX for refontification.

\(fn MIN MAX)" nil nil)

(nxhtml-autoload (quote mumamo-list-defined-multi-major-modes) "mumamo" "\
List currently defined multi major modes.
If SHOW-DOC is non-nil show the doc strings added when defining
them. (This is not the full doc string. To show the full doc
string you can click on the multi major mode in the list.)

If SHOW-CHUNKS is non-nil show the names of the chunk dividing
functions each multi major mode uses.

If MATCH then show only multi major modes whos names matches.

See also `mumamo-guess-multi-major'.

\(fn SHOW-DOC SHOW-CHUNKS MATCH)" t nil)

(nxhtml-autoload (quote mumamo-guess-multi-major) "mumamo" "\
Find and apply a multi major mode fitting current buffer.
Choose from a list of multi major modes which chunk dividing routines
seems to be able to find chunks in the current buffer.

If REGEXP is given limit the choice to multi major mode with
names matching REGEXP.  Interactively prompt for REGEXP.

See also `mumamo-list-defined-multi-major-modes'.

\(fn REGEXP)" t nil)

(nxhtml-autoload (quote mumamo-multi-major-modep) "mumamo" "\
Return t if VALUE is a multi major mode function.

\(fn VALUE)" nil nil)

;;;***

;;;### (autoloads (mumamo-noweb2 mumamo-define-html-file-wide-keys)
;;;;;;  "mumamo-chunks" "util/mumamo-chunks.el" (19502 22614))
;;; Generated autoloads from util/mumamo-chunks.el
(web-autoload-require 'mumamo-chunks 'lp '(nxhtml-download-root-url nil) "util/mumamo-chunks" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote mumamo-define-html-file-wide-keys) "mumamo-chunks" "\
Define keys in multi major mode keymap for html files.

\(fn)" nil nil)

(let ((loads (get (quote mumamo-noweb2) (quote custom-loads)))) (if (member (quote "mumamo-chunks") loads) nil (put (quote mumamo-noweb2) (quote custom-loads) (cons (quote "mumamo-chunks") loads))))

;;;***

;;;### (autoloads (mumamo-cmirr-get-mirror) "mumamo-cmirr" "util/mumamo-cmirr.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/mumamo-cmirr.el
(web-autoload-require 'mumamo-cmirr 'lp '(nxhtml-download-root-url nil) "util/mumamo-cmirr" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote mumamo-cmirr-get-mirror) "mumamo-cmirr" "\
Get the mirror rec.

\(fn MAJOR FOR-BUFFER)" nil nil)

;;;***

;;;### (autoloads (amrita-mumamo-mode python-rst-mumamo-mode latex-haskell-mumamo-mode
;;;;;;  latex-clojure-mumamo-mode markdown-html-mumamo-mode xsl-sgml-mumamo-mode
;;;;;;  xsl-nxml-mumamo-mode mako-html-mumamo-mode org-mumamo-mode
;;;;;;  asp-html-mumamo-mode noweb2-mumamo-mode csound-sgml-mumamo-mode
;;;;;;  laszlo-nxml-mumamo-mode metapost-mumamo-mode ruby-heredoc-mumamo-mode
;;;;;;  python-heredoc-mumamo-mode cperl-heredoc-mumamo-mode perl-heredoc-mumamo-mode
;;;;;;  php-heredoc-mumamo-mode sh-heredoc-mumamo-mode eruby-javascript-mumamo-mode
;;;;;;  eruby-html-mumamo-mode jsp-html-mumamo-mode gsp-html-mumamo-mode
;;;;;;  ssjs-html-mumamo-mode smarty-html-mumamo-mode mjt-html-mumamo-mode
;;;;;;  genshi-html-mumamo-mode django-html-mumamo-mode embperl-html-mumamo-mode
;;;;;;  mason-html-mumamo-mode nxml-mumamo-mode html-mumamo-mode)
;;;;;;  "mumamo-fun" "util/mumamo-fun.el" (19502 22614))
;;; Generated autoloads from util/mumamo-fun.el
(web-autoload-require 'mumamo-fun 'lp '(nxhtml-download-root-url nil) "util/mumamo-fun" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for (X)HTML with main mode `html-mode'.
This covers inlined style and javascript and PHP." t)

(nxhtml-autoload (quote nxml-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for (X)HTML with main mode `nxml-mode'.
This covers inlined style and javascript and PHP.

See also `mumamo-alt-php-tags-mode'." t)

(nxhtml-autoload (quote mason-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Mason using main mode `html-mode'.
This covers inlined style and javascript." t)

(nxhtml-autoload (quote embperl-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Embperl files with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote django-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Django with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote genshi-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Genshi with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote mjt-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for MJT with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote smarty-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Smarty with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote ssjs-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for SSJS with main mode `html-mode'.
This covers inlined style and javascript." t)

(nxhtml-autoload (quote gsp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for GSP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote jsp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for JSP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote eruby-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for eRuby with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote eruby-javascript-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for eRuby with main mode `javascript-mode'." t)

(nxhtml-autoload (quote sh-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for sh heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote php-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for PHP heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote perl-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote cperl-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote python-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Perl heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote ruby-heredoc-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Ruby heredoc document.
See `mumamo-heredoc-modes' for how to specify heredoc major modes." t)

(nxhtml-autoload (quote metapost-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for MetaPost." t)

(nxhtml-autoload (quote laszlo-nxml-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for OpenLaszlo." t)

(nxhtml-autoload (quote csound-sgml-mumamo-mode) "mumamo-fun" "\
Turn on mutiple major modes for CSound orc/sco Modes." t)

(nxhtml-autoload (quote noweb2-mumamo-mode) "mumamo-fun" "\
Multi major mode for noweb files." t)

(nxhtml-autoload (quote asp-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for ASP with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote org-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for `org-mode' files with main mode `org-mode'.
** Note about HTML subchunks:
Unfortunately this only allows `html-mode' (not `nxhtml-mode') in
sub chunks." t)

(nxhtml-autoload (quote mako-html-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Mako with main mode `html-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote xsl-nxml-mumamo-mode) "mumamo-fun" "\
Turn on multi major mode for XSL with main mode `nxml-mode'.
This covers inlined style and javascript." t)

(nxhtml-autoload (quote xsl-sgml-mumamo-mode) "mumamo-fun" "\
Turn on multi major mode for XSL with main mode `sgml-mode'.
This covers inlined style and javascript." t)

(nxhtml-autoload (quote markdown-html-mumamo-mode) "mumamo-fun" "\
Turn on multi major markdown mode in buffer.
Main major mode will be `markdown-mode'.
Inlined html will be in `html-mode'.

You need `markdown-mode' which you can download from URL
`http://jblevins.org/projects/markdown-mode/'." t)

(nxhtml-autoload (quote latex-clojure-mumamo-mode) "mumamo-fun" "\
Turn on multi major mode latex+clojure.
Main major mode will be `latex-mode'.
Subchunks will be in `clojure-mode'.

You will need `clojure-mode' which you can download from URL
`http://github.com/jochu/clojure-mode/tree'." t)

(nxhtml-autoload (quote latex-haskell-mumamo-mode) "mumamo-fun" "\
Turn on multi major mode latex+haskell.
Main major mode will be `latex-mode'.
Subchunks will be in `haskell-mode'.

You will need `haskell-mode' which you can download from URL
`http://projects.haskell.org/haskellmode-emacs/'." t)

(nxhtml-autoload (quote python-rst-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Python with RestructuredText docstrings." t)

(nxhtml-autoload (quote amrita-mumamo-mode) "mumamo-fun" "\
Turn on multiple major modes for Amrita.
Fix-me: This does not yet take care of inner chunks." t)

;;;***

;;;### (autoloads (mumamo-add-region-from-string mumamo-add-region)
;;;;;;  "mumamo-regions" "util/mumamo-regions.el" (19502 22614))
;;; Generated autoloads from util/mumamo-regions.el
(web-autoload-require 'mumamo-regions 'lp '(nxhtml-download-root-url nil) "util/mumamo-regions" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote mumamo-add-region) "mumamo-regions" "\
Add a mumamo region from selection.
Mumamo regions are like another layer of chunks above the normal chunks.
They does not affect the normal chunks, but they overrides them.

To create a mumamo region first select a visible region and then
call this function.

If the buffer is not in a multi major mode a temporary multi
major mode will be created applied to the buffer first.
To get out of this and get back to a single major mode just use

  M-x normal-mode

\(fn)" t nil)

(nxhtml-autoload (quote mumamo-add-region-from-string) "mumamo-regions" "\
Add a mumamo region from string at point.
Works as `mumamo-add-region' but for string or comment at point.

Buffer must be fontified.

\(fn)" t nil)

;;;***

;;;### (autoloads (n-back-game n-back) "n-back" "util/n-back.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from util/n-back.el
(web-autoload-require 'n-back 'lp '(nxhtml-download-root-url nil) "util/n-back" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote n-back) (quote custom-loads)))) (if (member (quote "n-back") loads) nil (put (quote n-back) (quote custom-loads) (cons (quote "n-back") loads))))

(nxhtml-autoload (quote n-back-game) "n-back" "\
Emacs n-Back game.
This game is supposed to increase your working memory and fluid
intelligence.

In this game something is shown for half a second on the screen
and maybe a sound is played.  You should then answer if parts of
it is the same as you have seen or heard before.  This is
repeated for about 20 trials.

You answer with the keys shown in the bottom window.

In the easiest version of the game you should answer if you have
just seen or heard what is shown now.  By default the game gets
harder as you play it with success.  Then first the number of
items presented in a trial grows.  After that it gets harder by
that you have to somehow remember not the last item, but the item
before that (or even earlier). That is what \"n-Back\" stands
for.

Note that remember does not really mean remember clearly.  The
game is for training your brain getting used to keep those things
in the working memory, maybe as a cross-modal unit.  You are
supposed to just nearly be able to do what you do in the game.
And you are supposed to have fun, that is what your brain like.

You should probably not overdue this. Half an hour a day playing
might be an optimal time according to some people.

The game is shamelessly modeled after Brain Workshop, see URL
`http://brainworkshop.sourceforge.net/' just for the fun of
getting it into Emacs.  The game resembles but it not the same as
that used in the report by Jaeggi mentioned at the above URL.

Not all features in Brain Workshop are implemented here, but some
new are maybe ... - and you have it available here in Emacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-features-check nxhtml-customize nxhtml)
;;;;;;  "nxhtml" "nxhtml/nxhtml.el" (19502 22614))
;;; Generated autoloads from nxhtml/nxhtml.el
(web-autoload-require 'nxhtml 'lp '(nxhtml-download-root-url nil) "nxhtml/nxhtml" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote nxhtml) (quote custom-loads)))) (if (member (quote "nxhtml") loads) nil (put (quote nxhtml) (quote custom-loads) (cons (quote "nxhtml") loads))))

(nxhtml-autoload (quote nxhtml-customize) "nxhtml" "\
Customize nXhtml.

\(fn)" t nil)

(nxhtml-autoload (quote nxhtml-features-check) "nxhtml" "\
Check if external modules used by nXhtml are found.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-report-bug) "nxhtml-bug" "nxhtml/nxhtml-bug.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from nxhtml/nxhtml-bug.el
(web-autoload-require 'nxhtml-bug 'lp '(nxhtml-download-root-url nil) "nxhtml/nxhtml-bug" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtml-report-bug) "nxhtml-bug" "\
Report a bug in nXhtml.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-overview nxhtml-menu-mode nxhtml-browse-region
;;;;;;  nxhtml-browse-file nxhtml-edit-with-gimp mumamo-switch-to-other-html)
;;;;;;  "nxhtml-menu" "nxhtml/nxhtml-menu.el" (19502 22614))
;;; Generated autoloads from nxhtml/nxhtml-menu.el
(web-autoload-require 'nxhtml-menu 'lp '(nxhtml-download-root-url nil) "nxhtml/nxhtml-menu" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote mumamo-switch-to-other-html) "nxhtml-menu" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote nxhtml-edit-with-gimp) "nxhtml-menu" "\
Edit with GIMP buffer or file at point.

\(fn)" t nil)

(nxhtml-autoload (quote nxhtml-browse-file) "nxhtml-menu" "\
View file in web browser.

\(fn FILE)" t nil)

(nxhtml-autoload (quote nxhtml-browse-region) "nxhtml-menu" "\
View region in web browser.

\(fn)" t nil)

(defvar nxhtml-menu-mode nil "\
Non-nil if Nxhtml-Menu mode is enabled.
See the command `nxhtml-menu-mode' for a description of this minor mode.")

(custom-autoload (quote nxhtml-menu-mode) "nxhtml-menu" nil)

(nxhtml-autoload (quote nxhtml-menu-mode) "nxhtml-menu" "\
Minor mode to turn on some key and menu bindings.
See `nxhtml-mode' for more information.

This minor mode adds the entry 'nXhtml' to the menu bar.  This
submenu gives easy access to most of the important features of
nXhtml.  (Some of them are not specific to nXhtml, but nXhtml
contains enhancement of existing features, like `flyspell-mode'.)

This minor mode also adds some bindings:

\\{nxhtml-menu-mode-map}

---------
* Note: Some of the features supported are optional and available
  only if other Emacs modules are found.  Use
  \\[nxhtml-features-check] to get a list of these optional
  features and modules needed. You should however have no problem
  with this if you have followed the installation instructions
  for nXhtml.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote nxhtml-overview) "nxhtml-menu" "\
Show a HTML page with an overview of nXhtml.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtml-validation-header-mode nxhtml-short-tag-help
;;;;;;  nxhtml-mode) "nxhtml-mode" "nxhtml/nxhtml-mode.el" (19502
;;;;;;  22614))
;;; Generated autoloads from nxhtml/nxhtml-mode.el
(web-autoload-require 'nxhtml-mode 'lp '(nxhtml-download-root-url nil) "nxhtml/nxhtml-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(when (fboundp 'nxml-mode)
(nxhtml-autoload (quote nxhtml-mode) "nxhtml-mode" "\
Major mode for editing XHTML documents.
It is based on `nxml-mode' and adds some features that are useful
when editing XHTML files.\\<nxhtml-mode-map>

The XML menu contains functionality added by `nxml-mode' (on
which this major mode is based).  There is also a popup menu
added to the [apps] key.

The most important features are probably completion and
validation, which is inherited from `nxml-mode' with some small
addtions.  In very many situation you can use completion. To
access it type \\[nxml-complete]. Completion has been enhanced in
the following way:

- If region is active and visible then completion will surround the
  region with the chosen tag's start and end tag.  However only the
  starting point is checked for validity. If something is wrong after
  insertion you will however immediately see it if you have validation
  on.
- It can in some cases give assistance with attribute values.
- Completion can be customized, see the menus XHTML - Completion:
  * You can use a menu popup style completion.
  * You can have alternatives grouped.
  * You can get a short help text shown for each alternative.
- There does not have to be a '<' before point for tag name
  completion. (`nxml-mode' requires a '<' before point for tag name
  completion.)
- Completes xml version and encoding.
- Completes in an empty buffer, ie inserts a skeleton.

Here are all key bindings in nxhtml-mode itself:

\\{nxhtml-mode-map}

Notice that other minor mode key bindings may also be active, as
well as emulation modes. Do \\[describe-bindings] to get a list
of all active key bindings. Also, *VERY IMPORTANT*, if mumamo is
used in the buffer each mumamo chunk has a different major mode
with different key bindings. You can however still see all
bindings with \\[describe-bindings], but you have to do that with
point in the mumamo chunk you want to know the key bindings in.

\(fn)" t nil))

(nxhtml-autoload (quote nxhtml-short-tag-help) "nxhtml-mode" "\
Display description of tag TAG.  If TAG is omitted, try tag at point.

\(fn TAG)" t nil)

(when (fboundp 'nxml-mode)
(nxhtml-autoload (quote nxhtml-validation-header-mode) "nxhtml-mode" "\
If on use a Fictive XHTML Validation Header for the buffer.
See `nxhtml-set-validation-header' for information about Fictive XHTML Validation Headers.

This mode may be turned on automatically in two ways:
- If you try to do completion of a XHTML tag or attribute then
  `nxthml-mode' may ask you if you want to turn this mode on if
  needed.
- You can also choose to have it turned on automatically whenever
  a mumamo multi major mode is used, see
  `nxhtml-validation-header-if-mumamo' for further information.

\(fn &optional ARG)" t nil))

;;;***

;;;### (autoloads (mako-nxhtml-mumamo-mode asp-nxhtml-mumamo-mode
;;;;;;  eruby-nxhtml-mumamo-mode jsp-nxhtml-mumamo-mode gsp-nxhtml-mumamo-mode
;;;;;;  smarty-nxhtml-mumamo-mode mjt-nxhtml-mumamo-mode genshi-nxhtml-mumamo-mode
;;;;;;  mason-nxhtml-mumamo-mode django-nxhtml-mumamo-mode embperl-nxhtml-mumamo-mode
;;;;;;  nxhtml-mumamo-mode) "nxhtml-mumamo" "nxhtml/nxhtml-mumamo.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from nxhtml/nxhtml-mumamo.el
(web-autoload-require 'nxhtml-mumamo 'lp '(nxhtml-download-root-url nil) "nxhtml/nxhtml-mumamo" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for (X)HTML with main mode `nxhtml-mode'.
This covers inlined style and javascript and PHP.

See also `mumamo-alt-php-tags-mode'." t)

(nxhtml-autoload (quote embperl-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Embperl files with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote django-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Django with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote mason-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Mason using main mode `nxhtml-mode'.
This covers inlined style and javascript." t)

(nxhtml-autoload (quote genshi-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Genshi with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote mjt-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for MJT with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote smarty-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Smarty with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote gsp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for GSP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote jsp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for JSP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote eruby-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for eRuby with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote asp-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for ASP with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

(nxhtml-autoload (quote mako-nxhtml-mumamo-mode) "nxhtml-mumamo" "\
Turn on multiple major modes for Mako with main mode `nxhtml-mode'.
This also covers inlined style and javascript." t)

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-byte-recompile
;;;;;;  nxhtmlmaint-start-byte-compilation) "nxhtmlmaint" "nxhtmlmaint.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from nxhtmlmaint.el
(web-autoload-require 'nxhtmlmaint 'lp '(nxhtml-download-root-url nil) "nxhtmlmaint" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtmlmaint-start-byte-compilation) "nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

See also `nxhtmlmaint-byte-recompile'

\(fn)" t nil)

(nxhtml-autoload (quote nxhtmlmaint-byte-recompile) "nxhtmlmaint" "\
Recompile or compile all nXhtml files in current Emacs.
Byte compile all elisp libraries whose .el files are newer their
.elc files.

\(fn)" t nil)

(nxhtml-autoload (quote nxhtmlmaint-byte-uncompile-all) "nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtmltest-run-Q) "nxhtmltest-Q" "tests/nxhtmltest-Q.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from tests/nxhtmltest-Q.el
(web-autoload-require 'nxhtmltest-Q 'lp '(nxhtml-download-root-url nil) "tests/nxhtmltest-Q" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtmltest-run-Q) "nxhtmltest-Q" "\
Run all tests defined for nXhtml in fresh Emacs.
See `nxhtmltest-run' for more information about the tests.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxhtmltest-run nxhtmltest-run-indent) "nxhtmltest-suites"
;;;;;;  "tests/nxhtmltest-suites.el" (19502 22614))
;;; Generated autoloads from tests/nxhtmltest-suites.el
(web-autoload-require 'nxhtmltest-suites 'lp '(nxhtml-download-root-url nil) "tests/nxhtmltest-suites" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtmltest-run-indent) "nxhtmltest-suites" "\
Run indentation tests.

\(fn)" t nil)

(nxhtml-autoload (quote nxhtmltest-run) "nxhtmltest-suites" "\
Run all tests defined for nXhtml.
Currently there are only tests using ert.el defined.

Note that it is currently expected that the following tests will
fail (they corresponds to known errors in nXhtml/Emacs):

  `nxhtml-ert-nxhtml-changes-jump-back-10549'
  `nxhtml-ert-nxhtml-changes-jump-back-7014'

\(fn)" t nil)

;;;***

;;;### (autoloads (rng-find-schema-file-other-window rng-find-schema-file-other-frame
;;;;;;  rng-find-schema-file) "nxml-mode-os-additions" "util/nxml-mode-os-additions.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/nxml-mode-os-additions.el
(web-autoload-require 'nxml-mode-os-additions 'lp '(nxhtml-download-root-url nil) "util/nxml-mode-os-additions" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote rng-find-schema-file) "nxml-mode-os-additions" "\
Edit the current schema file.

\(fn)" t nil)

(nxhtml-autoload (quote rng-find-schema-file-other-frame) "nxml-mode-os-additions" "\
Edit the current schema in another frame.

\(fn)" t nil)

(nxhtml-autoload (quote rng-find-schema-file-other-window) "nxml-mode-os-additions" "\
Edit the current schema in another window.

\(fn)" t nil)

;;;***

;;;### (autoloads (nxml-where-global-mode nxml-where-mode nxml-where)
;;;;;;  "nxml-where" "nxhtml/nxml-where.el" (19502 22614))
;;; Generated autoloads from nxhtml/nxml-where.el
(web-autoload-require 'nxml-where 'lp '(nxhtml-download-root-url nil) "nxhtml/nxml-where" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote nxml-where) (quote custom-loads)))) (if (member (quote "nxml-where") loads) nil (put (quote nxml-where) (quote custom-loads) (cons (quote "nxml-where") loads))))

(nxhtml-autoload (quote nxml-where-mode) "nxml-where" "\
Shows path in header line.

\(fn &optional ARG)" t nil)

(defvar nxml-where-global-mode nil "\
Non-nil if Nxml-Where-Global mode is enabled.
See the command `nxml-where-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `nxml-where-global-mode'.")

(custom-autoload (quote nxml-where-global-mode) "nxml-where" nil)

(nxhtml-autoload (quote nxml-where-global-mode) "nxml-where" "\
Toggle Nxml-Where mode in every possible buffer.
With prefix ARG, turn Nxml-Where-Global mode on if and only if ARG is positive.
Nxml-Where mode is enabled in all buffers where `nxml-where-turn-on-in-nxml-child' would do it.
See `nxml-where-mode' for more information on Nxml-Where mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ocr-user-mode) "ocr-user" "util/ocr-user.el" (19502
;;;;;;  22614))
;;; Generated autoloads from util/ocr-user.el
(web-autoload-require 'ocr-user 'lp '(nxhtml-download-root-url nil) "util/ocr-user" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote ocr-user-mode) "ocr-user" "\
Color up digits three by three.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ourcomments-warning ourcomments-M-x-menu-mode
;;;;;;  ourcomments-paste-with-convert-mode use-custom-style info-open-file
;;;;;;  replace-read-files rdir-query-replace ldir-query-replace
;;;;;;  grep-query-replace emacs-Q-nxhtml emacs-Q emacs--no-desktop
;;;;;;  emacs--debug-init emacs-buffer-file emacs emacs-restart ourcomments-ido-ctrl-tab
;;;;;;  ourcomments-ido-buffer-raise-frame ourcomments-ido-buffer-other-frame
;;;;;;  ourcomments-ido-buffer-other-window describe-symbol describe-defstruct
;;;;;;  describe-custom-group widen-to-comments-above narrow-to-defun+comments-above
;;;;;;  narrow-to-comment buffer-narrowed-p describe-command ourcomments-ediff-files
;;;;;;  find-emacs-other-file ediff-emacs-other-file ourcomments-insert-date-and-time
;;;;;;  describe-timers ourcomments-copy+paste-set-point better-fringes-mode
;;;;;;  describe-key-and-map-briefly ourcomments-move-end-of-line
;;;;;;  ourcomments-move-beginning-of-line major-modep major-or-multi-majorp
;;;;;;  ourcomments-mark-whole-buffer-or-field fill-dwim unfill-individual-paragraphs
;;;;;;  unfill-region unfill-paragraph define-toggle-old define-toggle
;;;;;;  popup-menu-at-point ourcomments-indirect-fun) "ourcomments-util"
;;;;;;  "util/ourcomments-util.el" (19502 22614))
;;; Generated autoloads from util/ourcomments-util.el
(web-autoload-require 'ourcomments-util 'lp '(nxhtml-download-root-url nil) "util/ourcomments-util" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote ourcomments-indirect-fun) "ourcomments-util" "\
Get the alias symbol for function FUN if any.

\(fn FUN)" nil nil)

(nxhtml-autoload (quote popup-menu-at-point) "ourcomments-util" "\
Popup the given menu at point.
This is similar to `popup-menu' and MENU and PREFIX has the same
meaning as there.  The position for the popup is however where
the window point is.

\(fn MENU &optional PREFIX)" nil nil)

(nxhtml-autoload (quote define-toggle) "ourcomments-util" "\
Declare SYMBOL as a customizable variable with a toggle function.
The purpose of this macro is to define a defcustom and a toggle
function suitable for use in a menu.

The arguments have the same meaning as for `defcustom' with these
restrictions:

- The :type keyword cannot be used.  Type is always 'boolean.
- VALUE must be t or nil.

DOC and ARGS are just passed to `defcustom'.

A `defcustom' named SYMBOL with doc-string DOC and a function
named SYMBOL-toggle is defined.  The function toggles the value
of SYMBOL.  It takes no parameters.

To create a menu item something similar to this can be used:

    (define-key map [SYMBOL]
      (list 'menu-item \"Toggle nice SYMBOL\"
            'SYMBOL-toggle
            :button '(:toggle . SYMBOL)))

\(fn SYMBOL VALUE DOC &rest ARGS)" nil (quote macro))

(nxhtml-autoload (quote define-toggle-old) "ourcomments-util" "\
Not documented

\(fn SYMBOL VALUE DOC &rest ARGS)" nil (quote macro))

(nxhtml-autoload (quote unfill-paragraph) "ourcomments-util" "\
Unfill the current paragraph.

\(fn)" t nil)

(nxhtml-autoload (quote unfill-region) "ourcomments-util" "\
Unfill the current region.

\(fn)" t nil)

(nxhtml-autoload (quote unfill-individual-paragraphs) "ourcomments-util" "\
Unfill individual paragraphs in the current region.

\(fn)" t nil)

(nxhtml-autoload (quote fill-dwim) "ourcomments-util" "\
Fill or unfill paragraph or region.
With prefix ARG fill only current line.

\(fn ARG)" t nil)

(nxhtml-autoload (quote ourcomments-mark-whole-buffer-or-field) "ourcomments-util" "\
Mark whole buffer or editable field at point.

\(fn)" t nil)

(nxhtml-autoload (quote major-or-multi-majorp) "ourcomments-util" "\
Return t if VALUE is a major or multi major mode function.

\(fn VALUE)" nil nil)

(nxhtml-autoload (quote major-modep) "ourcomments-util" "\
Return t if VALUE is a major mode function.

\(fn VALUE)" nil nil)

(nxhtml-autoload (quote ourcomments-move-beginning-of-line) "ourcomments-util" "\
Move point to beginning of line or indentation.
See `beginning-of-line' for ARG.

If `line-move-visual' is non-nil then the visual line beginning
is first tried.

If in a widget field stay in that.

\(fn ARG)" t nil)

(nxhtml-autoload (quote ourcomments-move-end-of-line) "ourcomments-util" "\
Move point to end of line or after last non blank char.
See `end-of-line' for ARG.

Similar to `ourcomments-move-beginning-of-line' but for end of
line.

\(fn ARG)" t nil)

(nxhtml-autoload (quote describe-key-and-map-briefly) "ourcomments-util" "\
Try to print names of keymap from which KEY fetch its definition.
Look in current active keymaps and find keymap variables with the
same value as the keymap where KEY is bound.  Print a message
with those keymap variable names.  Return a list with the keymap
variable symbols.

When called interactively prompt for KEY.

INSERT and UNTRANSLATED should normall be nil (and I am not sure
what they will do ;-).

\(fn &optional KEY INSERT UNTRANSLATED)" t nil)

(defvar better-fringes-mode nil "\
Non-nil if Better-Fringes mode is enabled.
See the command `better-fringes-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `better-fringes-mode'.")

(custom-autoload (quote better-fringes-mode) "ourcomments-util" nil)

(nxhtml-autoload (quote better-fringes-mode) "ourcomments-util" "\
Choose another fringe bitmap color and bottom angle.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote ourcomments-copy+paste-set-point) "ourcomments-util" "\
Set point for copy+paste here.
Enable temporary minor mode `ourcomments-copy+paste-mode'.
However if point for copy+paste already is set then cancel it and
disable the minor mode.

The purpose of this command is to make it easy to grab a piece of
text and paste it at current position.  After this command you
should select a piece of text to copy and then call the command
`ourcomments-copy+paste'.

\(fn)" t nil)

(nxhtml-autoload (quote describe-timers) "ourcomments-util" "\
Show timers with readable time format.

\(fn)" t nil)

(nxhtml-autoload (quote ourcomments-insert-date-and-time) "ourcomments-util" "\
Insert date and time.
See option `ourcomments-insert-date-and-time' for how to
customize it.

\(fn)" t nil)

(nxhtml-autoload (quote ediff-emacs-other-file) "ourcomments-util" "\
Ediff installed and source Emacs lisp file.
Works like `find-emacs-other-file' but also starts ediff.

\(fn)" t nil)

(nxhtml-autoload (quote find-emacs-other-file) "ourcomments-util" "\
Find corresponding file to source or installed elisp file.
If you have checked out and compiled Emacs yourself you may have
Emacs lisp files in two places, the checked out source tree and
the installed Emacs tree.  If ELISP-FILE is an Emacs elisp file
in one of these places then find the corresponding elisp file in
the other place.

When interactive set ELISP-FILE to `buffer-file-name'.  Rename
current buffer using your `uniquify-buffer-name-style' if it is
set.  Display the other file in the other window and go to the
same line number as in the current buffer.  Return the other
files buffer.

If non-interactive do not open the other file, just return the
file name of the other file.

\(fn ELISP-FILE)" t nil)

(nxhtml-autoload (quote ourcomments-ediff-files) "ourcomments-util" "\
In directory DEF-DIR run `ediff-files' on files FILE-A and FILE-B.
The purpose of this function is to make it eaiser to start
`ediff-files' from a shell through Emacs Client.

This is used in EmacsW32 in the file ediff.cmd where Emacs Client
is called like this:

  @%emacs_client% -e \"(setq default-directory \\\"%emacs_cd%\\\")\"
  @%emacs_client% -n  -e \"(ediff-files \\\"%f1%\\\" \\\"%f2%\\\")\"

It can of course be done in a similar way with other shells.

\(fn DEF-DIR FILE-A FILE-B)" nil nil)

(nxhtml-autoload (quote describe-command) "ourcomments-util" "\
Like `describe-function', but prompts only for interactive commands.

\(fn COMMAND)" t nil)

(nxhtml-autoload (quote buffer-narrowed-p) "ourcomments-util" "\
Return non-nil if the current buffer is narrowed.

\(fn)" nil nil)

(nxhtml-autoload (quote narrow-to-comment) "ourcomments-util" "\
Narrow to current comments.

\(fn)" t nil)

(nxhtml-autoload (quote narrow-to-defun+comments-above) "ourcomments-util" "\
Like `narrow-to-defun' but include comments above.
See also `widen-to-comments-above'.

\(fn)" t nil)

(nxhtml-autoload (quote widen-to-comments-above) "ourcomments-util" "\
Widen to include comments above current narrowing.
See also `narrow-to-defun+comments-above'.

\(fn)" t nil)

(nxhtml-autoload (quote describe-custom-group) "ourcomments-util" "\
Describe customization group SYMBOL.

\(fn SYMBOL)" t nil)

(nxhtml-autoload (quote describe-defstruct) "ourcomments-util" "\
Not documented

\(fn SYMBOL)" t nil)

(nxhtml-autoload (quote describe-symbol) "ourcomments-util" "\
Show information about SYMBOL.
Show SYMBOL plist and whether is is a variable or/and a
function.

\(fn SYMBOL)" t nil)

(nxhtml-autoload (quote ourcomments-ido-buffer-other-window) "ourcomments-util" "\
Show buffer in other window.

\(fn)" t nil)

(nxhtml-autoload (quote ourcomments-ido-buffer-other-frame) "ourcomments-util" "\
Show buffer in other frame.

\(fn)" t nil)

(nxhtml-autoload (quote ourcomments-ido-buffer-raise-frame) "ourcomments-util" "\
Raise frame showing buffer.

\(fn)" t nil)

(defvar ourcomments-ido-ctrl-tab nil "\
Non-nil if Ourcomments-Ido-Ctrl-Tab mode is enabled.
See the command `ourcomments-ido-ctrl-tab' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ourcomments-ido-ctrl-tab'.")

(custom-autoload (quote ourcomments-ido-ctrl-tab) "ourcomments-util" nil)

(nxhtml-autoload (quote ourcomments-ido-ctrl-tab) "ourcomments-util" "\
Enable buffer switching using C-Tab with function `ido-mode'.
This changes buffer switching with function `ido-mode' the
following way:

- You can use C-Tab.

- You can show the selected buffer in three ways independent of
  how you entered function `ido-mode' buffer switching:

  * S-return: other window
  * C-return: other frame
  * M-return: raise frame

Those keys are selected to at least be a little bit reminiscent
of those in for example common web browsers.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote emacs-restart) "ourcomments-util" "\
Restart Emacs and start `server-mode' if on before.

\(fn)" t nil)

(nxhtml-autoload (quote emacs) "ourcomments-util" "\
Start a new Emacs with default parameters.
Additional ARGS are passed to the new Emacs.

See also `ourcomments-started-emacs-use-output-buffer'.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote emacs-buffer-file) "ourcomments-util" "\
Start a new Emacs showing current buffer file.
Go to the current line and column in that file.
If there is no buffer file then instead start with `dired'.

This calls the function `emacs' with argument --no-desktop and
the file or a call to dired.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote emacs--debug-init) "ourcomments-util" "\
Start a new Emacs with --debug-init parameter.
This calls the function `emacs' with added arguments ARGS.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote emacs--no-desktop) "ourcomments-util" "\
Start a new Emacs with --no-desktop parameter.
This calls the function `emacs' with added arguments ARGS.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote emacs-Q) "ourcomments-util" "\
Start a new Emacs with -Q parameter.
Start new Emacs without any customization whatsoever.
This calls the function `emacs' with added arguments ARGS.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote emacs-Q-nxhtml) "ourcomments-util" "\
Start new Emacs with -Q and load nXhtml.
This calls the function `emacs' with added arguments ARGS.

\(fn &rest ARGS)" t nil)

(nxhtml-autoload (quote grep-query-replace) "ourcomments-util" "\
Do `query-replace-regexp' of FROM with TO, on all files in *grep*.
Third arg DELIMITED (prefix arg) means replace only word-delimited matches.
If you exit (\\[keyboard-quit], RET or q), you can resume the query replace
with the command \\[tags-loop-continue].

\(fn FROM TO &optional DELIMITED)" t nil)

(nxhtml-autoload (quote ldir-query-replace) "ourcomments-util" "\
Replace FROM with TO in FILES in directory DIR.
This runs `query-replace-regexp' in files matching FILES in
directory DIR.

See `tags-query-replace' for DELIMETED and more information.

\(fn FROM TO FILES DIR &optional DELIMITED)" t nil)

(nxhtml-autoload (quote rdir-query-replace) "ourcomments-util" "\
Replace FROM with TO in FILES in directory tree ROOT.
This runs `query-replace-regexp' in files matching FILES in
directory tree ROOT.

See `tags-query-replace' for DELIMETED and more information.

\(fn FROM TO FILE-REGEXP ROOT &optional DELIMITED)" t nil)

(nxhtml-autoload (quote replace-read-files) "ourcomments-util" "\
Read files arg for replace.

\(fn REGEXP &optional REPLACE)" nil nil)

(nxhtml-autoload (quote info-open-file) "ourcomments-util" "\
Open an info file in `Info-mode'.

\(fn INFO-FILE)" t nil)

(nxhtml-autoload (quote use-custom-style) "ourcomments-util" "\
Setup like in `Custom-mode', but without things specific to Custom.

\(fn)" nil nil)

(defvar ourcomments-paste-with-convert-mode nil "\
Non-nil if Ourcomments-Paste-With-Convert mode is enabled.
See the command `ourcomments-paste-with-convert-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ourcomments-paste-with-convert-mode'.")

(custom-autoload (quote ourcomments-paste-with-convert-mode) "ourcomments-util" nil)

(nxhtml-autoload (quote ourcomments-paste-with-convert-mode) "ourcomments-util" "\
Pasted text may be automatically converted in this mode.
The functions in `ourcomments-paste-with-convert-hook' are run
after commands in `ourcomments-paste-with-convert-commands' if any
of the functions returns non-nil that text is inserted instead of
the original text.

For exampel when this mode is on and you paste an html link in an
`org-mode' buffer it will be directly converted to an org style
link. (This is the default behaviour.)

Tip: The Firefox plugin Copy as HTML Link is handy, see URL
     `https://addons.mozilla.org/en-US/firefox/addon/2617'.

Note: This minor mode will defadvice the paste commands.

\(fn &optional ARG)" t nil)

(defvar ourcomments-M-x-menu-mode nil "\
Non-nil if Ourcomments-M-X-Menu mode is enabled.
See the command `ourcomments-M-x-menu-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ourcomments-M-x-menu-mode'.")

(custom-autoload (quote ourcomments-M-x-menu-mode) "ourcomments-util" nil)

(nxhtml-autoload (quote ourcomments-M-x-menu-mode) "ourcomments-util" "\
Add commands started from Emacs menus to M-x history.
The purpose of this is to make it easier to redo them and easier
to learn how to do them from the command line (which is often
faster if you know how to do it).

Only commands that are not already in M-x history are added.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote ourcomments-warning) "ourcomments-util" "\
Not documented

\(fn FORMAT-STRING &rest ARGS)" nil nil)

;;;***

;;;### (autoloads (pause-start-in-new-emacs pause-mode pause) "pause"
;;;;;;  "util/pause.el" (19502 22614))
;;; Generated autoloads from util/pause.el
(web-autoload-require 'pause 'lp '(nxhtml-download-root-url nil) "util/pause" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote pause) (quote custom-loads)))) (if (member (quote "pause") loads) nil (put (quote pause) (quote custom-loads) (cons (quote "pause") loads))))

(defvar pause-mode nil "\
Non-nil if Pause mode is enabled.
See the command `pause-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `pause-mode'.")

(custom-autoload (quote pause-mode) "pause" nil)

(nxhtml-autoload (quote pause-mode) "pause" "\
This minor mode tries to make you take a break.
It will jump up and temporary stop your work - even if you are
not in Emacs.  If you are in Emacs it will however try to be
gentle and wait until you have been idle with the keyboard for a
short while. (If you are not in Emacs it can't be gentle. How
could it?)

Then it will show you a special screen with a link to a yoga
exercise you can do when you pause.

After the pause you continue your work where you were
interrupted.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote pause-start-in-new-emacs) "pause" "\
Start pause with interval AFTER-MINUTES in a new Emacs instance.
The new Emacs instance will be started with -Q.  However if
`custom-file' is non-nil it will be loaded so you can still
customize pause.

One way of using this function may be to put in your .emacs
something like

  ;; for just one Emacs running pause
  (when server-mode (pause-start-in-new-emacs 15))

See `pause-start' for more info.

\(fn AFTER-MINUTES)" t nil)

;;;***

;;;### (autoloads (php-mode php-file-patterns php) "php-mode" "related/php-mode.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from related/php-mode.el
(web-autoload-require 'php-mode 'lp '(nxhtml-download-root-url nil) "related/php-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote php) (quote custom-loads)))) (if (member (quote "php-mode") loads) nil (put (quote php) (quote custom-loads) (cons (quote "php-mode") loads))))

(defvar php-file-patterns (quote ("\\.php[s34]?\\'" "\\.phtml\\'" "\\.inc\\'")) "\
List of file patterns for which to automatically invoke `php-mode'.")

(custom-autoload (quote php-file-patterns) "php-mode" nil)

(nxhtml-autoload (quote php-mode) "php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (global-pointback-mode pointback-mode) "pointback"
;;;;;;  "util/pointback.el" (19502 22614))
;;; Generated autoloads from util/pointback.el
(web-autoload-require 'pointback 'lp '(nxhtml-download-root-url nil) "util/pointback" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote pointback-mode) "pointback" "\
Restore previous window point when switching back to a buffer.

\(fn &optional ARG)" t nil)

(defvar global-pointback-mode nil "\
Non-nil if Global-Pointback mode is enabled.
See the command `global-pointback-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-pointback-mode'.")

(custom-autoload (quote global-pointback-mode) "pointback" nil)

(nxhtml-autoload (quote global-pointback-mode) "pointback" "\
Toggle Pointback mode in every possible buffer.
With prefix ARG, turn Global-Pointback mode on if and only if ARG is positive.
Pointback mode is enabled in all buffers where `pointback-on' would do it.
See `pointback-mode' for more information on Pointback mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (popcmp-completing-read popcmp-completion-style
;;;;;;  popcmp) "popcmp" "util/popcmp.el" (19502 22614))
;;; Generated autoloads from util/popcmp.el
(web-autoload-require 'popcmp 'lp '(nxhtml-download-root-url nil) "util/popcmp" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote popcmp) (quote custom-loads)))) (if (member (quote "popcmp") loads) nil (put (quote popcmp) (quote custom-loads) (cons (quote "popcmp") loads))))

(defvar popcmp-completion-style (cond ((null window-system) (quote emacs-default)) (t (quote popcmp-popup))) "\
Completion style.
The currently available completion styles are:

- popcmp-popup: Use OS popup menus (default).
- emacs-default: Emacs default completion.
- Company Mode completion.
- anything: The Anything elisp lib completion style.

The style of completion set here is not implemented for all
completions.  The scope varies however with which completion
style you have choosen.

For information about Company Mode and how to use it see URL
`http://www.emacswiki.org/emacs/CompanyMode'.

For information about Anything and how to use it see URL
`http://www.emacswiki.org/emacs/Anything'.

See also the options `popcmp-short-help-beside-alts' and
`popcmp-group-alternatives' which are also availabe when popup
completion is available.")

(custom-autoload (quote popcmp-completion-style) "popcmp" nil)

(nxhtml-autoload (quote popcmp-completing-read) "popcmp" "\
Read a string in the minubuffer with completion, or popup a menu.
This function can be used instead `completing-read'. The main
purpose is to provide a popup style menu for completion when
completion is tighed to text at point in a buffer. If a popup
menu is used it will be shown at window point. Whether a popup
menu or minibuffer completion is used is governed by
`popcmp-completion-style'.

The variables PROMPT, TABLE, PREDICATE, REQUIRE-MATCH,
INITIAL-INPUT, POP-HIST, DEF and INHERIT-INPUT-METHOD all have the
same meaning is for `completing-read'.

ALT-HELP should be nil or a hash variable or an association list
with the completion alternative as key and a short help text as
value.  You do not need to supply help text for all alternatives.
The use of ALT-HELP is set by `popcmp-short-help-beside-alts'.

ALT-SETS should be nil or an association list that has as keys
groups and as second element an alternative that should go into
this group.

\(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT POP-HIST DEF INHERIT-INPUT-METHOD ALT-HELP ALT-SETS)" nil nil)

;;;***

;;;### (autoloads (rebind-keys-mode rebind) "rebind" "util/rebind.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/rebind.el
(web-autoload-require 'rebind 'lp '(nxhtml-download-root-url nil) "util/rebind" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote rebind) (quote custom-loads)))) (if (member (quote "rebind") loads) nil (put (quote rebind) (quote custom-loads) (cons (quote "rebind") loads))))

(defvar rebind-keys-mode nil "\
Non-nil if Rebind-Keys mode is enabled.
See the command `rebind-keys-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `rebind-keys-mode'.")

(custom-autoload (quote rebind-keys-mode) "rebind" nil)

(nxhtml-autoload (quote rebind-keys-mode) "rebind" "\
Rebind keys as defined in `rebind-keys'.
The key bindings will override almost all other key bindings
since it is put on emulation level, like for example ``cua-mode'
and `viper-mode'.

This is for using for example C-a to mark the whole buffer (or a
field). There are some predifined keybindings for this.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rnc-mode) "rnc-mode" "util/rnc-mode.el" (19502
;;;;;;  22614))
;;; Generated autoloads from util/rnc-mode.el
(web-autoload-require 'rnc-mode 'lp '(nxhtml-download-root-url nil) "util/rnc-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote rnc-mode) "rnc-mode" "\
Major mode for editing RELAX NG Compact Syntax schemas.
\\{rnc-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (rncdl-update-html5) "rncdl" "nxhtml/rncdl.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from nxhtml/rncdl.el
(web-autoload-require 'rncdl 'lp '(nxhtml-download-root-url nil) "nxhtml/rncdl" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote rncdl-update-html5) "rncdl" "\
Update and setup (x)html5 rnc files.
Download rnc files from url `http://syntax.whattf.org/relaxng/'.

Those files are needed to edit (x)html5 with `nxml-mode' support.

The schemas will be enabled based on file name extensions
'.html5' and '.xhtml5'.

\(fn)" t nil)

;;;***

;;;### (autoloads (rngalt-set-validation-header) "rngalt" "nxhtml/rngalt.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from nxhtml/rngalt.el
(web-autoload-require 'rngalt 'lp '(nxhtml-download-root-url nil) "nxhtml/rngalt" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote rngalt-set-validation-header) "rngalt" "\
Not documented

\(fn START-OF-DOC)" nil nil)

;;;***

;;;### (autoloads (rxx-parse rxx-simplify-result rxx-parse-string)
;;;;;;  "rxx" "util/rxx.el" (19502 22614))
;;; Generated autoloads from util/rxx.el
(web-autoload-require 'rxx 'lp '(nxhtml-download-root-url nil) "util/rxx" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote rxx-parse-string) "rxx" "\
Do like `rxx-parse' but parse STRING instead of current buffer.
has the same meaning and return value has the same
format.

\(fn STRING)" nil nil)

(nxhtml-autoload (quote rxx-simplify-result) "rxx" "\
Simplify result if possible.
Things to take care of:

  (and a) => a
  (any a) => a
  (or a) => a
  (or a b) => a b ;; single letters
  (rx (and a b c ...)) => top only: (rx a b c ...)

\(fn RAW)" nil nil)

(nxhtml-autoload (quote rxx-parse) "rxx" "\
Parse current buffer regexp between point min and max.
Return a cons with car t on success and nil otherwise.  If
success the cdr is the produced form.  Otherwise it is an
informative message about what went wrong.

The produced form includes (rx ...) around it.

Fix-me: Rethink. If then Emacs read syntax for
strings is used.  This meanst that \\ must be doubled and things
like \\n are recognized.

\(fn)" nil nil)

;;;***

;;;### (autoloads (search-form) "search-form" "util/search-form.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/search-form.el
(web-autoload-require 'search-form 'lp '(nxhtml-download-root-url nil) "util/search-form" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote search-form) "search-form" "\
Display a form for search and replace.

\(fn)" t nil)

;;;***

;;;### (autoloads (search-net search-net-dwim) "search-net" "util/search-net.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/search-net.el
(web-autoload-require 'search-net 'lp '(nxhtml-download-root-url nil) "util/search-net" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote search-net-dwim) "search-net" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote search-net) "search-net" "\
Search the Internet with web browser.
ENGINE is the search engine.
WHAT is the search string.
In interactive use those are prompted for.
Default for WHAT is then what `word-at-point' gives.
However if region is active the region will be default.

WHAT will be url encoded.
ENGINE must be key in `search-net-search-setup-alist'.

\(fn ENGINE WHAT)" t nil)

;;;***

;;;### (autoloads (sex-mode sex) "sex-mode" "util/sex-mode.el" (19502
;;;;;;  22613))
;;; Generated autoloads from util/sex-mode.el
(web-autoload-require 'sex-mode 'lp '(nxhtml-download-root-url nil) "util/sex-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote sex) (quote custom-loads)))) (if (member (quote "sex-mode") loads) nil (put (quote sex) (quote custom-loads) (cons (quote "sex-mode") loads))))

(defvar sex-mode nil "\
Non-nil if Sex mode is enabled.
See the command `sex-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sex-mode'.")

(custom-autoload (quote sex-mode) "sex-mode" nil)

(nxhtml-autoload (quote sex-mode) "sex-mode" "\
Open certain files in external programs.
See `sex-get-file-open-cmd' for how to determine which files to
open by external applications.  Note that this selection is
nearly the same as in `org-mode'.  The main difference is that
the fallback always is to open a file in Emacs. (This is
necessary to avoid to disturb many of Emacs operations.)

This affects all functions that opens files, like `find-file',
`find-file-noselect' etc.

However it does not affect files opened through Emacs client.

Urls can also be handled, see `sex-handle-urls'.

When opening a file with the shell a (temporary) dummy buffer is
created in Emacs with major mode `sex-file-mode' and an external
program is called to handle the file.  How this dummy buffer is
handled is governed by `sex-keep-dummy-buffer'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (smarty-mode smarty) "smarty-mode" "related/smarty-mode.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from related/smarty-mode.el
(web-autoload-require 'smarty-mode 'lp '(nxhtml-download-root-url nil) "related/smarty-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote smarty) (quote custom-loads)))) (if (member (quote "smarty-mode") loads) nil (put (quote smarty) (quote custom-loads) (cons (quote "smarty-mode") loads))))

(nxhtml-autoload (quote smarty-mode) "smarty-mode" "\
Smarty Mode
***********

Smarty Mode is a GNU XEmacs major mode for editing Smarty templates.

1 Introduction
**************

Smarty-Mode is a mode allowing easy edit of Smarty templates:
highlight, templates, navigation into source files...


Features (new features in bold) :

   * Completion
   * Customizable
   * Highlight
   * Menu
   * Stuttering
   * Templates
        - Built-in Functions
        - User Functions
        - Variable Modifiers
        - Plugin (Functions)
             * BlockRepeatPlugin
             * ClipCache
             * Smarty Formtool
             * Smarty Paginate
             * Smarty Validate
        - Plugin (Variable Modifiers)
             * AlternativeDateModifierPlugin
             * B2Smilies
             * BBCodePlugin
        - Fonctions Non-Smarty



This manual describes Smarty Mode version 0.0.5.

2 Installation
**************

2.1 Requirements
================

Smarty Mode is a XEmacs major mode that needs the following
software/packages (all are included in Emacs 23):

   * GNU Emacs or XEmacs (http://www.xemacs.org/).

   * `font-lock' mode generaly installed with XEmacs.

   * `assoc' mode generaly installed with XEmacs.

   * `easymenu' mode generaly installed with XEmacs.

   * `hippie-exp' mode generaly installed with XEmacs.

Before continuing, you must be sure to have all this packages
installed.

2.2 Download
============

Two internet address to download Smarty Mode :

   * Principal: Smarty-Mode 0.0.5
     (http://deboutv.free.fr/lisp/smarty/download/smarty-0.0.5.tar.gz)
     (http://deboutv.free.fr/lisp/smarty/)

   * Secondary: Smarty-Mode 0.0.5
     (http://www.morinie.fr/lisp/smarty/download/smarty-0.0.5.tar.gz)
     (http://www.morinie.fr/lisp/smarty/)

   * Old releases: Smarty-Mode
     (http://deboutv.free.fr/lisp/smarty/download.php)
     (http://deboutv.free.fr/lisp/smarty/)

2.3 Installation
================

2.3.1 Installation
------------------

To install Smarty Mode you need to choose an installation directory
\(for example `/usr/local/share/lisp' or `c:lisp'). The administrator
must have the write rights on this directory.

With your favorite unzip software, unzip the archive in the
installation directory.

Example:
     cd /usr/local/share/lisp
     tar zxvf smarty-0.0.5.tar.gz
Now you have a `smarty' directory in the installation directory. This
directory contains 2 files `smarty-mode.el' and `smarty-mode.elc' and
another directory `docs' containing the documentation.

You need to configure XEmacs. open you initialization file `init.el'
\(open the file or start XEmacs then choose the Options menu and Edit
Init File). Add the following lines (the installation directory in
this example is `/usr/local/share/lisp') :

     (setq load-path
           (append (list \"/usr/local/share/lisp/\") load-path))
     (nxhtml-autoload 'smarty-mode \"smarty-mode\" \"Smarty Mode\" t)

2.3.2 Update
------------

The update is easy. You need to unzip the archive in the installation
directory to remove the old release.

Example:
     cd /usr/local/share/lisp
     rm -rf smarty
     tar zxvf smarty-0.0.5.tar.gz

2.4 Invoke Smarty-Mode
======================

You have two possibilities to invoke the Smarty Mode.

   - Manually: At each file opening you need to launch Smarty Mode
     with the following command:

     `M-x smarty-mode'

   - Automatically: Add the following linesin your initialization
     file `init.el' :

          (setq auto-mode-alist
                (append
                 '((\"\\.tpl$\" . smarty-mode))
          	 auto-mode-alist))


3 Customization
***************

This chapter describes the differents parameters and functions that
you can change to customize Smarty Mode.  To do that, open a Smarty
file, click on the Smarty menu and choose Options then Browse
Options....

3.1 Parameters
==============

3.1.1 Mode
----------

Smarty Mode has 2 modes allowing to simplify the writing of Smarty
templates. You can enable/disable each mode individually.

`smarty-electric-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable automatic generation of template.
     If `nil'; template generators can still be invoked through key
     bindings and menu. Is indicated in the modeline by \"/e\" after
     the mode name and can be toggled by `smarty-electric-mode'.

`smarty-stutter-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable the stuttering. Is indicated in the
     modeline by \"/s\" after the mode name and can be toggled by
     `smarty-stutter-mode'.

3.1.2 Menu
----------

Smarty Mode has also 1 menu that you can enable/disable. The menu
Sources is specific to each Smarty files opened.

`smarty-source-file-menu'
     Type: boolean
     Default value: `t'
     Description: If `t'; the Sources menu is enabled. This menu
     contains the list of Smarty file located in the current
     directory. The Sources menu scans the directory when a file is
     opened.

3.1.3 Menu
----------

`smarty-highlight-plugin-functions'
     Type: boolean
     Default value: `t'
     Description: If `t'; the functions described in the smarty
     plugins are highlighted.

3.1.4 Templates
---------------

3.1.4.1 Header
..............

`smarty-file-header'
     Type: string
     Default value: `\"\"'
     Description: String or file to insert as file header. If the
     string specifies an existing file name the contents of the file
     is inserted; otherwise the string itself is inserted as file
     header.
     Type `C-j' for newlines.
     The follonwing keywords are supported:
     <filename>: replaced by the file name.
     <author>: replaced by the user name and email address.
     <login>: replaced by `user-login-name'.
     <company>: replaced by `smarty-company-name' content.
     <date>: replaced by the current date.
     <year>: replaced by the current year.
     <copyright>: replaced by `smarty-copyright-string' content.
     <cursor>: final cursor position.

`smarty-file-footer'
     Type: string
     Default value: `\"\"'
     Description: String or file to insert as file footer.  See
     `smarty-file-header'

`smarty-company-name'
     Type: string
     Default value: `\"\"'
     Description: Name of the company to insert in file header.

`smarty-copyright-string'
     Type: string
     Default value: `\"\"'
     Description: Coryright string to insert in file header.

`smarty-date-format'
     Type: string
     Default value: `\"%Y-%m-%d\"'
     Description: Date format.

`smarty-modify-date-prefix-string'
     Type: string
     Default value: `\"\"'
     Description: Prefix string of modification date in Smarty file
     header.

`smarty-modify-date-on-saving'
     Type: bool
     Default value: `nil'
     Description: If `t'; update the modification date when the
     buffer is saved.

3.1.5 Miscellaneous
-------------------

`smarty-left-delimiter'
     Type: string
     Default value: `\"\"'
     Description: Left escaping delimiter for Smarty templates.

`smarty-right-delimiter'
     Type: string
     Default value: `\"\"'
     Description: Right escaping delimiter for Smarty templates.

`smarty-intelligent-tab'
     Type: bool
     Default value: `t'
     Description: If `t'; TAB does indentation; completion and insert
     tabulations. If `nil'; TAB does only indentation.

`smarty-word-completion-in-minibuffer'
     Type: bool
     Default value: `t'
     Description: If `t'; enable completion in the minibuffer.

`smarty-word-completion-case-sensitive'
     Type: bool
     Default value: `nil'
     Description: If `t'; completion is case sensitive.

3.2 Functions
=============

3.2.1 Mode
----------

`smarty-electric-mode'
     Menu: Smarty -> Options -> Mode -> Electric Mode
     Keybinding: `C-c C-m C-e'
     Description: This functions is used to enable/disable the
     electric mode.

`smarty-stutter-mode'
     Menu: Smarty -> Options -> Mode -> Stutter Mode
     Keybinding: `C-c C-m C-s'
     Description: This function is used to enable/disable the stutter
     mode.

4 Menus
*******

There are 2 menus: Smarty and Sources. All theses menus can be
accessed from the menubar or from the right click. This chapter
describes each menus.

4.1 Smarty
==========

This is the main menu of Smarty Mode. It allows an easy access to the
main features of the Smarty Mode: Templates (see *Note Templates::)
and Options (see *Note Customization::).

This menu contains also 3 functions that are discussed in the next
part.

4.1.1 Functions
---------------

`smarty-show-messages'
     Menu: Smarty -> Show Messages
     Keybinding: `C-c M-m'
     Description: This function opens the *Messages* buffer to
     display previous error messages.

`smarty-doc-mode'
     Menu: Smarty -> Smarty Mode Documentation
     Keybinding: `C-c C-h'
     Description: This function opens the *Help* buffer and prints in
     it the Smarty Mode documentation.

`smarty-version'
     Menu: Smarty -> Version
     Keybinding: `C-c C-v'
     Description: This function displays in the minibuffer the
     current Smarty Mode version with the timestamp.

4.2 Sources
===========

The Sources menu shows the Smarty files in the current directory. If
you add or delete a file in the current directory, you need to
refresh the menu.

4.2.1 Customization
-------------------

`smarty-source-file-menu'
     Type: boolean
     Default value: `t'
     Description: If `t'; the Sources menu is enabled. This menu
     contains the list of Smarty file located in the current
     directory. The Sources menu scans the directory when a file is
     opened.

4.2.2 Functions
---------------

`smarty-add-source-files-menu'
     Menu: Sources -> *Rescan*
     Keybinding: `C-c C-s C-u'
     Description: This function is used to refresh the Sources menu.

5 Stuttering
************

The stutter mode is a mode that affects a function to a key. For
example, when you use the `ENTER' key, the associated function will
create a new line and indent it.

5.1 Customization
=================

`smarty-stutter-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable the stuttering. Is indicated in the
     modeline by \"/s\" after the mode name and can be toggled by
     `smarty-stutter-mode'.

5.2 Functions
=============

`SPACE'
     If in comment, indent the comment and add new line if necessary.
     In other case, add a space.

`('
     If the previous character is a `(', the `((' will be replaced by
     `['.
     If the previous character is a `[', the `[(' will be replaced by
     `{'.
     In other case, insert a `('.

`)'
     If the previous character is a `)', the `))' will be replaced by
     `]'.
     If the previous character is a `]', the `])' will be replaced by
     `}'.
     In other case, insert a `)'.

6 Templates
***********

In the Smarty Mode, the Smarty functions (like if, while, for, fopen,
fclose) are predefined in functions called \"Templates\".

Each template can be invoked by the function name or by using the
<SPACE> key after the Smarty function name in the buffer (Note, using
`M-<SPACE>' disable the template).

A template can be aborted by using the `C-g' or by lefting empty the
tempate prompt (in the minibuffer).

6.1 Customization
=================

`smarty-electric-mode'
     Type: boolean
     Default value: `t'
     Description: If `t'; enable automatic generation of template.
     If `nil'; template generators can still be invoked through key
     bindings and menu. Is indicated in the modeline by \"/e\" after
     the mode name and can be toggled by `smarty-electric-mode'.

For a complete description of the template customizable variables,
see *Note Cu01-Pa01-Template::

6.2 Functions
=============

6.2.1 Smarty Functions
----------------------

For Smarty functions, see PDF or HTML documentation.

6.2.2 Non-Smarty Functions
--------------------------

`smarty-template-header'
     Menu: Smarty -> Templates -> Insert Header
     Keybinding: `C-c C-t C-h'
     Description: This function is used to insert a header in the
     current buffer.

`smarty-template-footer'
     Menu: Smarty -> Templates -> Insert Footer
     Keybinding: `C-c C-t C-f'
     Description: This function is used to insert a footer in the
     current buffer.

`smarty-template-insert-date'
     Menu: Smarty -> Templates -> Insert Date
     Keybinding: `C-c C-t C-d i'
     Description: This function is used to insert the date in the
     current buffer.

`smarty-template-modify'
     Menu: Smarty -> Templates -> Modify Date
     Keybinding: `C-c C-t C-d m'
     Description: This function is used to modify the last
     modification date in the current buffer.

7 Bugs, Help
************

   * To report bugs: Bugtracker
     (http://bugtracker.morinie.fr/lisp/set_project.php?project_id=2)

   * To obtain help you can post on the dedicated forum: Forum
     (http://forum.morinie.fr/lisp/)

8 Key bindings
**************

\\{smarty-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (sml-modeline-mode sml-modeline) "sml-modeline"
;;;;;;  "util/sml-modeline.el" (19502 22614))
;;; Generated autoloads from util/sml-modeline.el
(web-autoload-require 'sml-modeline 'lp '(nxhtml-download-root-url nil) "util/sml-modeline" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote sml-modeline) (quote custom-loads)))) (if (member (quote "sml-modeline") loads) nil (put (quote sml-modeline) (quote custom-loads) (cons (quote "sml-modeline") loads))))

(defvar sml-modeline-mode nil "\
Non-nil if Sml-Modeline mode is enabled.
See the command `sml-modeline-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sml-modeline-mode'.")

(custom-autoload (quote sml-modeline-mode) "sml-modeline" nil)

(nxhtml-autoload (quote sml-modeline-mode) "sml-modeline" "\
Show buffer size and position like scrollbar in mode line.
You can customize this minor mode, see option `sml-modeline-mode'.

Note: If you turn this mode on then you probably want to turn off
option `scroll-bar-mode'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (tabkey2-emma-without-tabkey2 tabkey2-mode tabkey2)
;;;;;;  "tabkey2" "util/tabkey2.el" (19502 22614))
;;; Generated autoloads from util/tabkey2.el
(web-autoload-require 'tabkey2 'lp '(nxhtml-download-root-url nil) "util/tabkey2" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote tabkey2) (quote custom-loads)))) (if (member (quote "tabkey2") loads) nil (put (quote tabkey2) (quote custom-loads) (cons (quote "tabkey2") loads))))

(defvar tabkey2-mode nil "\
Non-nil if Tabkey2 mode is enabled.
See the command `tabkey2-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabkey2-mode'.")

(custom-autoload (quote tabkey2-mode) "tabkey2" nil)

(nxhtml-autoload (quote tabkey2-mode) "tabkey2" "\
More fun with Tab key number two (completion etc).
This global minor mode by default binds Tab in a way that let you
do completion with Tab in all buffers (where it is possible).

The Tab key is easy to type on your keyboard.  Then why not use
it for completion, something that is very useful?  Shells usually
use Tab for completion so many are used to it.  This was the idea
of Smart Tabs and this is a generalization of that idea.

However in Emacs the Tab key is usually used for indentation.
The idea here is that if Tab has been pressed once for
indentation, then as long as point stays further Tab keys might
as well do completion.

So you kind of do Tab-Tab for first completion (and then just
Tab for further completions as long as point is not moved).

And there is even kind of Tab-Tab-Tab completion: If completion
fails the next completion function will be the one you try with
next Tab. (You get some notification of this, of course.)

See `tabkey2-first' for more information about usage.

Note: If you do not want the Tab-Tab behaviour above, but still
want an easy way to reach the available completion functions,
then you can instead of turning on tabkey2-mode enter this in
your .emacs:

 (global-set-key [f8] 'tabkey2-cycle-completion-functions)

After hitting f8 you will then be in the same state as after the
first in tabkey2-mode.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote tabkey2-emma-without-tabkey2) "tabkey2" "\
Not documented

\(fn)" nil nil)

;;;***

;;;### (autoloads (tidy-build-menu tidy) "tidy-xhtml" "nxhtml/tidy-xhtml.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from nxhtml/tidy-xhtml.el
(web-autoload-require 'tidy-xhtml 'lp '(nxhtml-download-root-url nil) "nxhtml/tidy-xhtml" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote tidy) (quote custom-loads)))) (if (member (quote "tidy-xhtml") loads) nil (put (quote tidy) (quote custom-loads) (cons (quote "tidy-xhtml") loads))))

(nxhtml-autoload (quote tidy-build-menu) "tidy-xhtml" "\
Set up the tidy menu in MAP.
Used to set up a Tidy menu in your favourite mode.

\(fn &optional MAP)" t nil)

;;;***

;;;### (autoloads (tt-mode) "tt-mode" "related/tt-mode.el" (19502
;;;;;;  22613))
;;; Generated autoloads from related/tt-mode.el
(web-autoload-require 'tt-mode 'lp '(nxhtml-download-root-url nil) "related/tt-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote tt-mode) "tt-mode" "\
Major mode for editing Template Toolkit files.

\(fn)" t nil)

;;;***

;;;### (autoloads (udev-call-first-step) "udev" "util/udev.el" (19502
;;;;;;  22613))
;;; Generated autoloads from util/udev.el
(web-autoload-require 'udev 'lp '(nxhtml-download-root-url nil) "util/udev" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote udev-call-first-step) "udev" "\
Set up and call first step.
Set up buffer LOG-BUFFER to be used for log messages and
controling of the execution of the functions in list STEPS which
are executed one after another.

Write HEADER at the end of LOG-BUFFER.

Call first step.

If FINISH-FUN non-nil it should be a function. This is called
after last step with LOG-BUFFER as parameter.

\(fn LOG-BUFFER STEPS HEADER FINISH-FUN)" nil nil)

;;;***

;;;### (autoloads (udev-ecb-customize-startup udev-ecb-update) "udev-ecb"
;;;;;;  "util/udev-ecb.el" (19502 22613))
;;; Generated autoloads from util/udev-ecb.el
(web-autoload-require 'udev-ecb 'lp '(nxhtml-download-root-url nil) "util/udev-ecb" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote udev-ecb-update) "udev-ecb" "\
Fetch and install ECB from the devel sources.
To determine where to store the sources see `udev-ecb-dir'.
For how to start ECB see `udev-ecb-load-ecb'.

\(fn)" t nil)

(nxhtml-autoload (quote udev-ecb-customize-startup) "udev-ecb" "\
Customize ECB dev nXhtml startup group.

\(fn)" t nil)

;;;***

;;;### (autoloads (udev-rinari-update) "udev-rinari" "util/udev-rinari.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/udev-rinari.el
(web-autoload-require 'udev-rinari 'lp '(nxhtml-download-root-url nil) "util/udev-rinari" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote udev-rinari-update) "udev-rinari" "\
Fetch and install Rinari from the devel sources.
To determine where to store the sources and how to start rinari
see `udev-rinari-dir' and `udev-rinari-load-rinari'.

\(fn)" t nil)

;;;***

;;;### (autoloads (viper-tutorial) "viper-tut" "util/viper-tut.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/viper-tut.el
(web-autoload-require 'viper-tut 'lp '(nxhtml-download-root-url nil) "util/viper-tut" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote viper-tutorial) "viper-tut" "\
Run a tutorial for Viper.

A simple classic tutorial in 5 parts that have been used by many
people starting to learn vi keys.  You may learn enough to start
using `viper-mode' in Emacs.

Some people find that vi keys helps against repetetive strain
injury, see URL

  `http://www.emacswiki.org/emacs/RepeatedStrainInjury'.

Note: There might be a few clashes between vi key binding and
Emacs standard key bindings.  You will be notified about those in
the tutorial.  Even more, if your own key bindings comes in
between you will be notified about that too.

\(fn PART &optional DONT-ASK-FOR-REVERT)" t nil)

;;;***

;;;### (autoloads (visual-basic-mode) "visual-basic-mode" "related/visual-basic-mode.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from related/visual-basic-mode.el
(web-autoload-require 'visual-basic-mode 'lp '(nxhtml-download-root-url nil) "related/visual-basic-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote visual-basic-mode) "visual-basic-mode" "\
A mode for editing Microsoft Visual Basic programs.
Features automatic indentation, font locking, keyword capitalization,
and some minor convenience functions.
Commands:
\\{visual-basic-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (vline-global-mode vline-mode) "vline" "util/vline.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/vline.el
(web-autoload-require 'vline 'lp '(nxhtml-download-root-url nil) "util/vline" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote vline-mode) "vline" "\
Display vertical line mode.

\(fn &optional ARG)" t nil)

(defvar vline-global-mode nil "\
Non-nil if Vline-Global mode is enabled.
See the command `vline-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `vline-global-mode'.")

(custom-autoload (quote vline-global-mode) "vline" nil)

(nxhtml-autoload (quote vline-global-mode) "vline" "\
Display vertical line mode as globally.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (web-vcs-investigate-elisp-file web-vcs-url-copy-file
;;;;;;  web-vcs-url-retrieve-synch web-vcs-byte-compile-file web-vcs-message-with-face
;;;;;;  web-vcs-get-files-from-root web-vcs-log-edit web-vcs-default-download-directory)
;;;;;;  "web-vcs" "web-vcs.el" (19502 22613))
;;; Generated autoloads from web-vcs.el
(web-autoload-require 'web-vcs 'lp '(nxhtml-download-root-url nil) "web-vcs" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote web-vcs-default-download-directory) "web-vcs" "\
Try to find a suitable place.
Use the choice in `web-vcs-default-download-directory'.
If this does not fit fall back to \"~/.emacs.d/\".

\(fn)" nil nil)

(nxhtml-autoload (quote web-vcs-log-edit) "web-vcs" "\
Open log file.

\(fn)" t nil)

(nxhtml-autoload (quote web-vcs-get-files-from-root) "web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from FULL-URL to directory DL-DIR.

Show FULL-URL first and offer to visit the page.  That page will
give you information about version control system (VCS) system
used etc.

\(fn WEB-VCS FULL-URL DL-DIR)" nil nil)

(nxhtml-autoload (quote web-vcs-message-with-face) "web-vcs" "\
Display a colored message at the bottom of the string.
FACE is the face to use for the message.
FORMAT-STRING and ARGS are the same as for `message'.

Also put FACE on the message in *Messages* buffer.

\(fn FACE FORMAT-STRING &rest ARGS)" nil nil)

(nxhtml-autoload (quote web-vcs-byte-compile-file) "web-vcs" "\
Byte compile FILE in a new Emacs sub process.
EXTRA-LOAD-PATH is added to the front of `load-path' during
compilation.

FILE is set to `buffer-file-name' when called interactively.
If LOAD

\(fn FILE &optional LOAD EXTRA-LOAD-PATH COMP-DIR)" t nil)

(nxhtml-autoload (quote web-vcs-url-retrieve-synch) "web-vcs" "\
Retrieve URL, return cons with buffer and http status.

\(fn URL)" nil nil)

(nxhtml-autoload (quote web-vcs-url-copy-file) "web-vcs" "\
Copy URL to NEWNAME.  Both args must be strings.
Signals a `file-already-exists' error if file NEWNAME already exists,
unless a third argument OK-IF-ALREADY-EXISTS is supplied and non-nil.
A number as third arg means request confirmation if NEWNAME already exists.
This is what happens in interactive use with M-x.
Fourth arg KEEP-TIME non-nil means give the new file the same
last-modified time as the old one.  (This works on only some systems.)
Fifth arg PRESERVE-UID-GID is ignored.
A prefix arg makes KEEP-TIME non-nil.

\(fn URL NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" nil nil)

(nxhtml-autoload (quote web-vcs-investigate-elisp-file) "web-vcs" "\
Not documented

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads (web-vcs-linkpatt-mode) "web-vcs-linkpatt" "util/web-vcs-linkpatt.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from util/web-vcs-linkpatt.el
(web-autoload-require 'web-vcs-linkpatt 'lp '(nxhtml-download-root-url nil) "util/web-vcs-linkpatt" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote web-vcs-linkpatt-mode) "web-vcs-linkpatt" "\
Minor mode helping finding link patt for web-vcs.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (whelp) "whelp" "util/whelp.el" (19502 22613))
;;; Generated autoloads from util/whelp.el
(web-autoload-require 'whelp 'lp '(nxhtml-download-root-url nil) "util/whelp" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote whelp) (quote custom-loads)))) (if (member (quote "whelp") loads) nil (put (quote whelp) (quote custom-loads) (cons (quote "whelp") loads))))

;;;***

;;;### (autoloads (winsav-switch-config winsav-save-full-config winsav-save-mode
;;;;;;  winsav winsav-put-window-tree) "winsav" "util/winsav.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from util/winsav.el
(web-autoload-require 'winsav 'lp '(nxhtml-download-root-url nil) "util/winsav" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote winsav-put-window-tree) "winsav" "\
Put window structure SAVED-TREE into WINDOW.
Restore a structure SAVED-TREE returned from
`winsav-get-window-tree' into window WINDOW.

If COPY-WIN-OVL is non-nil then overlays having a 'window
property pointing to one of the windows in SAVED-TREE where this
window still is shown will be copied to a new overlay with
'window property pointing to the corresponding new window.

If WIN-OVL-ALL-BUFS is non-nil then all buffers will be searched
for overlays with a 'window property of the kind above.

At the very end of this function the hook `winsav-after-put' is
run.

\(fn SAVED-TREE WINDOW &optional COPY-WIN-OVL WIN-OVL-ALL-BUFS)" nil nil)

(let ((loads (get (quote winsav) (quote custom-loads)))) (if (member (quote "winsav") loads) nil (put (quote winsav) (quote custom-loads) (cons (quote "winsav") loads))))

(defvar winsav-save-mode nil "\
Non-nil if Winsav-Save mode is enabled.
See the command `winsav-save-mode' for a description of this minor mode.")

(custom-autoload (quote winsav-save-mode) "winsav" nil)

(nxhtml-autoload (quote winsav-save-mode) "winsav" "\
Toggle winsav configuration saving mode.
With numeric ARG, turn winsav saving on if ARG is positive, off
otherwise.

When this mode is turned on, winsav configurations are saved from
one session to another.  A winsav configuration consists of
frames, windows and visible buffers configurations plus
optionally buffers and files managed by the functions used by
option `desktop-save-mode'

By default this is integrated with `desktop-save-mode'.  If
`desktop-save-mode' is on and `winsav-handle-also-desktop' is
non-nil then save and restore also desktop.

See the command `winsav-switch-config' for more information and
other possibilities.

Note: If you want to avoid saving when you exit just turn off
this minor mode.

For information about what is saved and restored and how to save
and restore additional information see the function
`winsav-save-configuration'.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote winsav-save-full-config) "winsav" "\
Saved current winsav configuration in directory DIRNAME.
Then change to this configuration.

See also `winsav-switch-config'.

\(fn DIRNAME)" nil nil)

(nxhtml-autoload (quote winsav-switch-config) "winsav" "\
Change to winsav configuration in directory DIRNAME.
If DIRNAME is the current winsav configuration directory then
offer to save it or restore it from saved values.

Otherwise, before switching offer to save the current winsav
configuration.  Then finally switch to the new winsav
configuration, creating it if it does not exist.

If option `desktop-save-mode' is on then buffers and files are also
restored and saved the same way.

See also option `winsav-save-mode' and command
`winsav-tell-configuration'.

\(fn DIRNAME)" t nil)

;;;***

;;;### (autoloads (winsav-rotate winsize-set-mode-line-colors winsize-save-window-configuration
;;;;;;  winsize-balance-siblings winsize-fit-frame-width winsize-fitw-and-maxh-frame
;;;;;;  winsize-max-frame-height winsize-fit-windows-to-desired-widths
;;;;;;  winsize-fit-window-to-desired-width resize-windows) "winsize"
;;;;;;  "util/winsize.el" (19502 22613))
;;; Generated autoloads from util/winsize.el
(web-autoload-require 'winsize 'lp '(nxhtml-download-root-url nil) "util/winsize" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote resize-windows) "winsize" "\
Start window resizing.
During resizing a window is selected.  You can move its
borders. In the default configuration the arrow keys moves the
right or bottom border if they are there. To move the opposite
border use S-arrowkeys.

You can also do other window operations, like splitting, deleting
and balancing the sizes.  The keybindings below describes the key
bindings during resizing:\\<winsize-keymap>

 `balance-windows'                       \\[balance-windows]
 `winsize-balance-siblings'              \\[winsize-balance-siblings]
 `winsize-fit-window-to-desired-width'   \\[winsize-fit-window-to-desired-width]
 `winsize-fit-windows-to-desired-widths' \\[winsize-fit-windows-to-desired-widths]
 `shrink-window-if-larger-than-buffer'   \\[shrink-window-if-larger-than-buffer]

 `winsav-rotate'  \\[winsav-rotate]

 `winsize-move-border-up'      \\[winsize-move-border-up]
 `winsize-move-border-down'    \\[winsize-move-border-down]
 `winsize-move-border-left'    \\[winsize-move-border-left]
 `winsize-move-border-right'   \\[winsize-move-border-right]

 `winsize-to-border-or-window-left'    \\[winsize-to-border-or-window-left]
 `winsize-to-border-or-window-up'      \\[winsize-to-border-or-window-up]
 `winsize-to-border-or-window-right'   \\[winsize-to-border-or-window-right]
 `winsize-to-border-or-window-down'    \\[winsize-to-border-or-window-down]

 `delete-window'                \\[delete-window]
 `delete-other-windows'         \\[delete-other-windows]
 `split-window-vertically'      \\[split-window-vertically]
 `split-window-horizontally'    \\[split-window-horizontally]
 `other-window'                 \\[other-window]

 `winsize-save-window-configuration'       \\[winsize-save-window-configuration]
 `winsize-next-window-configuration'       \\[winsize-next-window-configuration]
 `winsize-previous-window-configuration'   \\[winsize-previous-window-configuration]

 `mouse-set-point'   \\[mouse-set-point]

 `winsize-quit'               \\[winsize-quit]
 `winsize-stop-go-back'       \\[winsize-stop-go-back]
 `winsize-stop'               \\[winsize-stop]
 `winsize-stop-and-execute'   \\[winsize-stop-and-execute]

 `winsize-help'          \\[winsize-help]
 `describe-key'          \\[describe-key]
 `describe-key-briefly'  \\[describe-key-briefly]
 (All the normal help keys work, and at least those above will
  play well with resizing.)

You can use keys and commands listed in `winsize-let-me-use' as
normal.  This means that you by default can use your normal keys
for `forward-char', `backward-char', `next-line',
`previous-line' and what you have on HOME and END to move in the
windows.  That might sometimes be necessary to directly select a
window.  (You may however also use `other-window' or click with
the mouse, see below.)


The colors of the modelines are changed to those given in
`winsize-mode-line-colors' to indicate that you are resizing
windows.  To make this indication more prominent the text in the
selected window is marked with the face hold in the variable
`winsize-selected-window-face'.

The option `winsize-juris-way' decides how the borders to move
are selected. If this option is non-nil then the right or bottom
border are the ones that are moved with the arrow keys and the
opposite border with shift arrow keys.

If `winsize-juris-way' is nil then the following apply:

As you select other borders or move to new a window the mouse
pointer is moved inside the selected window to show which borders
are beeing moved. The mouse jumps a little bit to make its
position more visible. You can turn this off by customizing
`winsize-make-mouse-prominent'.

Which borders initially are choosen are controlled by the
variable `winsize-autoselect-borders'.

** Example: Border selection, movements and windows.

  Suppose you have a frame divided into windows like in the
  figure below.  If window B is selected when you start resizing
  then (with default settings) the borders marked with 'v' and
  'h' will be the ones that the arrow keys moves. To indicate
  this the mouse pointer is placed in the right lower corner of
  the selected window B.

    +----------+-----------+--------+
    |          |           v        |
    |          |           v        |
    |    A     |    _B_    v        |
    |          |           v        |
    |          |           v        |
    |          |         x v        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Now if you press M-<left> then the picture below shows what has
  happened. Note that the selected vertical border is now the one
  between A and B. The mouse pointer has moved to the
  corresponding corner in the window B, which is still selected.

    +----------+-----------+--------+
    |          v           |        |
    |          v           |        |
    |    A     v    _B_    |        |
    |          v           |        |
    |          v           |        |
    |          v x         |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Press M-<left> once again. This gives this picture:

    +----------+-----------+--------+
    |          v           |        |
    |          v           |        |
    |   _A_    v     B     |        |
    |          v           |        |
    |          v           |        |
    |        x v           |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+

  Note that the window A is now selected. However there is no
  border that could be moved to the left of this window (which
  would otherwise be chosen now) so the border between A and B is
  still the one that <left> and <right> moves. The mouse has
  moved to A.

  If we now delete window A the new situation will look like
  this:

    +----------+-----------+--------+
    |                      |        |
    |                      |        |
    |         _B_          |        |
    |                      |        |
    |                      |        |
    |                    x |        |
    +hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh+
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    |                    |          |
    +----------+---------+----------+



>>>> testing stuff >>>>
`help-mode-hook'
`temp-buffer-show-function'
`view-exit-action'
<<<<<<<<<<<<<<<<<<<<<<<

\(fn)" t nil)

(nxhtml-autoload (quote winsize-fit-window-to-desired-width) "winsize" "\
Adjust width of WINDOW to desired width for its buffer.
This will not delete any window but may widen the window as much
as possible up to desired width.

The desired width is defined by `winsize-desired-width'.  It can
a major mode specific (a number or `fill-column') or fall back
to a number or `fill-column'.

When used non-interactively ONLY-TRAILING can be non-nil and in
this case only the trailing edge of the window can change.

For non-interactive use you can also specify the wanted width in
DESIRED-WIDTH.

\(fn WINDOW ONLY-TRAILING DESIRED-WIDTH)" t nil)

(nxhtml-autoload (quote winsize-fit-windows-to-desired-widths) "winsize" "\
Fit window width to desired width for buffers.
Set widths by calling `winsize-fit-window-to-desired-width'.

Change windows in the order of left to right and only change
trailing edges.  (This means that the windows on the right edge
of the frame gets the resulting width of the changes to the width
of the windows left of them.)

\(fn)" t nil)

(nxhtml-autoload (quote winsize-max-frame-height) "winsize" "\
Maximize frame height.

\(fn)" t nil)

(nxhtml-autoload (quote winsize-fitw-and-maxh-frame) "winsize" "\
Fit width and max height of frame.
Just like `winsize-fit-frame-width' + `winsize-max-frame-height'.

\(fn)" t nil)

(nxhtml-autoload (quote winsize-fit-frame-width) "winsize" "\
Fit frame FRAME to buffers desired width.
Call `winsize-fit-window-to-desired-width' for all windows and
adjust frame width to the resulting width.

\(fn)" t nil)

(nxhtml-autoload (quote winsize-balance-siblings) "winsize" "\
Make current window siblings the same height or width.
It works the same way as `balance-windows', but only for the
current window and its siblings.

\(fn)" t nil)

(nxhtml-autoload (quote winsize-save-window-configuration) "winsize" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote winsize-set-mode-line-colors) "winsize" "\
Turn mode line colors on if ON is non-nil, otherwise off.

\(fn ON)" nil nil)

(nxhtml-autoload (quote winsav-rotate) "winsize" "\
Rotate window configuration on selected frame.
MIRROR should be either 'mirror-left-right, 'mirror-top-bottom or
nil.  In the first case the window configuration is mirrored
vertically and in the second case horizontally.  If MIRROR is nil
the configuration is not mirrored.

If TRANSPOSE is non-nil then the window structure is transposed
along the diagonal from top left to bottom right (in analogy with
matrix transosition).

If called interactively MIRROR will is 'mirror-left-right by
default, but 'mirror-top-bottom if called with prefix.  TRANSPOSE
is t. This mean that the window configuration will be turned one
quarter clockwise (or counter clockwise with prefix).

\(fn MIRROR TRANSPOSE)" t nil)

;;;***

;;;### (autoloads (wrap-to-fill-column-mode wrap-to-fill-left-marg-modes
;;;;;;  wrap-to-fill-left-marg wrap-to-fill) "wrap-to-fill" "util/wrap-to-fill.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/wrap-to-fill.el
(web-autoload-require 'wrap-to-fill 'lp '(nxhtml-download-root-url nil) "util/wrap-to-fill" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote wrap-to-fill) (quote custom-loads)))) (if (member (quote "wrap-to-fill") loads) nil (put (quote wrap-to-fill) (quote custom-loads) (cons (quote "wrap-to-fill") loads))))

(defvar wrap-to-fill-left-marg nil "\
Left margin handling for `wrap-to-fill-column-mode'.
Used by `wrap-to-fill-column-mode'. If nil then center the
display columns. Otherwise it should be a number which will be
the left margin.")

(custom-autoload (quote wrap-to-fill-left-marg) "wrap-to-fill" t)

(defvar wrap-to-fill-left-marg-modes (quote (text-mode fundamental-mode)) "\
Major modes where `wrap-to-fill-left-marg' may be nil.")

(custom-autoload (quote wrap-to-fill-left-marg-modes) "wrap-to-fill" t)

(nxhtml-autoload (quote wrap-to-fill-column-mode) "wrap-to-fill" "\
Use a column of width `fill-column' to display buffer in windows.
By default the column is centered, but this can be changed with
the option `wrap-to-fill-left-marg'.

This mode turns on/off `visual-indent-mode'.

When turning this mode on `visual-line-mode' is also turned on.
This is however not reset when turning off this mode.

Key bindings added by this minor mode:

\\{wrap-to-fill-column-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (xhtml-help xhtml-help-show-tag-ref xhtml-help-tag-at-point
;;;;;;  xhtml-help-show-css-ref) "xhtml-help" "nxhtml/xhtml-help.el"
;;;;;;  (19502 22613))
;;; Generated autoloads from nxhtml/xhtml-help.el
(web-autoload-require 'xhtml-help 'lp '(nxhtml-download-root-url nil) "nxhtml/xhtml-help" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote xhtml-help-show-css-ref) "xhtml-help" "\
Show CSS reference for CSS property name at point.

\(fn)" t nil)

(nxhtml-autoload (quote xhtml-help-tag-at-point) "xhtml-help" "\
Get xhtml tag name at or before point.

\(fn)" nil nil)

(nxhtml-autoload (quote xhtml-help-show-tag-ref) "xhtml-help" "\
Show xhtml reference for tag name at or before point.

\(fn)" t nil)

(let ((loads (get (quote xhtml-help) (quote custom-loads)))) (if (member (quote "xhtml-help") loads) nil (put (quote xhtml-help) (quote custom-loads) (cons (quote "xhtml-help") loads))))

;;;***

;;;### (autoloads (zencoding-preview zencoding-expand-yas zencoding-mode
;;;;;;  zencoding-expand-line zencoding) "zencoding-mode" "util/zencoding-mode.el"
;;;;;;  (19502 22614))
;;; Generated autoloads from util/zencoding-mode.el
(web-autoload-require 'zencoding-mode 'lp '(nxhtml-download-root-url nil) "util/zencoding-mode" nxhtml-install-dir 'nxhtml-byte-compile-file)


(let ((loads (get (quote zencoding) (quote custom-loads)))) (if (member (quote "zencoding-mode") loads) nil (put (quote zencoding) (quote custom-loads) (cons (quote "zencoding-mode") loads))))

(nxhtml-autoload (quote zencoding-expand-line) "zencoding-mode" "\
Replace the current line's zencode expression with the corresponding expansion.
If prefix ARG is given or region is visible call `zencoding-preview' to start an
interactive preview.

Otherwise expand line directly.

For more information see `zencoding-mode'.

\(fn ARG)" t nil)

(nxhtml-autoload (quote zencoding-mode) "zencoding-mode" "\
Minor mode for writing HTML and CSS markup.
With zen coding for HTML and CSS you can write a line like

  ul#name>li.item*2

and have it expanded to

  <ul id=\"name\">
    <li class=\"item\"></li>
    <li class=\"item\"></li>
  </ul>

This minor mode defines keys for quick access:

\\{zencoding-mode-keymap}

Home page URL `http://www.emacswiki.org/emacs/ZenCoding'.

See also `zencoding-expand-line'.

\(fn &optional ARG)" t nil)

(nxhtml-autoload (quote zencoding-expand-yas) "zencoding-mode" "\
Not documented

\(fn)" t nil)

(nxhtml-autoload (quote zencoding-preview) "zencoding-mode" "\
Expand zencode between BEG and END interactively.
This will show a preview of the expanded zen code and you can
accept it or skip it.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/vendor/nxhtml/autostart.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/autostart22.el" "../../../../.emacs.d/vendor/nxhtml/etc/schema/schema-path-patch.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml-base.el" "../../../../.emacs.d/vendor/nxhtml/nxhtml/html-imenu.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/html-move.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/html-quote.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/nxhtml-autoload.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/nxhtml-strval.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/nxhtmljs.el" "../../../../.emacs.d/vendor/nxhtml/nxhtml/outline-magic.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/nxhtml/wtest.el" "../../../../.emacs.d/vendor/nxhtml/related/flymake-helpers.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/related/flymakemsg.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/related/php-imenu.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/angus77-setup-jde.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/emacstest-suites.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/ert2.el" "../../../../.emacs.d/vendor/nxhtml/tests/hfy-test.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/inemacs/bug1013.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/mumamo-test.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/tests/nxhtmltest-helpers.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/appmenu-fold.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/backtr.el" "../../../../.emacs.d/vendor/nxhtml/util/css-simple-completion.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/custsets.el" "../../../../.emacs.d/vendor/nxhtml/util/ecb-batch-compile.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/fupd.el" "../../../../.emacs.d/vendor/nxhtml/util/idn.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/mumamo-trace.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/new-key-seq-widget.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/org-panel.el" "../../../../.emacs.d/vendor/nxhtml/util/ourcomments-widgets.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/rxi.el" "../../../../.emacs.d/vendor/nxhtml/util/tipframe.el"
;;;;;;  "../../../../.emacs.d/vendor/nxhtml/util/win-alg.el" "../../../../.emacs.d/vendor/nxhtml/web-autoload.el")
;;;;;;  (19502 23092 594035))

;;;***

;;;### (autoloads (nxhtml-byte-recompile-file nxhtml-byte-compile-file
;;;;;;  nxhtml-get-missing-files nxhtml-update-existing-files nxhtml-setup-download-all
;;;;;;  nxhtml-setup-auto-download nxhtml-setup-install) "nxhtml-web-vcs"
;;;;;;  "nxhtml-web-vcs.el" (19502 22614))
;;; Generated autoloads from nxhtml-web-vcs.el
(web-autoload-require 'nxhtml-web-vcs 'lp '(nxhtml-download-root-url nil) "nxhtml-web-vcs" nxhtml-install-dir 'nxhtml-byte-compile-file)


(nxhtml-autoload (quote nxhtml-setup-install) "nxhtml-web-vcs" "\
Setup and start nXhtml installation.

This is for installation and updating directly from the nXhtml
development sources.

There are two different ways to install:

  (1) Download all at once: `nxhtml-setup-download-all'
  (2) Automatically download part by part: `nxhtml-setup-auto-download'

You can convert between those ways by calling this function again.
You can also do this by setting the option `nxhtml-autoload-web' yourself.

When you have nXhtml installed you can update it:

  (3) Update new files in nXhtml: `nxhtml-update-existing-files'

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

If you want to test auto download (but not use it further) there
is a special function for that, you answer T here:

   (T) Test automatic download part by part: `nxhtml-setup-test-auto-download'

======
*Note*
If you want to download a zip file with latest released version instead then
please see URL `http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html'.

\(fn WAY)" t nil)

(nxhtml-autoload (quote nxhtml-setup-auto-download) "nxhtml-web-vcs" "\
Set up to autoload nXhtml files from the web.

This function will download some initial files and then setup to
download the rest when you need them.

Files will be downloaded under the directory root you specify in
DL-DIR.

Note that files will not be upgraded automatically.  The auto
downloading is just for files you are missing. (This may change a
bit in the future.) If you want to upgrade those files that you
have downloaded you can just call `nxhtml-update-existing-files'.

You can easily switch between this mode of downloading or
downloading the whole of nXhtml by once.  To switch just call the
command `nxhtml-setup-install'.

See also the command `nxhtml-setup-download-all'.

Note: If your nXhtml is to old you can't use this function
      directly.  You have to upgrade first, se the function
      above. Version 2.07 or above is good for this.

\(fn DL-DIR)" t nil)

(nxhtml-autoload (quote nxhtml-setup-download-all) "nxhtml-web-vcs" "\
Download or update all of nXhtml.

You can download all if nXhtml with this command.

To update existing files use `nxhtml-update-existing-files'.

If you want to download only those files you are actually using
then call `nxhtml-setup-auto-download' instead.

See the command `nxhtml-setup-install' for a convenient way to
call these commands.

For more information about auto download of nXhtml files see
`nxhtml-setup-auto-download'.

\(fn DL-DIR)" t nil)

(nxhtml-autoload (quote nxhtml-update-existing-files) "nxhtml-web-vcs" "\
Update existing nXhtml files from the development sources.
Only files you already have will be updated.

Note that this works both if you have setup nXhtml to auto
download files as you need them or if you have downloaded all of
nXhtml at once.

For more information about installing and updating nXhtml see the
command `nxhtml-setup-install'.

\(fn)" t nil)

(nxhtml-autoload (quote nxhtml-get-missing-files) "nxhtml-web-vcs" "\
Not documented

\(fn SUB-DIR FILE-NAME-LIST)" nil nil)

(nxhtml-autoload (quote nxhtml-byte-compile-file) "nxhtml-web-vcs" "\
Not documented

\(fn FILE &optional LOAD)" nil nil)

(nxhtml-autoload (quote nxhtml-byte-recompile-file) "nxhtml-web-vcs" "\
Byte recompile FILE file if necessary.
For more information see `nxhtml-byte-compile-file'.
Loading is done if recompiled and LOAD is t.

\(fn FILE &optional LOAD)" t nil)

;;;***
