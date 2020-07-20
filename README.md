# Twitter Clone

![Push Container to Heroku](https://github.com/WinterCore/microverse-micro-reddit/workflows/Deploy%20to%20Heroku/badge.svg?branch=development)

<br />
<p align="center">
  <a href="https://github.com/WinterCore/microverse-micro-reddit">
    <img src="rails-image.jpg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Twitter Clone</h3>

  <p align="center">
    This project consists of building a light weight version of Twitter.
    <br />
    <br />
    <a href="https://github.com/WinterCore/microverse-micro-reddit/issues">Report Bug</a>
    ·
    <a href="https://github.com/WinterCore/microverse-micro-reddit/issues">Request Feature</a>
  </p>
</p>

![screenshot](./demo.gif)

## Built With

- Ruby On Rails
- VSCode/Neovim
- Rubocop 
- Sticker
- Github Actions
- Postgresql

## Live Demo

[Live Demo Link](https://naked-micro-reddit.herokuapp.com/)


<!-- INSTALLATION -->
## Usage

To have this app on your pc, you need to:
* have Ruby & Ruby on Rails installed in your computer
* [download](https://github.com/WinterCore/microverse-micro-reddit/archive/development.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:WinterCore/microverse-micro-reddit.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/WinterCore/microverse-micro-reddit.git
  ```
* and open the terminal inside the repo and run the bundler
  - ```$ bundler install --without production```
* then, run rails db:migrate. This creates the database with the corresponding tables, columns and associations
  - ```$ rails db:migrate```
* then, run rails s. This will start the server at localhost `http://127.0.0.1:3000/`
  - ```$ rails s```
* and finally, you can test it in the console by running
  - ```$ rails console --sandbox```
  
<!-- AUTOMATED TEST -->
### Automated Test

> There are no Automated Test for this project yet

## Authors

👤 **Hasan Kharouf**

- Github: [@wintercore](https://github.com/wintercore)


👤 **Gerónimo Morisot**

- Github: [@Bismarck-GM](https://github.com/Bismarck-GM)
- Twitter: [@Rewritablee](https://twitter.com/Rewritablee)
- Linkedin: [geronimomorisot](https://linkedin.com/in/geronimomorisot)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Andy Leverenz


## 📝 License

This project is [MIT](lic.url) licensed.
