import Joi from 'joi';
import multer from 'multer';
import bcrypt from 'bcrypt';
import path from 'path';
import connection from '../config/database.js';


const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/profile_pictures/');
    },
    filename: (req, file, cb) => {
        cb(null, req.body.email.split('@')[0] + "-" + Date.now() + path.extname(file.originalname));
    }
});
const upload = multer({ storage: storage });

const patientSchema = Joi.object({
    name: Joi.string().required(),
    address: Joi.string().min(10).required(),
    email: Joi.string().email().required(),
    phone_number: Joi.string().min(10).pattern(new RegExp('^[+91]{3}[0-9]{10}$')).required(),
    password: Joi.string().pattern(new RegExp('^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,15}$')).required(),
    psychiatrist_id: Joi.number().required(),
});

export const registerPatient = (req, res) => {
    const { error } = patientSchema.validate(req.body);

    if (error)
        return res.status(400).json({message: error.details[0].message});

    const { name, address, email, phone_number, password } = req.body;
    const hashedPassword = bcrypt.hashSync(password, 10);
    const profile_picture = req.file.path;
    
    const query = 'INSERT INTO patients (name, address, email, phone_number, password, profile_picture, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)';
    const values = [name, address, email, phone_number, hashedPassword, profile_picture, req.body.psychiatrist_id];

    connection.query(query, values, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});
        return res.status(201).json({message: 'Patient registered successfully'});
    });
}

export const getPatients = (req, res) => {
    const query = 'SELECT * FROM patients';
    connection.query(query, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});
        return res.status(200).json(result);
    });
}

export const getPatientById = (req, res) => {
    const { error } = Joi.number().integer().positive().validate(req.params.id);
    if (error)
        return res.status(400).json({message: error.details[0].message});

    const query = 'SELECT * FROM patients WHERE id = ?';
    connection.query(query, req.params.id, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});
        if (result.length === 0)
            return res.status(404).json({message: 'No patient record found with ID: ' + req.params.id});
        return res.status(200).json(result);
    });
}

export const uploadProfilePicture = upload.single('profile_picture');