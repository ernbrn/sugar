collection @cohorts
attributes :season, :year, :focus
child(:students, :object_root => false) { attributes :name, :github }
