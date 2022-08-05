import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import SubmitReview from "../SubmitReview.jsx";
function Home() {
  const navigate = useNavigate();
  const user = useSelector((state) => state.user);

  return (
    <div className="Home">
      <h1>
        Hello, <span className="Home-username">{user.name}</span>
      </h1>
      <button className="Home-create-btn" onClick={() => navigate("/form")}>
        New Order
      </button>
      <SubmitReview />
    </div>
  );
}
export default Home;
