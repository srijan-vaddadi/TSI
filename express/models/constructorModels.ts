import { model } from "mongoose";
import constructor from "./constructorSchema";

const Constructors = model("constructors", constructor)

export default Constructors