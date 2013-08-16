;;Bind The Org Key
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-directory "~/org/")
(setq org-capture-templates '(
("n" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")"* Todo %? %T\n")
("s" "Schdule" entry (file+headline "~/org/gtd.org" "Tasks")"* Schdule %?\n  %i\n  %a")
("S" "Someday" entry (file+headline "~/org/gtd.org" "Tasks")"* Someday %?\n  %i\n  %a")
("m" "Memo" entry (file+headline "~/org/gtd.org" "Tasks")"* Memo %?\n  %i\n  %a")))

;;设置TODO关键字
(setq org-todo-keywords
'((sequence "Todo(n)" "Schdule(s)" "Someday(S)" "Memo(m)" "|" "Done(d)" "Delegate(D)")))

;; 快速打开GTD
(defun gtd() (interactive) (find-file "~/org/gtd.org"))

;;显示他们的内容
(setq org-agenda-files(list "~/org/gtd.org"))

;; 将项目转接在各文件之间，方便清理和回顾。
(custom-set-variables
'(org-refile-targets
(quote
(("gtd.org" :level . 1) ("done.org":level . 1))
)))

(provide 'init-org)
