if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  " Fish shell
  au! BufNewFile,BufRead *.fish setf fish

  " Second-order logic files
  au! BufNewFile,BufRead *.dct setf prenex
augroup END
