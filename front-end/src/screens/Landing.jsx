import "../styles/Landing.scss";
import { useSelector } from "react-redux";
function Landing() {
  const user = useSelector((state) => state.user);
  return (
    <>
      <div className="Landing">
        <h1>Landing</h1>
        <h1>{user.name}</h1>
      </div>
    </>
  );
}
export default Landing;
