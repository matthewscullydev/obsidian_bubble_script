execute 'let @a="0i[[\<Esc>A]]\<Esc>j"'
:1,10 norm! @a
execute 'let @b="k"'
:norm!@b
