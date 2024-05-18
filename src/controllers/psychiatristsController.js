import connection from '../config/database.js';
import Joi from 'joi';

export const getPsychiatrists = (req, res) => {
    const query = 'SELECT * FROM psychiatrists';
    connection.query(query, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});
        return res.status(200).json(result);
    });
}

export const getPsychiatristById = (req, res) => {
    const { error } = Joi.number().integer().positive().validate(req.params.id);
    if (error)
        return res.status(400).json({message: error.details[0].message});
    
    const query = 'SELECT * FROM psychiatrists WHERE id = ?';
    connection.query(query, req.params.id, (err, result) => {
        if (err)
            return res.status(500).json({message: err.message});

        if (result.length === 0)
            return res.status(404).json({message: 'No psychiatrist record found with ID: ' + req.params.id});
        return res.status(200).json(result);
    });
}