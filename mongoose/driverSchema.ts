import { Schema } from "mongoose";

const Driver = new Schema({
  id: {type: Number, required: true, unique: true},
  name: {type: String, required: true},
  wins: {type: Number, required: true},
  worldChampion: {type: Boolean, required: false},
  retired: {type: Boolean, required: true}
});

export default Driver;