let g:vimwiki_global_ext = 0
let g:vimwiki_folding = ''
let g:vimwiki_hl_headers = 1

" let main_wiki = {}
" let main_wiki.path = '~/Nextcloud/Pugwiki/'
" let main_wiki.index = 'main'
" let main_wiki.auto_tags = 1

let uni_wiki = {}
let uni_wiki.path = '~/Nextcloud/Uni/uni_wiki'
let uni_wiki.index = 'main'
let uni_wiki.auto_tags = 1

" let exam_prep = {}
" let exam_prep.path = '~/Nextcloud/Uni/exam_prep/'
" let exam_prep.index = 'main'
" let exam_prep.auto_tags = 1

let project_wiki = {}
let project_wiki.path = '~/NextCloud/.wiki/projects'
let project_wiki.index = 'main'
let project_wiki.auto_tags = 1

let home_wiki = {}
let home_wiki.path = '~/NextCloud/.wiki/home'
let home_wiki.index = 'main'
let home_wiki.auto_tags = 1


" let g:vimwiki_list = [task_wiki, main_wiki, project_wiki, exam_prep]
let g:vimwiki_list = [project_wiki, uni_wiki, home_wiki]
