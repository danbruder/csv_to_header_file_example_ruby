#ifndef HEADER_FILE
#define HEADER_FILE

<% items.each do |i| %>
#define SYSTEM_H<%= i["part_id"] %> "<%= i["some_value"] %>.<%= i["some_other_value"] %>.h"
<% end %>

#endif

