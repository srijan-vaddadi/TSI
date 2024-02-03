import mongoose from "mongoose";
import Todo from "./create_model";

const DB_URI = "mongodb://127.0.0.1:27017/todo-list";

async function main() {
  await mongoose.connect(DB_URI);

  const todos = await Todo.find();

  const new_Todo = new Todo({
    id: 31,
    todo: "Walk the dog",
    completed: false,
    userID: 3,
  });

  const new_Todo1 = new Todo({
    id: 32,
    todo: "Feed the cat",
    completed: true,
    userID: 11,
  });

  const new_Todo2 = new Todo({
    id: 33,
    todo: "Wash the car",
    completed: true,
    userID: 14,
  });

  const new_Todo3 = new Todo({
    id: 34,
    todo: "But groceries",
    completed: false,
    userID: 11,
  });

  const new_Todo4 = new Todo({
    id: 35,
    todo: "",
    completed: false,
    userID: 3,
  });

  await new_Todo.save()
  await new_Todo1.save()
  await new_Todo2.save()
  await new_Todo3.save()
  await new_Todo4.save()

  await Todo.deleteMany({ completed: true });
  await Todo.updateMany({expiryDate: "2024-05-22"})
}

main().catch((e) => console.error(e));
