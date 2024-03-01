import { model } from "mongoose";
import Driver from "./driverSchema";

const Drivers = model("Drivers", Driver);

export default Drivers;
