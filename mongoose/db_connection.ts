import mongoose from "mongoose";
import Drivers from "./driverModels";
import constructors from "./constructorModels";

const DB_URI = "mongodb://127.0.0.1:27017/F1";

async function main() {
  await mongoose.connect(DB_URI);

  const addWebber = new Drivers({
    id: 21,
    name: "Mark Webber",
    teamName: "Red Bull",
    wins: 9,
    worldChampion: true,
    retired: false,
  });

  await addWebber.save();

  await Drivers.updateOne({ id: 21 }, { retired: true });

  const findWebber = await Drivers.find({ id: 21 });
  console.log(findWebber);

  await constructors.deleteMany({ wins: { $gt: 100 } });

  const constructorsDeets = await constructors.find();
  console.log(constructorsDeets);
}

main().catch((e) => console.error(e));
