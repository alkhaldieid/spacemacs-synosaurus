(defconst synosaurus-packages
  '(synosaurus))

(defun synosaurus/init-synosaurus ()
  (use-package synosaurus
     :hook
     (after-init . synosaurus-mode)
     :custom
     (synosaurus-backend (quote synosaurus-backend-wordnet))
     (synosaurus-choose-method (quote default))
     :init
     (progn
       (spacemacs/declare-prefix "y" "synosaurus")
       (spacemacs/set-leader-keys
         "yt" 'synosaurus-mode
         "yr" 'synosaurus-choose-and-replace))))
