* A user can log in and see, create, and edit cliff notes.
  -authentication

! * The homepage will be a list of Locations

! * Each location is a link that has_many crags

! * Each crag is a link that has attributes, and a Flag class that can be updated.

! * If a user wants to create a crag, they can go by Location, where they will have to option to "Add a Crag".

! * The fields will be:  -name, -season, rock_type, region


_______
_______
crags

* add validations - comment has text

* add omniauth - google

* add scope methods

* refactor and use partials

   * should consider making "crag comments" from users because it makes a whole lot more sense. how do i get the proper join table?

   * How do I start User model where the user has a submittable attribute of comment(text) associated by a crag_flag?
    * authentication comes next
    from locations/show:
    <!-- <h4>Flags:</h4>
      <% crag.crag_flags.each do |cflag| %>
        <li><%= cflag.flag.content %></li>
          <ul>
            <% cflag.comments.each do |comment| %>
              <li><%= current_user.username %> says: <%= comment.text %></li>
            <% end %>
          </ul>
    <% end %>
    </ul> -->
from crags/edit:
    <h2>Flags</h2>

    <%= f.collection_check_boxes(:flag_ids, Flag.all, :id, :content) do |c| %>
      <li><%= c.check_box + c.text %></li>
      <%= f.fields_for :comments, @crag.crag_flags.build do |cflag| %>
        <%= cflag.label :comment %>
        <%= cflag.text_field :comment %>
      <% end %>
      <% end %>
    <!-- <h3>Add a Flag</h3>
    <%= f.fields_for :flags, @crag.flags.build do |flag| %>
      <%= flag.text_field :content %>
    <% end %> -->
from crags/new:
    <h2>Flags</h2>

    <%= f.collection_check_boxes :flag_ids, Flag.all, :id, :content %>

    <h3>Add a Flag</h3>
    <%= f.fields_for :flags, @crag.flags.build do |flag| %>
    <%= flag.text_field :content %>
    <% end %>
    <br>
    <%= f.fields_for :crag_flags, @crag.crag_flags.build do |cflag| %>
    <%= cflag.label :comment %>
    <%= cflag.text_field :comment %>
    <% end %>

    took off of edit (build block):
    , @crag.comments.build
