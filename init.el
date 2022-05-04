;; Remove mensagem de boas vindas
(setq inhibit-startup-message t)

;; Remover Menus
(tool-bar-mode -1)
(menu-bar-mode -1)


;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Numero de linha
(global-linum-mode t)

;; Tamanho da font

;;(set-face-attribute 'default nil :height 150)
(set-frame-font "Envy Code R Bold 17" nil t)

(global-company-mode)
(global-auto-complete-mode)
;;(emmet-mode)


;;PACOTES

(require 'package)
(setq package-enable-at-startup nil) ;;DESABILITAR INICIO DE ATIVAÇÃO DE PACOTE

;MELPA gerenciador de pacotes 

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize) ;INICIAR PACOTES

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)
    ))

(use-package all-the-icons
  :ensure t)

(use-package company-php
  :ensure t)

(use-package php-mode
  :ensure t)

(use-package company-tabnine
  :ensure t
  :init
  (progn
    (company-mode)
    (setq company-idle-delay 0)))


(add-to-list 'company-backends #'company-tabnine)


(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme (if (display-graphic-p) 'icons 'arrow ))))

(global-set-key [f8] 'neotree-toggle)



(use-package centaur-tabs
  :ensure t
  :config
  (setq centaur-tabs-set-bar 'under
	x-underline-at-descent-line t
        centaur-tabs-set-icons t
	centaur-tabs-plain-icons t
	centaur-tabs-height 16
	centaur-tabs-set-modified-marker "!!"
	centaur-tabs-set-icons t
	centaur-tabs-close-button "x"
	centaur-tabs-style "chamfer")
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t))

(use-package format-all
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))


;;Tema
(use-package gruvbox-theme
 :ensure t
 :config (load-theme 'gruvbox-dark-medium' t))


(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

(use-package ac-emmet)

(use-package elcord
  :ensure t
  :init (elcord-mode))

(use-package ac-html
  :ensure t)

(use-package ac-html-csswatcher
  :ensure t)

(use-package format-sql
  :ensure t)

(use-package css-autoprefixer
  :ensure t)

(use-package move-text
  :ensure t)

(move-text-default-bindings)

(global-unset-key (kbd "C-z")) ;;desabilita ctrl-z

(delete-selection-mode t) ;; texto digitado substitui seleção

(set-fringe-mode 10) ;;espaço bordas laterais

(global-visual-line-mode t) ;;quebra de linha

;;alertas visuais
(setq visible-bell t)

(setq mouse-wheel-scroll-amount ' (2 ((shift) . 1))
	mouse-wheel-progressive-speed nil
	mouse-wheel-follow-mouse 't
	scroll-step 1)

(setq backup-directory-alist ` (("." . "~/.saves")))


;; muda a configuração do teclado
;; (use-package ergoemacs-mode
;;  :ensure t
;;  :config
;;  (progn
;;    (setq ergomacs-theme nil)
;;    (setq ergomacs-keyboard-layout "us")
;;    (setq ergomacs-mode 1)))

;;(use-package ace-window
 ;;:ensure t
 ;; :bind ("C-x o" . ace-window)))
 ;; )

;;melpa stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "43f03c7bf52ec64cdf9f2c5956852be18c69b41c38ab5525d0bedfbd73619b6a" "b494aae329f000b68aa16737ca1de482e239d44da9486e8d45800fd6fd636780" "fc48cc3bb3c90f7761adf65858921ba3aedba1b223755b5924398c666e78af8b" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" default))
 '(package-selected-packages
   '(soothe-theme kaolin-themes company-tabnine monokai-theme doom-modeline neotree badwolf-theme afternoon-theme moe-theme twilight-theme brutalist-theme berrys-theme badger-theme molokai-theme ac-emmet emmet-mode ample-flat-theme ample-theme all-the-icons-install-fonts move-text atom-beautify format-all all-the-icons-completion ac-php-core neo-tree all-the-icons-dired css-autoprefixer format-sql ac-html-csswatcher zenburn-theme spacemacs spacemacs-theme ayu-theme company-php elcord ac-php flycheck gruvbox-theme atom-one-dark-theme farmhouse farmhouse-theme busybee-theme darcula-theme abyss-theme melancholy-theme all-the-icons auto-complete try use-package))
 '(warning-suppress-types '((use-package) (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
