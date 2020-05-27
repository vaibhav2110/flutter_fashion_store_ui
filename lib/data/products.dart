class Author {
  final String profilePic;
  final String name;
  final String location;

  Author(this.profilePic, this.name, this.location);
}

class Product {
  final String id;
  final Author author;
  final String image;
  final String title;
  final int likes;
  final int comments;
  final String price;

  Product({
    this.id,
    this.author,
    this.image,
    this.title,
    this.likes,
    this.comments,
    this.price
  });
}

class Products {
  List<Product> _products = [
    Product(
      id: '1',
      author: Author(
          'https://images.unsplash.com/photo-1580971739182-ccd8cfef3707?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Giorgio Armani',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1580934427136-e7a058ef8902?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Woman Organizer Bag',
      likes: 3049,
      comments: 10367,
      price: '\$1,200'
    ),
    Product(
      id: '2',
      author: Author(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Doice & Gabbana',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1574173798137-311ed747d574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Woman Coat',
      likes: 1432,
      comments: 6898,
      price: '\$800'
    ),
    Product(
      id: '3',
      author: Author(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Doice & Gabbana',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1573600073102-d703f3f030ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Woman Jacket',
      likes: 5643,
      comments: 4322,
      price: '\$1,800'
    ),
    Product(
      id: '4',
      author: Author(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Doice & Gabbana',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1546472006-87dd806746a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Glasses',
      likes: 4545,
      comments: 3421,
      price: '\$3,000'
    ),
    Product(
      id: '5',
      author: Author(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Doice & Gabbana',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1574173798137-311ed747d574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Woman Coat',
      likes: 897,
      comments: 123,
      price: '\$4,200'
    ),
    Product(
      id: '6',
      author: Author(
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
          'Doice & Gabbana',
          'New York, United States'),
      image: 'https://images.unsplash.com/photo-1574173798137-311ed747d574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      title: 'Armani Woman Coat',
      likes: 3421,
      comments: 8797,
      price: '\$1,500'
    ),
  ];

  List<Product> get products {
    return [..._products];
  }

  Product findById(String id){
    return _products.firstWhere((product) => product.id == id);
  }
}