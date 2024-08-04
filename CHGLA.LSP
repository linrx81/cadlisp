;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  name : chgla.lsp                                                ;
;  purpose : help change layer                                     ;
;  by Y. J. CHANG                                                  ;
;  DATA: 22,8,1989                                                 ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:ca()
       (setvar "cmdecho" 0)
       (prompt "\nselect objects that are going to change layer:")
       (setq aa (ssget))
       (prompt "\nselect the object to change layer to:")
       (setq so (entsel))
       (setq eda (entget (car so)))
       (setq lana (cdr (assoc 8 eda)))
       (command "change" aa "" "p" "la" lana "color" "bylayer" "")
       (setvar "cmdecho" 1)
)
