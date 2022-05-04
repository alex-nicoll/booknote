if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.bnote	  	setfiletype booknote
  au! BufRead,BufNewFile *.booknote		setfiletype booknote
augroup END
