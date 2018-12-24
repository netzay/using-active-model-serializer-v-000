
<% @posts.each do |post| %>
  <%= render partial: "post", locals: {post: post} %>
<% end %>

<script type="text/javascript" charset="utf-8">
$(function () {
  $(".js-more").on('click', function() {
    var id = $(this).data("id");
    $.get("/posts/" + id + "/post_data", function(data) {
      // Replace text of body-id div
      $("#body-" + id).html(data["description"]);
    });
  });
});
</script>