if exists('g:loaded_ddu_source_qf')
    finish
endif

let g:loaded_ddu_source_qf = 1

function ddu_source_qf#internal#_getqflist(what, end) abort
    let qflist =  getqflist(a:what)
    let qflist.items = qflist.items[: a:end - 1]
    return qflist
endfunction

function ddu_source_qf#internal#_getloclist(nr, what, end) abort
    let qflist = getloclist(a:nr, a:what)
    let qflist.items = qflist.items[: a:end - 1]
    return qflist
endfunction
