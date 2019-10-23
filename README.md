# Kuhama(tusake)

This is a web application to help troubled youth get affordable housing and help landlords get tenants all at the comfort of their homes. Check it out here [tusake.co.ke](http://www.tusake.co.ke/)

## Ruby Version

- Ruby
  2.3.4

- Rails
  5.2.3

## Setup
Clone project `https://github.com/Luey-Ny0ike/kuhama.git`

cd into the directory and run:

```bash
  Bundle install
```

- Database creation & migrations. Run

```bash
  Run rails db: create

  Run rails db:migrate
```

- Search deamons
  To start the sphinx search deamons first run:

```bash
  rails ts:index
```

then start the pid by running

```bash
  rails ts:start
```

Then finally run:

```bash
  rails s
```

to start the app, Visit http://localhost:3000 to view the site

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Contributing

Pull requests are welcome.

Also check out my portfolio here [lewisnyoike.herokuapp.com](http://lewisnyoike.herokuapp.com/)
