require 'Datavyu_API.rb'

begin

    rest = new_column("restrained","restrained")
    rest_rel = new_column("restrained_rel","restrained")

    set_column(rest)
    set_column(rest_rel)
end
