<h1><%= post.id %>: <%= link_to post.title, post_path(post) %></h2>
<div id="body-<%= post.id %>"><%= truncate post.description %></div>

<button class="js-more" data-id="<%= post.id %>">More...</button>