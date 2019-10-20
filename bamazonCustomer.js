// Variables to store node packages
const inquirer = require("inquirer")
const mysql = require("mysql")

// Connection to mysql
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Lambdas1!",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  readItemList();
});

function readItemList() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.table(res);
    customerAction();
  });
}

function customerAction(){
    inquirer.prompt([
        {
        name: "itemID",
        type: "input",
        message: "Please enter item ID of the product you want to purchase: "
    },
    {
        name:"stock",
        type:"input",
        message:"How many of this product would you like to buy? "
    }
]).then(function(answer){

    var query = "SELECT stock_quantity,product_name,price FROM products WHERE item_id = ?"
    connection.query(query, [answer.itemID], function (err,res){
        if (err) throw err;
        if (res[0].stock_quantity < answer.stock)
        {
            console.log("INSUFFICIENT QUANTITY")
            connection.end();
        }
        else
        {
            var cost = res[0].price * answer.stock
            console.log("Your total cost is: " + cost)
            connection.end();
            updateStock();
        }
    })
})
}