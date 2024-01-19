interface GridProps {
}

const Grid: React.FC<GridProps> = () => {
  return (
    <div>
    <br></br>
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
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
        </tbody>
    </table>
    </div>
  );
};

export default Grid;