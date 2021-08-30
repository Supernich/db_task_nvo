# Задание с созданием сущностей и описания бизнес логики для них

Получить список BookShop можно с помощью команд 
~~~ruby
book_shops = Book.book_shops_list(Book.first.id) 
book_shops.first.book_shop_name
~~~
