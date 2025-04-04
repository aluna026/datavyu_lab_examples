require 'Datavyu_API.rb'

begin
    pos = get_column("position")
    objtrans = new_column("objtrans","objtrans")
    objtrans_rel = new_column("objtrans_rel","objtrans")
    i = 1

    for pcell in pos.cells
        if (pcell.pos != ".")
            ncell = objtrans.new_cell
            ncell.onset = pcell.onset
            ncell.offset = pcell.onset + 5000
            if i % 4 == 0
              rcell = objtrans_rel.new_cell
              rcell.onset = pcell.onset
              rcell.offset = pcell.onset + 5000
            end
            i = i + 1
        end
    end

    set_column(objtrans)
    set_column(objtrans_rel)
end
