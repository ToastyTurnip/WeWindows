const Pool = require("pg").Pool;

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "pern",
  password: "password",
  //password: "postgrespass",
  port: 5432,
});

module.exports = pool;