import { useEffect, useState } from "react";
import axios from "axios";
import "./App.css";

interface Player {
  firstname: string;
  lastname: string;
  age: number;
  photo: string;
  id: number;
  season: number;
}

function App() {
  const [player, setPlayer] = useState<Player>();
  const [idInput, setIdInput] = useState<string>("");
  const [seasonInput, setSeasonInput] = useState<string>("");

  interface RequestOptions {
    method: string;
    url: string;
    headers: {
      "X-RapidAPI-Key": string;
      "X-RapidAPI-Host": string;
    };
  }
  
  const options: RequestOptions = {
    method: "GET",
    url: "https://api-football-v1.p.rapidapi.com/v3/players",
    headers: {
      "X-RapidAPI-Key": "bab6dbce6dmsh39602424deb690ap1f6557jsn0e26ef03544d",
      "X-RapidAPI-Host": "api-football-v1.p.rapidapi.com",
    },
  };
  

  useEffect(() => {
    fetchData();
  }, [idInput, seasonInput]);
  
  const fetchData = () => {
    axios
      .request({
        ...options,
        params: {
          id: idInput,
          season: seasonInput,
        },
      })
      .then((response) => {
        const playerData = response.data.response[0]?.player;
        if (playerData) {
          setPlayer(playerData);
        }
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  };
  

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    fetchData();
  };


  return (
    <div className="App">
      <h2>Football Player Deets</h2>
      <form onSubmit={handleSubmit}>
        <label>
          Player ID:
          <input
            type="text"
            value={idInput}
            onChange={(e) => setIdInput(e.target.value)}
          />
        </label>
        <br></br>
        <label>
          Season:
          <input
            type="text"
            value={seasonInput}
            onChange={(e) => setSeasonInput(e.target.value)}
          />
        </label>
        <br />
        <br />
        <button type="submit">Submit</button>
        <br />
        <br />
      </form>
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
          {player && (
            <tr>
              <td>{player.firstname}</td>
              <td>{player.lastname}</td>
              <td>{player.age}</td>
              <td>{player.photo}</td>
            </tr>
          )}
        </tbody>
      </table>
    </div>
  );
}

export default App;