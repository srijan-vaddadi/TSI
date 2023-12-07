import { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";

interface Player {
  firstname: string;
  lastname: string;
  age: number;
  photo: string;
  id: number
  season: number
}
function App() {
  const [player, setPlayer] = useState<Player>();
  const options = {
    method: "GET",
    url: "https://api-football-v1.p.rapidapi.com/v3/players",
    params: {
      id: "3",
      season: "2022",
    },
    headers: {
      "X-RapidAPI-Key": "bab6dbce6dmsh39602424deb690ap1f6557jsn0e26ef03544d",
      "X-RapidAPI-Host": "api-football-v1.p.rapidapi.com",
    },
  };

  useEffect(() => {
    axios.request(options).then((response) => {
      const playerData = response.data.response[0].player;
      setPlayer(playerData);
    });
  }, []);
  return (
    <div className="App">
      <h2>Football Player Deets</h2>
      <h3>Hi</h3>
      <table>
        <thead>
          <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Photo</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>{player.firstname}</td>
            <td>{player.lastname}</td>
            <td>{player.age}</td>
            <td>{player.photo}</td>
          </tr>
        </tbody>
      </table>
    </div>
  );
}

export default App;
