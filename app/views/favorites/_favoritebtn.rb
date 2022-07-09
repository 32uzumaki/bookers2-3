<td>
  <% if book.favorited_by?(current_user) %>
    <%= link_to book_favorites_path(book), method: :delete do %> 
      <i class="fa fa-heart"  style="color: red;"></i>
        <%= book.favorites.count %>
      <% end %>
    <% else %>
  　　<%= link_to book_favorites_path(book), method: :post do %> 
  　　<i class="fa fa-heart-o"></i>
        <%= book.favorites.count %>
      <% end %>
  <% end %>
</td>