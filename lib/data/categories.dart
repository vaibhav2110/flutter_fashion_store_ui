class Category {
  final String name;
  final bool active;
  final String pic;

  Category({this.name, this.active, this.pic});
}

class Categories {
  List<Category> categories = [
    Category(
      active: false,
      name: 'Deco',
      pic:
          'https://images.unsplash.com/photo-1580971739182-ccd8cfef3707?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    ),
    Category(
        active: true,
        name: 'Fashion',
        pic:
            'https://images.unsplash.com/photo-1580336536158-e606cf3f30b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
    Category(
        active: false,
        name: 'Sport',
        pic:
            'https://images.unsplash.com/photo-1577280807586-fee733d503f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
    Category(
        active: false,
        name: 'Tech',
        pic:
            'https://images.unsplash.com/photo-1579295560051-3df968edb036?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
    Category(
        active: false,
        name: 'Kids',
        pic:
            'https://images.unsplash.com/photo-1574372806192-fecc49607dc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  ];

  List<Category> getCategories() {
    return [...categories];
  }
}