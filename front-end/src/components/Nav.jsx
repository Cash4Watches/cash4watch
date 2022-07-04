import "../styles/Nav.scss";
import logo from "../media/logo.svg";
import { useState, useEffect } from "react";
import AccountCircleTwoToneIcon from "@mui/icons-material/AccountCircleTwoTone";
function Navbar() {
  const [navbutton, setNavbutton] = useState();
  let handleResize = () => {
    if (800 <= window.innerWidth) {
      setNavbutton(
        <div className="Navbar__login">
          <h1>Login</h1>
        </div>
      );
    } else {
      setNavbutton(
        <div className="Navbar__acc">
          <AccountCircleTwoToneIcon fontSize="inherit" />
        </div>
      );
    }
  };
  useEffect(() => {
    handleResize();
    window.addEventListener("resize", handleResize);
    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);
  return (
    <>
      <div className="Navbar">
        <div className="Navbar__logo">
          <img src={logo} alt="Cash logo" />
        </div>
        {navbutton}
      </div>
    </>
  );
}
export default Navbar;
