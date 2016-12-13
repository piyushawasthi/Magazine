# Magazine Application With Bootstrap, Devise and CanCan

## Setup

```
git clone git@github.com:piyushawasthi/Magazine.git
```


```
cd Magazine
```

### Create & Migrate the DB
```
rake db:create
```

```
rake db:migrate
```

```
rake db:seed
```

### Run Application
```
rails s
```

### How to use
```
1: Login with Admin user to delete any Article.
2: User can Delete own Article and comment on any Article.
3: User can Delete own comment only.
4: When any user read or comment on any Article the popularity will increase for the Article.
5: User can create own category for Magazine.
6: Only register user can comment or add new Article.
```

## Thanks