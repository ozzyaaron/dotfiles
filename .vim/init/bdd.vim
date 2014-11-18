function! BddFindFunction()
ruby<<E___
  line = VIM::Buffer.current.line
  if /^\s*(?:[Gg]iven|[Ww]hen|[Tt]hen|[Bb]ut|[Aa]nd)\s+"([^"]+)".*$/ =~ line
    function_name = $1.gsub(/[^A-Za-z0-9\s]/, "").gsub(/\s+/, "_").downcase
    Vim::command('call searchpos("def ' + function_name + '")')
  else
    Vim::message "Not a BDD :^("
  end
E___
endfunction

nnoremap <silent> '' :call BddFindFunction()<CR>
