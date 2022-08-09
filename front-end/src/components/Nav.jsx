import "../styles/Nav.scss";
import logo from "../media/logo.svg";
import { useState, useEffect, useRef } from "react";
import AccountCircleTwoToneIcon from "@mui/icons-material/AccountCircleTwoTone";
import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { clearUser } from "../state/user.js";
import PhoneInTalkIcon from "@mui/icons-material/PhoneInTalk";
import api from "../services/AxiosConfig.js";
function Navbar() {
  const marketRef = useRef(null);
  const user = useSelector((state) => state.user);
  const dispatch = useDispatch();
  let navigate = useNavigate();
  const [navbutton, setNavbutton] = useState();
  const [market, setMarket] = useState({
    content: [],
    isLoaded: false,
  });
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
  }, [user.isAuthenticated]);
  useEffect(() => {
    let grabMarket = async () => {
      let token = localStorage.getItem("jwt_token");
      try {
        let response = await api.get(
          "/market",
          {},
          {
            headers: {
              Authentication: `Bearer ${token}`,
            },
          }
        );
        !response.data["message"]
          ? setMarket({
              content: response.data.markets,
              isLoaded: true,
            })
          : alert(response.data["message"]);
      } catch (e) {
        alert(e.response.statusText);
      }
    };
    if (!market.isLoaded) grabMarket();
  }, [market.isLoaded]);
  useEffect(() => {
    if (market.content.length > 0) {
      let shiftAmount = marketRef.current.offsetWidth * 0.8;
      document.body.style.setProperty(
        "--pos-animation-shift",
        `${shiftAmount}px`
      );
      document.body.style.setProperty(
        "--neg-animation-shift",
        `-${shiftAmount}px`
      );
    }
  }, [market.content]);
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
          {market.isLoaded ? (
            market.content.map((ticker, i) => (
              <div key={i}>
                <p>{ticker.name} :</p>
                <span style={{ color: "lawnGreen" }}> ${ticker.price}</span>
                <p>{ticker.date}</p>
              </div>
            ))
          ) : (
            <p>Loading ....</p>
          )}
        </div>
      </div>
    </>
  );
}
export default Navbar;
