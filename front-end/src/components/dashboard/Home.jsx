import { useSelector } from "react-redux";

function Home() {
  const user = useSelector((state) => state.user);

  return (
    <div className="Home">
      <h1>
        Hello, <span className="Home-username">{user.name}</span>
      </h1>
    </div>
  );
}
export default Home;
