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
        inquireList();
        inquireMain();
    });
}


function inquireMain() {
    inquirer.prompt([
        {
            type: "list",
            message: "Hello:",
            choices: ["List items","Purchase", "QUIT"],
            name: "command"
        }
    ]).then(function (user) {
        switch (user.command) {
            case "List items":
                console.log('show catalog');
                inquireList();
                break;
            case "Purchase":
                console.log('  buy');
                inquire_purchase();
                break;
            case "QUIT":
                console.log("thanks for stopping by");
                process.exit(0);
        }
    });
}


function inquire_purchase() {
    inquirer.prompt([// A
        {
            type: "input",
            message: "item number",
            name: "id"
        },
        ])
        .then(function (user) { 
           s_g_id = user.id;
                inquirer.prompt([ 
                {
                    type: "input",
                    message: "How many",
                    name: "qty"
                },
                ])

                .then(function (user) { 
                    do_purchase(user.qty,"cost")
                    inquireMain();
                    } 
                );  
            } 
        ); 
}


function inquireList() {
    var items = [];
    connection.query("SELECT * FROM albums",
        function (err, res) {
            for (var i = 0; i < res.length; i++) {
                console.log(res[i].item_ID, res[i].artist, res[i].album, res[i].price );
               
                items.push(res[i].artist);
            }
            inquireMain();
        });

}


function update_qty(){
		var s_temp = i_g_qty.toString();
        connection.query("UPDATE albums SET stock_quantity = "+ s_temp + " WHERE item_id = "+ s_g_id ,
         function (err, res) { });
}


function do_purchase(qty,cost){
    var s_temp = "SELECT stock_quantity FROM albums WHERE item_id = " + s_g_id;
    var s_count_query = s_temp; 
    connection.query(s_count_query,function (err, res) {
            i_g_qty = res[0].stock_quantity;
            i_g_qty = res[0].stock_quantity;
            if (res[0].stock_quantity >= qty)
            {
                i_g_qty = i_g_qty - qty;
                console.log("Done. Thank you for the order.");
                 update_qty();
                inquireMain();
            }
            else
            {
                console.log("Sorry not enough on stock. You can order " + i_g_qty.toString() +" or less.");
                inquireMain();
            }
        }) 
}

connectDB();
