# LiteHouse

An experiment around serving different GraphQL schemas to different users

## Up & Running

The server runs automatically on port 27388 when you run the application.

```
$ git clone git@github.com:brettbeatty/lite_house.git
$ cd lite_house
$ mix deps.get
$ iex -S mix
```

## Serving Different Schemas

If you try hitting the GraphQL schema served at `/`, you'll get a 404. We need to set the authorization header.

Add the header `Authorization: lite access` and reload the docs. You'll see two fields: add and subtract.

Change the header to `Authorization: full access` and reload the docs. There will now be two new fields: multiply and divide.

You can play with these fields and see they're only available with the appropriate access.
