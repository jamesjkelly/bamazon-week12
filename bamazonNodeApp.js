var mysql = require("mysql");
const prompt = require("prompt");
var inquirer = require("inquirer");
var s_g_id = "1";
var i_g_qty = 0;
var i_g_cost = 0;


var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Banjoman!1",
    database: "bamazon_db"
});

function connectDB() {
    connection.connect(function (err) {
        if (err) { throw err; }
        console.log("connected as id " + connection.threadId);
        
    });
}
connectDB()
