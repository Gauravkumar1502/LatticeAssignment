import { createConnection } from 'mysql2';
import dotenv from 'dotenv';

dotenv.config();

const connection = createConnection({
    host: process.env.DB_HOST || 'localhost',
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASS || 'password',
    database: process.env.DB_NAME || 'LatticeAssignment',
});

connection.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL.  Thread ID: ' + connection.threadId);
});

export default connection;