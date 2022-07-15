import "../styles/Nav.scss";
import logo from "../media/logo.svg";
import { useState, useEffect } from "react";
import AccountCircleTwoToneIcon from "@mui/icons-material/AccountCircleTwoTone";
import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { clearUser } from "../state/user.js";

function Navbar() {
  const user = useSelector((state) => state.user);
  const dispatch = useDispatch();

  let navigate = useNavigate();
  const [navbutton, setNavbutton] = useState();
  useEffect(() => {
    let handleIcon = () => {
      if (800 <= window.innerWidth) {
        setNavbutton(
          <div className="Navbar__login" onClick={() => navigate("/register")}>
            <h1>Register</h1>
          </div>
        );
      } else {
        setNavbutton(
          <div className="Navbar__acc" onClick={() => navigate("/register")}>
            <AccountCircleTwoToneIcon fontSize="inherit" />
          </div>
        );
      }
    };
    if (user.isAuthenticated) {
      setNavbutton(
        <div className="Navbar__login" onClick={() => dispatch(clearUser())}>
          <h1>Log Out</h1>
        </div>
      );
    } else {
      handleIcon();
    }
    window.addEventListener("resize", handleIcon);
    return () => {
      window.removeEventListener("resize", handleIcon);
    };
  }, [user]);
  return (
    <>
      <div className="Navbar">
        <div className="Navbar__logo">
          <img src={logo} onClick={() => navigate("/")} alt="Cash logo" />
        </div>
        {navbutton}
      </div>
    </>
  );
}
export default Navbar;
