(require 'ox-publish)
(setq my--exclude
      "^\\(private\\|public\\)")
(setq org-publish-project-alist
      `(

        ("org-notes"
 :base-directory "~/projects/winny.tech"
 :base-extension "org"
 :publishing-directory "~/projects/winny.tech/public"
 :recursive t
 :publishing-function org-html-publish-to-html
 :headline-levels 4             ; Just the default for this project.
 :auto-preamble t
 :exclude ,my--exclude
 :auto-sitemap t                ; Generate sitemap.org automagically...
 :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
 :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
 )
        ("org-static"
 :base-directory "~/projects/winny.tech"
 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt"
 :publishing-directory "~/projects/winny.tech/public"
 :recursive t
 :publishing-function org-publish-attachment
 :exclude ,my--exclude
 )
        ("org" :components ("org-notes" "org-static"))

        ))
