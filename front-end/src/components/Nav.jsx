import "../styles/Nav.scss";
import { useSelector } from "react-redux";
import logo from "../media/logo.svg";
import AccountCircleTwoToneIcon from "@mui/icons-material/AccountCircleTwoTone";
function Navbar() {
  const user = useSelector((state) => state.user);
  return (
    <>
      <div className="Navbar">
        <div className="Navbar__logo">
          <img src={logo} alt="Cash logo" />
        </div>
        <div className="Navbar__acc">
          <AccountCircleTwoToneIcon fontSize="inherit" />
        </div>
        {/*
        DESKTOP BUTTON
         <div className="Navbar__login">
          <h1>login / signup</h1>
        </div> 
        */}
      </div>
    </>
  );
}
export default Navbar;
