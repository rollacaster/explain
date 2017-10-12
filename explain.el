(defun explain-emacs ()
  "Explains emacs to your coworkers."
  (interactive)
  (let ((newFrame (make-frame))
        (modeLine mode-line-format))
    (when window-system (set-frame-size newFrame 39 18))
    (switch-to-buffer-other-frame (buffer-name))
    (setq inhibit-message t)
    (find-file "magic.gif")
    (image-toggle-animation)
    (run-at-time "3 sec" nil 'delete-frame)
    (setq inhibit-message nil)))
