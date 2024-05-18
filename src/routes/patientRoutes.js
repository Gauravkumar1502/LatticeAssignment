import { Router } from "express";
import { getPatients, registerPatient, uploadProfilePicture, getPatientById } from "../controllers/patientController.js";

const router = Router();

// get all patients
router.get("/", getPatients);
router.get("/:id", getPatientById);
router.post("/register", uploadProfilePicture, registerPatient);

export default router;