* A user can log in and see, create, and edit cliff notes.

* The homepage will be a list of Locations

* Each location is a link that has_many crags

* Each crag is a link that has attributes, and a Flag class that can be updated.

* If a user wants to create a crag, they can go by Location, where they will have to option to "Add a Crag".

* The fields will be:  -name, -season, rock_type, and Flags (collection and empty field)
cragflags  (need a helmet)
(watch for snakes) - comment
(directions are off, use gps)
_______
_______
crags
has many CragFlags through Flags(content)
has many CragFlags
flag_id, crag_id, comment(more specific to flag)
