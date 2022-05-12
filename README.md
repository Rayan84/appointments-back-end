# rent-a-scooter-back-end

Backend application for user accounts creation and authentication, add and remove items to user reservations. The application also provides and api for items (scooters) names, prices, photos and descriptions.

# Live link for API

 [Click Me!](https://cryptic-anchorage-52984.herokuapp.com)
## Built With

- Ruby version 3.0.1
- RoR version 7.0.2.4
- VScode
- Rubocop
- Git and GitHub
## Getting Started

The back-end application will receive POST requests to create user accounts, and reservations and GET requests to view scooters and reservations.
The base URL is: https://cryptic-anchorage-52984.herokuapp.com

If you want to view scooters you can call this endpoint:

/api/v1/items

To do the same but with reservations call this endpoint:

/api/v1/reserveds/:user_id

APIs endpoints will return content in JSON form with the following format:

```
For items:
{
  "id": 1,
  "name": "XS 420 model",
  "price": 100,
  "image": "image_url",
  "created_at": "2022-01-01T00:00:00.000Z",
  "updated_at": "2022-01-01T00:00:00.000Z",
  "description": "This is an electric scooter, ...etc "
}

For reservations:
{
  "id": 1,
  "user_id": 1,
  "item_id": 1,
  "created_at": "2022-01-01T00:00:00.000Z",
  "updated_at": "2022-01-01T00:00:00.000Z",
}
```

You can view the details for a specific scooter by calling this endpoint:

/api/v1/items/:id

Same for reservations:

/api/v1/reservations/:id

**If you need further information about the endpoints you can view the documentation navigating to `/api-docs`.
Or you can just click this [link](https://a-docs)**

If you prefer to clone the project locally, you can also get to the docs by navigating to http://`domain`:`port`/api-docs. Where `domain` is the domain of your server and `port` is the port of your server.
For example, if your server is running on port 3000, you can navigate to http://localhost:3000/api-docs.
There you will see a list of all endpoints and their descriptions.

**The project comes shipped with linters config for ruby, so ensure you have Rubocop installed in your local environment**

- **Ensure you have postgresql, nodejs, ruby and rails set up on your machine**

- **To get a local copy of the repository please run the following commands on your terminal:**
`$ git clone https://github.com/Rayan84/rent-a-scooter-back-end.git`

- **$ to test or consume the api you can git clone this react app [front-end](https://github.com/phelian23/rent-item-frontend.git) and set up locally**

- **$ run `bundle install` to couple all dependacies in gem files**

- **$ run `npm install` to couple all dependacies in package.json files**

- **$ run `rails s` to start rails server**

- **$ browse `http://<domain>:<port>/api-docs` to view swagger api documentations and test end points**
## Database creation

Run rails db:create db:migrate db:seed

Seeding adds 9 scooters, one user and one reservation.


## Kanban Board

Here you will see some images of our Kanban boards at the beggining of the project.

Back-end kanban:
[Kanban board image](./readme-images/165843179-9ce03afc-e18c-438b-a3c8-1d66e84a383f.jpg)

Front-end kanban:
[Front end kanban image](./readme-images/.png)

And this is the current link to the kanban board:
[Kanban Board Link](https://github.com/Rayan84/rent-a-scooter-back-end/projects/1)

## Authors

Our team is composed of:

👤 **Oluwafemi Awoyemi**
- GitHub: [@phelian23](https://github.com/phelian23)
- LinkedIn: [Oluwafemi Awoyemi](https://www.linkedin.com/in/oluwafemi-awoyemi/)

👤 **Munsa Mibenge**
- GitHub: [@Munsa1](https://github.com/Munsa1)
- LinkedIn: [@Munsa1](https://www.linkedin.com/in/munsa-mibenge/)

👤 **Rayan Rassam**
- GitHub: [@Rayan84](https://github.com/Rayan84)
- LinkedIn: [@Rayan84](https://www.linkedin.com/in/rayan-rassam/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Alexey Savitskiy](https://www.behance.net/alexey_savitskiy) for the awesome [design](https://www.behance.net/gallery/37706679/Circle-(Landing-page-Dashboard-Mobile-App)) for our front-end.
## 📝 License

- This project is [MIT](./LICENSE) licensed.