proc magic::zoom_at_cursor {f} {
    magic::zoom $f
    magic::center
}

proc magic::rebind_wheel {} {
    foreach w [winfo children .] {
        if {[winfo class $w] ne "Toplevel"} continue
        set c $w.pane.top.magic
        if {![winfo exists $c]} continue
        bind $c <Button-4> {magic::zoom_at_cursor 0.8 ; break}
        bind $c <Button-5> {magic::zoom_at_cursor 1.25 ; break}
        puts "rebound wheel on $c"
    }
}
after idle magic::rebind_wheel
