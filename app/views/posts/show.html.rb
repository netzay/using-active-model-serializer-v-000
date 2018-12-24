<div class="authorName"><%= @post.author.name if @post.author %></div>
<a href="#" class="js-next" data-id="<%=@post.id%>">Next...</a>
<h1 class="postTitle"><%= @post.title %></h1>
<p class="postBody"><%= @post.description %></p>

<script type="text/javascript" charset="utf-8">
$(function () {
  $(".js-next").on("click", function() {
    var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.getJSON("/posts/" + nextId, function(data) {
      $(".authorName").text(data["author"]["name"]);
      $(".postTitle").text(data["title"]);
      $(".postBody").text(data["description"]);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", data["id"]);
    });
  });
});
</script>
