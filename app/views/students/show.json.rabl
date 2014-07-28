collection @student, :object_root => false
attributes :id, :name, :email, :github, :linkedin, :bio
child(:cohort, :object_root => false) { attributes :year, :season, :focus   }
