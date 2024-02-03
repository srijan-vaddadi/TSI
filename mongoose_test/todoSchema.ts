import { Schema } from "mongoose";

const todoSchema = new Schema({
  id: {type: Number, required: true, unique: true},
  todo: {type: String, required: true},
  completed: {type: Boolean, default: false},
  userID: {type: Number, required: true},
  expiryDate: {type: Date, default: '2024-05-22'}
});

export default todoSchema;
