import { Router } from "express";
import { getPsychiatristById, getPsychiatrists } from "../controllers/psychiatristsController.js";

const router = Router();

// get all patients
router.get("/", getPsychiatrists);
router.get("/:id", getPsychiatristById);

export default router;