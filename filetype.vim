if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.cpc		setfiletype cpc
	au! BufRead,BufNewFile *.CPC		setfiletype cpc
augroup END
