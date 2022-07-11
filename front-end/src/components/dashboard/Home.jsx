import { useSelector } from "react-redux";

function Home() {
  const user = useSelector((state) => state.user);

  return (
    <>
      <h1>
        Hello, <span>{user.name}</span>
      </h1>
    </>
  );
}
export default Home;
