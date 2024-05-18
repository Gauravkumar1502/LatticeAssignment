import express from 'express';
import bodyParser from 'body-parser';
import dotenv from 'dotenv';
import patientRoutes from './routes/patientRoutes.js';
import hospitalRoutes from './routes/hospitalRoutes.js';
import psychiatristRoutes from './routes/psychiatristsRoutes.js';

dotenv.config();

const PORT = process.env.PORT || 8081;
const app = express();

app.use(bodyParser.json());
app.get('/', (req, res) => {
    res.send('<h1>Welcome to the Patient Management API</h1>');
});

app.use('/api/v1/patients', patientRoutes);
app.use('/api/v1/hospitals', hospitalRoutes);
app.use('/api/v1/psychiatrists', psychiatristRoutes);

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));