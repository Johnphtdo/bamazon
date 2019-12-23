## About Bamazon   
The Bamazon application is to demonstrate my knowledge in using Node and mySQL together. Bamazon utilizes a mock inventory database with products that I put together. It allows the user to browse through the inventory and select how much they would like to buy. If it is out of stock, it will let the user know it is out, otherwise it will confirm the purchase and give the total. The database will update the mock items to display the current stock. Further development of this application will allow a "manager" and "supervisor" to access and update the database through Node/Visual Code.

## Built With
* [Inquirer](https://www.npmjs.com/package/inquirer)
* [MySQL](https://www.npmjs.com/package/mysql)

## Getting Started
In order to get started, the following applications should be installed.

* [GitBash](https://git-scm.com/downloads)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Node](https://nodejs.org/en/)
* [MySQL](https://www.mysql.com/products/workbench/)
* [MySQL Server](https://dev.mysql.com/downloads/windows/installer/8.0.html)

## Installation

1. Clone the repository using Gitbash.
```sh
https://github.com/Johnphtdo/bamazon.git
```
2. Install the NPM packages within bamazon directory.
```sh
npm init
npm install mysql
npm install inquirer
```
3. Copy the bamazonDB.sql code, paste into your mysql workbench and run.

4. Update the connection information in bamazonCustomer.js to match your mysql information.
```sh
var connection = mysql.createConnection({
  host: "Host Name Goes Here",
  port: 3306,
  user: "Username goes here",
  password: "Password goes here",
  database: "bamazon"
});
```

## Usage
1. To start, type the following in the terminal.
```sh
node bamazonCustomer.js
```
2. You will be shown a table, followed by a message that looks like this.
<img src = "Assets\Images\Example.png">

3. If there is not enough of the item in stock, it will return insufficient. If there is enough, you will be given a total for the items and the database will update with a new stock quantity.

## Contact
John Do -[LinkedIn](https://www.linkedin.com/in/johnphtdo/)