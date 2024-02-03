import { model } from "mongoose";
import todoSchema from "./todoSchema";

const Todo = model("todos", todoSchema);

export default Todo;
