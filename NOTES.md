* A user can log in and see, create, and edit cliff notes.
  -authentication

! * The homepage will be a list of Locations

! * Each location is a link that has_many crags

! * Each crag is a link that has attributes, and a Flag class that can be updated.

! * If a user wants to create a crag, they can go by Location, where they will have to option to "Add a Crag".

! * The fields will be:  -name, -season, rock_type, region

! * and Flags (collection and empty field)
cragflags  (need a helmet)
(watch for snakes)
_______
_______
crags
has many CragFlags through comments
has many CragFlags
crag_flag_id, flag_id, crag_id, comment(more specific to flag)

* add validations

* add omniauth (or devise?)

* add scope methods

* refactor and use partials
 * Flag - collection select "Need a helmet", "watch for snakes", "crowded before 5"

 CragFlagComment "crowded after 5" - north facing walls aren't busy
 "watch for snakes" - george saw a rattler on 1/12/18!

   <%= crag.flags.collect {|flag| flag.content}.join(" ") %>

   * should consider making "crag comments" from users because it makes a whole lot more sense. how do i get the proper join table?

   * How do I start User model where the user has a submittable attribute of comment(text) associated by a crag_flag?
    * authentication comes next
