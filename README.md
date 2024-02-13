# CSV to MySQL db dumper

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://raw.githubusercontent.com/othneildrew/Best-README-Template/master/images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">CSV to MySQL auto dump</h3>

  <p align="center">
    A Quick and dirty nodejs project to read csv files and write records to a mysql database
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

Built as a quick and easy way to automate transfer of csv filedata to a mysql database.

### Built With

This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

* [Nodejs](https://nodejs.org)
* [Prisma](https://prisma.io)
* [Javascript](https://www.javascript.com)

<!-- GETTING STARTED -->
## Getting Started

This is how you may get the project up and running locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

* Ensure you have [Node JS](https://nodejs.org/en) version 20.x installed on your machine
* Clone or download the code from this repository
* MySQL installed and running (standalone or as part of a [XAMPP server](https://www.apachefriends.org/))

### Installation

1. Clone the repo or download and unzip

   ```sh
   git clone git@github.com:liviasoft/csvreader.git
   ```

2. Navigate into the project folder

   ```sh
   cd csvreader # or whatever folder the code is in
   ```

3. Install NPM packages

   ```sh
   npm install
   ```

4. Create a `.env` file with database url env variable

  ```sh
  echo "DATABASE_URL=''" >> .env
  ```

5. Update the `.env` file with your database connector string in the following pattern

  ```sh
  DATABASE_URL='mysql://<username>:<password>@<host>:3306/<database-name>';
  # e.g DATABASE_URL='mysql://nodejs:nodejs@localhost:3306/liviasoft_csvreader'
  ```

6. Deploy the schema to your database by running

  ```sh
  npx prisma migrate deploy
  ```

<!-- USAGE EXAMPLES -->
## Usage

To use the project for existing csv files, perform the following steps:

1. Change the `filename` variable in line 1 of the `index.js` file to the name of the corresponding csv file in the `./data` folder (e.g. for `blacklist.csv` file change the `filename` variable to `blacklist`)

2. Run the following command in the terminal to migrate the data in the csv file to the mysql database

  ```sh
  node index.js
  ```

3. Run `npx prisma studio` in the terminal to confirm the data migration was successful

<!-- Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_ -->

<!-- ROADMAP -->
## Roadmap

- TBD

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Bankole - [@theNeonCoder](https://twitter.com/theNeonCoder) - email@example.com

Project Link: [https://github.com/liviasoft/csvreader](https://github.com/liviasoft/csvreader)
