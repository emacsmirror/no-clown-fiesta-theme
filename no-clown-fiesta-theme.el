;;; no-clown-fiesta-theme.el --- Not-so-colorful-theme -*- lexical-binding: t -*-

;; URL: https://codeberg.org/ranmaru22/no-clown-fiesta-theme.el
;; Author: ranmaru22
;; Version: 1.2
;; Package-Requires: ((emacs "26.1") (autothemer "0.2"))

;; Copyright (c) 2022-2023 ranmaru22
;;
;; This program is free software: you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation, either version 3 of the License, or any later version.
;;
;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
;; details.
;;
;; You should have received a copy of the GNU General Public License along with
;; this program. If not, see http://www.gnu.org/licenses/.

;;; Commentary:
;; Color theme for Emacs 26+ that does not look like a unicorn farted on your
;; screen. Based on no-clown-fiesta.nvim by aktersnurra, converted and extended
;; for Emacs by ranmaru22.
;;
;; Original nvim theme: https://github.com/aktersnurra/no-clown-fiesta.nvim

;;; Code:
(require 'autothemer)

;;;###autoload
(and (or load-file-name buffer-file-name)
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory
                    (or load-file-name buffer-file-name)))))

(autothemer-deftheme
 no-clown-fiesta
 "Color theme for Emacs 26+ that does not look like a clown puked up the source code."

 ((((class color) (min-colors #xFFFFFF))) ;; GUI only for now

  ;; Color palette
  (fg                 "#E1E1E1")
  (bg                 "#151515")
  (_bg-darker         "#101010")
  (alt-bg             "#202020")
  (accent             "#242424")
  (white              "#E1E1E1")
  (true-white         "#FFFFFF")
  (dark-gray          "#2A2A2A")
  (gray               "#424242")
  (medium-gray        "#727272")
  (light-gray         "#AFAFAF")
  (blue               "#A5D6FF")
  (gray-blue          "#7E97AB")
  (medium-gray-blue   "#A2B5C1")
  (dark-gray-blue     "#424952")
  (cyan               "#88afa2")
  (red                "#CC6666")
  (green              "#90A959")
  (light-green        "#77dd77")
  (pale-green         "#61A06A")
  (yellow             "#F4BF75")
  (pale-yellow        "#AF9A6A")
  (orange             "#FFA557")
  (purple             "#AA749F")
  (pale-purple        "#b790d4")
  (_dark-purple       "#2a2a66")
  (magenta            "#EFADF9")
  (cursor-bg          "#D0D0D0")
  (cursor-fg          "#151515")
  (sign-add           "#90A959")
  (sign-change        "#82a8c8")
  (sign-delete        "#AC4142")
  (error-red          "#AC4142")
  (warning-orange     "#F4BF75")
  (info-purple        "#AA58DD")
  (success-green      "#77dd77")
  (hint-blue          "#A5D6FF")
  (hint-green         "#909909")
  (magit-light-green  "#4f5c32")
  (_magit-blue        "#33424f")
  (magit-green        "#3f4928")
  (magit-light-red    "#4f2929")
  (magit-red          "#3f2121")

  ;; Rainbow mappings (thanks Prot for the idea!)
  (rainbow-1 medium-gray-blue)
  (rainbow-2 gray-blue)
  (rainbow-3 cyan)
  (rainbow-4 green)
  (rainbow-5 blue)
  (rainbow-6 purple)
  (rainbow-7 pale-purple)
  (rainbow-8 pale-yellow)
  (rainbow-9 pale-green))

 ;; Basic
 ((border                   (:background alt-bg :foreground medium-gray))
  (cursor                   (:background cursor-bg :foreground cursor-fg))
  (hl-line                  (:background dark-gray))
  (line-number              (:foreground gray))
  (line-number-current-line (:background dark-gray :foreground light-gray))
  (default                  (:foreground fg :background bg))
  (fringe                   (:background 'unspecified :foreground light-gray))
  (vertical-border          (:background 'unspecified :foreground dark-gray))
  (link                     (:foreground hint-blue :underline t))
  (link-visited             (:foreground pale-purple :underline t))
  (match                    (:background accent))
  (highlight                (:background dark-gray-blue))
  (shadow                   (:foreground gray))
  (minibuffer-prompt        (:foreground pale-purple))
  (region                   (:background gray :foreground 'unspecified))
  (secondary-selection      (:background medium-gray :foreground 'unspecified))
  (trailing-whitespace      (:foreground 'unspecified :background error-red))
  (tooltip                  (:background alt-bg :foreground fg))
  (child-frame-border       (:background dark-gray))

  (error                    (:foreground error-red :weight 'bold))
  (warning                  (:foreground warning-orange :weight 'bold))
  (success                  (:foreground success-green :weight 'bold))

  ;; Term colors
  (term-color-black   (:foreground gray :background medium-gray))
  (term-color-red     (:foreground red :background error-red))
  (term-color-green   (:foreground green :background light-green))
  (term-color-blue    (:foreground gray-blue :background blue))
  (term-color-yellow  (:foreground orange :background yellow))
  (term-color-magenta (:foreground purple :background magenta))
  (term-color-cyan    (:foreground cyan :background sign-change))
  (term-color-white   (:foreground white :background true-white))

  ;; ANSI colors
  (ansi-color-black          (:foreground gray :background gray))
  (ansi-color-red            (:foreground red :background red))
  (ansi-color-green          (:foreground green :background green))
  (ansi-color-blue           (:foreground gray-blue :background gray-blue))
  (ansi-color-yellow         (:foreground orange :background orange))
  (ansi-color-magenta        (:foreground purple :background purple))
  (ansi-color-cyan           (:foreground cyan :background cyan))
  (ansi-color-gray           (:foreground white :background white))
  (ansi-color-bright-black   (:foreground medium-gray :background medium-gray))
  (ansi-color-bright-red     (:foreground error-red :background error-red))
  (ansi-color-bright-green   (:foreground light-green :background light-green))
  (ansi-color-bright-blue    (:foreground blue :background blue))
  (ansi-color-bright-yellow  (:foreground yellow :background yellow))
  (ansi-color-bright-magenta (:foreground magenta :background magenta))
  (ansi-color-bright-cyan    (:foreground sign-change :background sign-change))
  (ansi-color-bright-gray    (:foreground true-white :background true-white))

  ;; Pulse
  (pulse-highlight-start-face (:background medium-gray :extend t))

  ;; Show paren
  (show-paren-match            (:foreground blue :weight 'bold :underline t))
  (show-paren-match-expression (:foreground blue :weight 'bold :underline t))
  (show-paren-mismatch         (:background red :weight 'bold :underline t))

  ;; Rainbow delimiter
  (rainbow-delimiters-base-error-face (:foreground error-red :weight 'bold))
  (rainbow-delimiters-base-face       (:foreground fg))
  (rainbow-delimiters-depth-1-face    (:foreground rainbow-1))
  (rainbow-delimiters-depth-2-face    (:foreground rainbow-2))
  (rainbow-delimiters-depth-3-face    (:foreground rainbow-3))
  (rainbow-delimiters-depth-4-face    (:foreground rainbow-4))
  (rainbow-delimiters-depth-5-face    (:foreground rainbow-5))
  (rainbow-delimiters-depth-6-face    (:foreground rainbow-6))
  (rainbow-delimiters-depth-7-face    (:foreground rainbow-7))
  (rainbow-delimiters-depth-8-face    (:foreground rainbow-8))
  (rainbow-delimiters-depth-9-face    (:foreground rainbow-9))
  (rainbow-delimiters-mismatched-face (:foreground error-red :weight 'bold))
  (rainbow-delimiters-unmatched-face  (:foreground error-red :weight 'bold))

  ;; Mode-line
  (mode-line          (:foreground fg
                       :background dark-gray
                       :box (:line-width 4 :color dark-gray)))
  (mode-line-inactive (:foreground medium-gray
                       :background alt-bg
                       :box (:line-width 4 :color alt-bg)))

  ;; Tab-bar
  (tab-bar                    (:foreground medium-gray
                               :background dark-gray
                               :box (:line-width 4 :color dark-gray)))
  (tab-bar-tab                (:foreground fg))
  (tab-bar-tab-group-current  (:foreground fg :weight 'bold :underline t))
  (tab-bar-tab-inactive       (:foreground medium-gray))
  (tab-bar-tab-ungrouped      (:foreground medium-gray))
  (tab-bar-tab-group-inactive (:foreground medium-gray :underline t))

  ;; Font lock
  (font-lock-builtin-face           (:foreground cyan))
  (font-lock-comment-face           (:foreground medium-gray))
  (font-lock-comment-delimiter-face (:foreground medium-gray))
  (font-lock-constant-face          (:foreground white))
  (font-lock-doc-face               (:foreground light-gray))
  (font-lock-doc-markup-face        (:foreground blue))
  (font-lock-doc-string-face        (:foreground medium-gray-blue))
  (font-lock-function-name-face     (:foreground cyan))
  (font-lock-keyword-face           (:foreground gray-blue :weight 'bold))
  (font-lock-preprocessor-face      (:foreground medium-gray-blue))
  (font-lock-reference-face         (:foreground white))
  (font-lock-string-face            (:foreground medium-gray-blue))
  (font-lock-type-face              (:foreground white :weight 'bold))
  (font-lock-number-face            (:foreground red))
  (font-lock-variable-name-face     (:foreground white))
  (font-lock-warning-face           (:foreground warning-orange))

  ;; Highlight number
  (highlight-numbers-number (:foreground red))

  ;; HL Todo
  (hl-todo (:foreground yellow :weight 'bold))

  ;; Tree Sitter
  (tree-sitter-hl-face:attribute             (:foreground white))
  (tree-sitter-hl-face:comment               (:foreground medium-gray))
  (tree-sitter-hl-face:constant              (:foreground white))
  (tree-sitter-hl-face:constant.builtin      (:foreground white))
  (tree-sitter-hl-face:constructor           (:foreground white))
  (tree-sitter-hl-face:doc                   (:foreground light-gray))
  (tree-sitter-hl-face:escape                (:foreground medium-gray-blue))
  (tree-sitter-hl-face:function              (:foreground cyan))
  (tree-sitter-hl-face:function.builtin      (:foreground cyan))
  (tree-sitter-hl-face:function.call         (:foreground cyan))
  (tree-sitter-hl-face:function.macro        (:foreground cyan))
  (tree-sitter-hl-face:function.special      (:foreground cyan))
  (tree-sitter-hl-face:keyword               (:foreground gray-blue :weight 'bold))
  (tree-sitter-hl-face:label                 (:foreground white))
  (tree-sitter-hl-face:method                (:foreground cyan))
  (tree-sitter-hl-face:method.call           (:foreground cyan))
  (tree-sitter-hl-face:number                (:foreground red))
  (tree-sitter-hl-face:operator              (:foreground white))
  (tree-sitter-hl-face:property              (:foreground white))
  (tree-sitter-hl-face:property.definition   (:foreground white))
  (tree-sitter-hl-face:punctuation           (:foreground white))
  (tree-sitter-hl-face:punctuation.bracket   (:foreground white))
  (tree-sitter-hl-face:punctuation.delimiter (:foreground white))
  (tree-sitter-hl-face:punctuation.special   (:foreground medium-gray))
  (tree-sitter-hl-face:string                (:foreground medium-gray-blue))
  (tree-sitter-hl-face:string.special        (:foreground medium-gray-blue))
  (tree-sitter-hl-face:tag                   (:foreground pale-purple))
  (tree-sitter-hl-face:type                  (:foreground white))
  (tree-sitter-hl-face:type.argument         (:foreground white))
  (tree-sitter-hl-face:type.builtin          (:foreground white))
  (tree-sitter-hl-face:type.parameter        (:foreground white))
  (tree-sitter-hl-face:type.super            (:foreground white))
  (tree-sitter-hl-face:variable              (:foreground white))
  (tree-sitter-hl-face:variable.builtin      (:foreground white))
  (tree-sitter-hl-face:variable.parameter    (:foreground white))
  (tree-sitter-hl-face:variable.special      (:foreground white))

  ;; Git
  (git-commit-summary          (:foreground white))
  (git-commit-overlong-summary (:foreground error-red))

  ;; Magit
  (magit-branch                 (:foreground cyan))
  (magit-diff-hunk-header       (:background alt-bg))
  (magit-diff-file-header       (:background alt-bg))
  (magit-log-sha1               (:foreground red))
  (magit-log-author             (:foreground green))
  (magit-diffstat-added         (:foreground sign-add))
  (magit-diffstat-removed       (:foreground sign-delete))
  (magit-diff-added             (:background magit-green))
  (magit-diff-removed           (:background magit-red))
  (magit-diff-added-highlight   (:background magit-light-green))
  (magit-diff-removed-highlight (:background magit-light-red))
  (magit-bisect-bad             (:inherit 'error))
  (magit-bisect-good            (:inherit 'success))
  (magit-bisect-skip            (:inherit 'warning))
  (magit-blame-date             (:foreground blue))
  (magit-blame-dimmed           (:inherit 'shadow))
  (magit-blame-hash             (:foreground orange))
  (magit-blame-heading          (:background alt-bg :extend t))
  (magit-blame-highlight        (:foreground yellow))
  (magit-blame-margin           (:foreground medium-gray-blue))
  (magit-blame-name             (:foreground magenta))
  (magit-blame-summary          (:foreground cyan))
  (magit-branch--local          (:foreground blue))
  (magit-branch-remote          (:foreground magenta))
  (magit-branch-remote-head     (:foreground magenta :box t))
  (magit-branch-upstream        (:inherit 'bold))
  (magit-branch-warning         (:inherit 'warning))
  (magit-cherry-equivalent      (:background alt-bg :foreground magenta))
  (magit-cherry-unmatched       (:background alt-bg :foreground cyan))

  ;; git-gutter
  (git-gutter:added       (:foreground sign-add))
  (git-gutter:deleted     (:foreground sign-delete))
  (git-gutter:modified    (:foreground sign-change))

  ;; isearch (and lazy-highlight)
  (lazy-highlight  (:background 'unspecified :foreground orange))
  (isearch         (:background 'unspecified :foreground orange :weight 'bold))
  (isearch-group-1 (:foreground fg :background magenta))
  (isearch-group-2 (:foreground fg :background purple))
  (isearch-fail    (:background error-red :foreground fg))

  ;; Anzu
  (anzu-match-1            (:foreground orange))
  (anzu-match-2            (:foreground magenta))
  (anzu-match-3            (:foreground purple))
  (anzu-mode-line          (:foreground orange))
  (anzu-mode-line-no-match (:foreground red))
  (anzu-replace-highlight  (:foreground orange :weight 'bold))
  (anzu-replace-to         (:foreground yellow))

  ;; Vertico
  (vertico-current     (:inherit 'highlight))
  (vertico-group-title (:foreground medium-gray :weight 'bold))

  ;; Consult
  (consult-line-number-prefix  (:inherit 'line-number))
  (consult-line-number-wrapped (:foreground gray-blue))

  ;; Marginalia
  (marginalia-documentation (:foreground medium-gray))
  (marginalia-file-name     (:foreground medium-gray))

  ;; Orderless
  (orderless-match-face-0 (:foreground orange :weight 'bold))
  (orderless-match-face-1 (:foreground blue :weight 'bold))
  (orderless-match-face-2 (:foreground magenta :weight 'bold))
  (orderless-match-face-3 (:foreground light-green :weight 'bold))

  ;; Completion preview
  (completion-preview        (:background 'unspecified :foreground medium-gray))
  (completion-preview-common (:background 'unspecified :foreground medium-gray))
  (completion-preview-exact  (:background 'unspecified :foreground hint-blue))

  ;; Corfu
  (corfu-current                            (:inherit 'highlight))
  (corfu-bar                                (:background medium-gray))
  (corfu-border                             (:background medium-gray))
  (corfu-default                            (:background alt-bg))
  (corfu-annotations                        (:foreground medium-gray))
  (corfu-deprecated                         (:foreground medium-gray :strike-through t))
  (corfu-echo                               (:foreground medium-gray))
  (corfu-candidate-overlay-face             (:background 'unspecified :foreground medium-gray))
  (corfu-candidate-overlay-face-exact-match (:background 'unspecified :foreground hint-blue))

  ;; Company (just for compatibility ... use Corfu instead)
  (company-tooltip                      (:background alt-bg))
  (company-tooltip-annotation           (:background alt-bg))
  (company-tooltip-annotation-selection (:background dark-gray))
  (company-tooltip-selection            (:background dark-gray))
  (company-scrollbar-fg                 (:background alt-bg))
  (company-scrollbar-bg                 (:background medium-gray))
  (company-preview                      (:background 'unspecified
                                         :foreground green))
  (company-preview-common               (:background 'unspecified
                                         :foreground green))

  ;; org-mode
  (org-default          (:foreground fg))
  (org-block            (:inherit 'fixed-pitch))
  (org-level-1          (:foreground rainbow-1 :weight 'bold))
  (org-level-2          (:foreground rainbow-2 :weight 'bold))
  (org-level-3          (:foreground rainbow-3 :weight 'bold))
  (org-level-4          (:foreground rainbow-4 :weight 'bold))
  (org-level-5          (:foreground rainbow-5 :weight 'bold))
  (org-level-6          (:foreground rainbow-6 :weight 'bold))
  (org-level-7          (:foreground rainbow-7 :weight 'bold))
  (org-level-8          (:foreground rainbow-8 :weight 'bold))
  (org-quote            (:foreground gray-blue))
  (org-code             (:foreground green))
  (org-verbatim         (:foreground blue))
  (org-inline-src-block (:foreground green))
  (org-todo             (:foreground red))
  (org-done             (:foreground success-green))
  (org-column           (:background 'unspecified))
  (org-column-title     (:background 'unspecified :weight 'bold :underline t))

  ;; Dired
  (dired-directory (:foreground blue :weight 'bold))
  (dired-ignored   (:foreground gray-blue))
  (dired-header    (:foreground light-gray :weight 'bold :underline t))

  ;; Flymake
  (flymake-error   (:underline (:style 'wave :color error-red)))
  (flymake-warning (:underline (:style 'wave :color warning-orange)))
  (flymake-note    (:underline (:style 'wave :color hint-blue)))

  ;; Flycheck
  (flycheck-error              (:underline (:style 'wave :color error-red)))
  (flycheck-warning            (:underline (:style 'wave :color warning-orange)))
  (flycheck-info               (:underline (:style 'wave :color hint-blue)))
  (flycheck-fringe-error       (:inherit 'error))
  (flycheck-fringe-warning     (:inherit 'warning))
  (flycheck-fringe-info        (:foreground hint-blue :weight 'bold))
  (flycheck-error-list-error   (:inherit 'error))
  (flycheck-error-list-warning (:inherit 'warning))
  (flycheck-error-list-info    (:foreground hint-blue :weight 'bold))

  ;; Compilation
  (compilation-info (:foreground hint-blue))

  ;; diredfl
  (diredfl-compressed-file-name   (:foreground gray-blue))
  (diredfl-compressed-file-suffix (:foreground gray-blue))
  (diredfl-date-time              (:foreground medium-gray-blue))
  (diredfl-deletion               (:strike-through t))
  (diredfl-deletion-file-name     (:foreground red :strike-through t))
  (diredfl-dir-heading            (:foreground yellow
                                   :weight 'bold
                                   :underline t))
  (diredfl-dir-name               (:foreground cyan))
  (diredfl-dir-priv               (:foreground cyan))
  (diredfl-exec-priv              (:foreground green))
  (diredfl-executable-tag         (:foreground green))
  (diredfl-file-name              (:foreground white))
  (diredfl-file-suffix            (:foreground white))
  (diredfl-flag-mark              (:background gray-blue))
  (diredfl-flag-mark-line         (:background gray-blue))
  (diredfl-ignored-file-name      (:foreground gray))
  (diredfl-link-priv              (:foreground magenta))
  (diredfl-no-priv                (:foreground gray))
  (diredfl-number                 (:foreground red))
  (diredfl-other-priv             (:foreground white))
  (diredfl-rare-priv              (:foreground purple))
  (diredfl-read-priv              (:foreground yellow))
  (diredfl-symlink                (:foreground magenta))
  (diredfl-tagged-autofile-name   (:foreground white))
  (diredfl-write-priv             (:foreground red))

  ;; Treemacs
  (treemacs-directory-face       (:foreground white))
  (treemacs-root-face            (:foreground yellow
                                  :weight 'bold
                                  :underline t))
  (treemacs-git-added-face       (:foreground green))
  (treemacs-git-commit-diff-face (:foreground blue))
  (treemacs-git-conflict-face    (:foreground red))
  (treemacs-git-ignored-face     (:foreground gray))
  (treemacs-git-modified-face    (:foreground blue))
  (treemacs-marked-file-face     (:inherit 'highlight))

  ;; web-mode
  (web-mode-current-element-highlight-face (:background 'unspecified
                                            :foreground blue
                                            :weight 'bold))
  (web-mode-current-column-highlight-face  (:background dark-gray))

  ;; ERC
  (erc-notice-face    (:foreground purple))
  (erc-timestamp-face (:foreground medium-gray-blue))
  (erc-input-face     (:foreground yellow))
  (erc-my-nick-face   (:foreground yellow))

  ;; Gnus
  (gnus-server-agent                 (:foreground hint-blue))
  (gnus-server-cloud                 (:foreground hint-green :weight 'bold))
  (gnus-server-cloud-host            (:foreground hint-green :slant 'italic))
  (gnus-server-closed                (:foreground warning-orange :slant 'italic))
  (gnus-server-denied                (:foreground error-red :weight 'bold))
  (gnus-server-opened                (:foreground success-green :weight 'bold))
  (gnus-server-offline               (:foreground light-gray :weight 'bold))
  (gnus-summary-cancelled            (:foreground light-gray :strike-through t))
  (gnus-summary-selected             (:background dark-gray))
  (gnus-summary-low-unread           (:foreground white :slant 'italic))
  (gnus-summary-low-read             (:foreground light-gray :slant 'italic))
  (gnus-summary-low-ticked           (:foreground yellow :slant 'italic))
  (gnus-summary-low-ancient          (:foreground gray-blue :slant 'italic))
  (gnus-summary-low-undownloaded     (:foreground medium-gray :slant 'italic))
  (gnus-summary-normal-unread        (:foreground white))
  (gnus-summary-normal-read          (:foreground light-gray))
  (gnus-summary-normal-ticked        (:foreground yellow))
  (gnus-summary-normal-ancient       (:foreground gray-blue))
  (gnus-summary-normal-undownloaded  (:foreground medium-gray))
  (gnus-summary-high-unread          (:foreground white :weight 'bold))
  (gnus-summary-high-read            (:foreground light-gray :weight 'bold))
  (gnus-summary-high-ticked          (:foreground yellow :weight 'bold))
  (gnus-summary-high-ancient         (:foreground gray-blue :weight 'bold))
  (gnus-summary-high-undownloaded    (:foreground medium-gray :weight 'bold))
  (gnus-header                       (:inherit 'fixed-pitch :foreground pale-purple))
  (gnus-header-content               (:inherit 'fixed-pitch :foreground medium-gray-blue))
  (gnus-header-name                  (:inherit 'fixed-pitch :foreground pale-purple :weight 'bold))
  (gnus-header-from                  (:inherit 'fixed-pitch :foreground orange :weight 'bold))
  (gnus-header-subject               (:inherit 'fixed-pitch :foreground blue))
  (gnus-header-newsgroups            (:inherit 'fixed-pitch :foreground purple :slant 'italic))
  (gnus-signature                    (:foreground light-gray :slant 'italic))
  (gnus-button                       (:foreground medium-gray-blue :underline t))
  (gnus-group-news-1                 (:foreground rainbow-1 :weight 'bold))
  (gnus-group-news-2                 (:foreground rainbow-2 :weight 'bold))
  (gnus-group-news-3                 (:foreground rainbow-3 :weight 'bold))
  (gnus-group-news-4                 (:foreground rainbow-4 :weight 'bold))
  (gnus-group-news-5                 (:foreground rainbow-5 :weight 'bold))
  (gnus-group-news-6                 (:foreground rainbow-6 :weight 'bold))
  (gnus-group-news-low               (:foreground rainbow-7 :weight 'bold))
  (gnus-group-news-1-empty           (:foreground rainbow-1))
  (gnus-group-news-2-empty           (:foreground rainbow-2))
  (gnus-group-news-3-empty           (:foreground rainbow-3))
  (gnus-group-news-4-empty           (:foreground rainbow-4))
  (gnus-group-news-5-empty           (:foreground rainbow-5))
  (gnus-group-news-6-empty           (:foreground rainbow-6))
  (gnus-group-news-low-empty         (:foreground rainbow-7))
  (gnus-group-mail-1                 (:foreground rainbow-1 :weight 'bold))
  (gnus-group-mail-2                 (:foreground rainbow-2 :weight 'bold))
  (gnus-group-mail-3                 (:foreground rainbow-3 :weight 'bold))
  (gnus-group-mail-4                 (:foreground rainbow-4 :weight 'bold))
  (gnus-group-mail-5                 (:foreground rainbow-5 :weight 'bold))
  (gnus-group-mail-6                 (:foreground rainbow-6 :weight 'bold))
  (gnus-group-mail-low               (:foreground rainbow-7 :weight 'bold))
  (gnus-group-mail-1-empty           (:foreground rainbow-1))
  (gnus-group-mail-2-empty           (:foreground rainbow-2))
  (gnus-group-mail-3-empty           (:foreground rainbow-3))
  (gnus-group-mail-4-empty           (:foreground rainbow-4))
  (gnus-group-mail-5-empty           (:foreground rainbow-5))
  (gnus-group-mail-6-empty           (:foreground rainbow-6))
  (gnus-group-mail-low-empty         (:foreground rainbow-7))
  (gnus-cite-1                       (:foreground rainbow-1))
  (gnus-cite-2                       (:foreground rainbow-2))
  (gnus-cite-3                       (:foreground rainbow-3))
  (gnus-cite-4                       (:foreground rainbow-4))
  (gnus-cite-5                       (:foreground rainbow-5))
  (gnus-cite-6                       (:foreground rainbow-6))
  (gnus-cite-7                       (:foreground rainbow-7))
  (gnus-cite-8                       (:foreground rainbow-8))
  (gnus-cite-9                       (:foreground rainbow-9))
  (gnus-cite-10                      (:foreground rainbow-1))
  (gnus-cite-11                      (:foreground rainbow-2))

  ;; mu4e
  (mu4e-header-key-face             (:foreground hint-blue))
  (mu4e-header-field-face           (:foreground white))
  (mu4e-header-marks-face           (:foreground hint-blue))
  (mu4e-header-title-face           (:foreground pale-purple :weight 'bold))
  (mu4e-header-value-face           (:foreground pale-purple))
  (mu4e-special-header-value-face   (:foreground red))
  (mu4e-title-face                  (:foreground yellow))
  (mu4e-highlight-face              (:foreground orange :weight 'bold))
  (mu4e-header-face                 (:foreground white))
  (mu4e-header-highlight-face       (:inherit 'hl-line))
  (mu4e-column-faces-date           (:foreground medium-gray-blue))
  (mu4e-column-faces-size           (:foreground medium-gray))
  (mu4e-column-faces-tags           (:foreground hint-blue))
  (mu4e-column-faces-flags          (:foreground hint-blue))
  (mu4e-column-faces-maildir        (:foreground medium-gray-blue))
  (mu4e-column-faces-to-from        (:foreground medium-gray-blue))
  (mu4e-column-faces-signature      (:foreground info-purple))
  (mu4e-column-faces-decryption     (:foreground info-purple :weight 'bold))
  (mu4e-column-faces-message-id     (:foreground info-purple :weight 'bold))
  (mu4e-column-faces-user-agent     (:foreground medium-gray-blue))
  (mu4e-column-faces-attachments    (:foreground info-purple))
  (mu4e-column-faces-mailing-list   (:foregorund medium-gray-blue))
  (mu4e-column-faces-thread-subject (:foreground white))
  (mu4e-unread-face                 (:foreground hint-blue :weight 'bold)))

 (custom-theme-set-variables
  'no-clown-fiesta
  `(pos-tip-foreground-color ,fg)
  `(pos-tip-background-color ,alt-bg)
  `(ansi-color-names-vector [ ,gray ,red ,green ,gray-blue
                              ,orange ,purple ,cyan ,white ])))

(provide-theme 'no-clown-fiesta)

;; Local Variables:
;; no-byte-compile: t
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; no-clown-fiesta-theme.el ends here.
