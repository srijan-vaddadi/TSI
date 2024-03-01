import express from "express";
import mongoose from "mongoose";
import Drivers from "./models/driverModels";
import Constructors from "./models/constructorModels";
import loggerMiddleware from "./middleware/logger";

const app = express();
const port = 8080;
app.use(express.json());
app.use(loggerMiddleware);
const DB_URI = "mongodb://127.0.0.1:27017/F1";

async function main() {
  await mongoose.connect(DB_URI);
}

main().catch((e) => console.error(e));

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

app.get("/", (req, res) => {
  res.status(404);
  res.send("Not Found, specify what you want to do");
});

app.get("/Drivers", async (req, res) => {
  const getAllDrivers = await Drivers.find();
  res.json(getAllDrivers);
});

app.get("/Constructors", async (req, res) => {
  const getAllConstructors = await Constructors.find();
  res.json(getAllConstructors);
});

app.get("/Constructor/:id", async (req, res) => {
  const constructorId = req.params.id;
  const findConstructor = await Constructors.findOne({ id: constructorId });
  res.json(findConstructor);
});
app.get("/Driver/:id", async (req, res) => {
  const driverId = req.params.id;
  const findDriver = await Drivers.findOne({ id: driverId });
  res.json(findDriver);
});

app.delete("/Drivers/:id", async (req, res) => {
  const driverId = req.params.id;
  await Drivers.findOneAndDelete({ id: driverId });
  res.status(204).json({ message: "Driver deleted" });
});

app.delete("/Constructor/:id", async (req, res) => {
  const constructorId = req.params.id;
  await Constructors.findOneAndDelete({id: constructorId});
  res.status(204).json({message: "Constructor deleted"});
});

app.post("/Drivers", async (req, res) => {
  const addDriver = new Drivers(req.body);
  const newDriver = await addDriver.save();
  res.json(newDriver);
});

app.post("/Constructors", async (req, res) => {
  const addConstructor = new Constructors(req.body);
  const newConstructor = await addConstructor.save();
  res.json(newConstructor);
});

// app.patch("/Driver/:id", async (req, res) => {
//   const driverId = req.params.id;
//   const updateDriver = await Drivers.findOneAndUpdate(
//     { id: driverId },
//     req.body,
//     { new: true }
//   );
//   res.json(updateDriver);
// });

// app.patch("/Constructor/:id", async (req, res) => {
//   const constructorId = req.params.id;
//   const updateConstructor = await Constructors.findOneAndUpdate(
//     { id: constructorId },
//     req.body,
//     { new: true }
//   );
//   res.json(updateConstructor);
// });