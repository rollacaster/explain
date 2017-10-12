(setq explain-dir (file-name-directory (or load-file-name buffer-file-name)))

(defun explain-emacs ()
  "Explains emacs to your coworkers."
  (interactive)
  (let ((newFrame (make-frame '((width . 34) (height . 15)))))
    (switch-to-buffer-other-frame (buffer-name))
    (setq inhibit-message t)
    (find-file (concat explain-dir "magic.gif"))
    (image-toggle-animation)
    (run-at-time "4 sec" nil 'delete-frame)
    (setq inhibit-message nil)))
