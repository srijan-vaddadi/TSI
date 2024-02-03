import { Schema } from "mongoose";

const constructor = new Schema({
  id: {type: Number, required: true, unique: true},
  name: {type: String, required: true},
  worldChampionship: {type: Boolean, required: false},
  wins: {type: Number, required: true},
  latestStandings: {type: Number, required: true}
});

export default constructor;