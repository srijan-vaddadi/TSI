import { model } from "mongoose";
import constructor from "./constructorSchema";

const constructors = model("constructors", constructor)

export default constructors