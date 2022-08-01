import "../styles/Nav.scss";
import logo from "../media/logo.svg";
import { useState, useEffect, useRef } from "react";
import AccountCircleTwoToneIcon from "@mui/icons-material/AccountCircleTwoTone";
import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { clearUser } from "../state/user.js";
import PhoneInTalkIcon from "@mui/icons-material/PhoneInTalk";

function Navbar() {
  let fakeMarketValues = [
    {
      name: "Rolex",
      price: "10000",
    },
    {
      name: "Cartier",
      price: "69420",
    },
    {
      name: "Omega",
      price: "9999",
    },
    {
      name: "Bulgari",
      price: "1245",
    },
    {
      name: "Bulgari",
      price: "1245",
    },
    {
      name: "Rolex",
      price: "1245",
    },
    {
      name: "Rolex",
      price: "1245",
    },
    {
      name: "Rolex2",
      price: "1245",
    },
    {
      name: "Rolex3",
      price: "1245",
    },
  ];
  const marketRef = useRef(null);
  const user = useSelector((state) => state.user);
  const dispatch = useDispatch();
  let navigate = useNavigate();
  const [navbutton, setNavbutton] = useState();
  const [market, setMarket] = useState(fakeMarketValues);
  useEffect(() => {
    let handleIcon = () => {
      if (800 <= window.innerWidth) {
        setNavbutton(
          <div className="Navbar__login" onClick={() => navigate("/login")}>
            <h1>Login</h1>
          </div>
        );
      } else {
        setNavbutton(
          <div className="Navbar__acc" onClick={() => navigate("/login")}>
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
  useEffect(() => {
    if (market.length > 0) {
      let shiftAmount = marketRef.current.offsetWidth / 2 + 300;
      document.body.style.setProperty(
        "--pos-animation-shift",
        `${shiftAmount}px`
      );
      document.body.style.setProperty(
        "--neg-animation-shift",
        `-${shiftAmount}px`
      );
    }
  }, [market]);
  return (
    <>
      <div className="Navbar">
        <a target="_blank" rel="noreferrer" href="tel:2124103030">
          <PhoneInTalkIcon />
          2124103030
        </a>
        <div className="Navbar__logo">
          <img src={logo} onClick={() => navigate("/")} alt="Cash logo" />
        </div>
        {navbutton}
      </div>
      <div className="Market">
        <div ref={marketRef} className="Market-container">
          {market.map((ticker, i) => (
            <p key={i}>
              {ticker.name} : <span> {ticker.price}</span>
            </p>
          ))}
        </div>
      </div>
    </>
  );
}
export default Navbar;
