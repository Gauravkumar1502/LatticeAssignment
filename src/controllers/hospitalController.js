import connection from '../config/database.js';
import Joi from 'joi';

export const getHospitals = (req, res) => {
    const query = 'SELECT * FROM hospitals';
    connection.query(query, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});
        return res.status(200).json(result);
    });
}

export const getHospitalById = (req, res) => {
    const { error } = Joi.number().integer().positive().validate(req.params.id);
    if (error)
        return res.status(400).json({message: error.details[0].message});

    const query = 'SELECT * FROM hospitals WHERE id = ?';
    connection.query(query, req.params.id, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});

        if (result.length === 0)
            return res.status(404).json({message: 'No hospital record found with ID: ' + req.params.id});
        return res.status(200).json(result);
    });
}

export const getHospitalDetails = (req, res) => {
    const { error } = Joi.number().integer().positive().validate(req.params.id);
    if (error)
        return res.status(400).json({message: error.details[0].message});

    const query = `SELECT h.name as hospital_name,
                        COUNT(DISTINCT p.id) as total_patients,
                        COUNT(DISTINCT ps.id) as total_psychiatrists
                    FROM hospitals h
                    LEFT JOIN psychiatrists ps ON h.id = ps.hospital_id
                    LEFT JOIN patients p ON ps.id = p.psychiatrist_id
                    WHERE h.id = ?`;

    const query1 = `SELECT ps.id as id, ps.name as name, COUNT(p.id) as patients_count
                    FROM psychiatrists ps
                    LEFT JOIN patients p ON ps.id = p.psychiatrist_id
                    WHERE ps.hospital_id = 1
                    GROUP BY ps.id`;

    connection.query(query, req.params.id, (err, hospitalResult) => {
        if (err)
            return res.status(500).json({message: err.message});
        
        if (hospitalResult.length === 0)
            return res.status(404).json({message: 'No hospital record found with ID: ' + req.params.id});

        connection.query(query1, req.params.id, (err, psychiatristResult) => {
            if (err)
                return res.status(500).json({message: err.message});
            return res.status(200).json({
                hospital_name: hospitalResult[0].hospital_name,
                total_psychiatrists: hospitalResult[0].total_psychiatrists,
                total_patients: hospitalResult[0].total_patients,
                psychiatrist_details: psychiatristResult
            });
        });
    });
}