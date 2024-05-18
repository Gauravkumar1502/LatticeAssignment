import { Router } from "express";
import { getHospitalById, getHospitals, getHospitalDetails } from "../controllers/hospitalController.js";

const router = Router();

// get all patients
router.get("/", getHospitals);
router.get("/:id", getHospitalById);
router.get("/details/:id", getHospitalDetails);

export default router;