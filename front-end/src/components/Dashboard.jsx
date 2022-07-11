import "../styles/Dashboard.scss";
import MenuRoundedIcon from "@mui/icons-material/MenuRounded";
import CloseRoundedIcon from "@mui/icons-material/CloseRounded";
import InboxRoundedIcon from "@mui/icons-material/InboxRounded";
import ShareLocationRoundedIcon from "@mui/icons-material/ShareLocationRounded";
import KeyRoundedIcon from "@mui/icons-material/KeyRounded";
import HomeRoundedIcon from "@mui/icons-material/HomeRounded";
import { useState, useEffect, useRef } from "react";
import logo from "../media/logo.svg";
import { useNavigate } from "react-router-dom";
import { useSelector } from "react-redux";

function Dashboard() {
  const user = useSelector((state) => state.user);
  const horizontalNav = useRef(null);
  const verticallNav = useRef(null);
  const dashboardScreen = useRef(null);
  const [icon, setIcon] = useState(true);
  const navigate = useNavigate();
  useEffect(() => {
    let navColor = "";
    if (icon) {
      navColor = "#242951e9";
      verticallNav.current.style.transform = "translateX(-100%)";
      dashboardScreen.current.style.transform = "translateX(-10rem)";
    } else {
      navColor = "#790220";
      dashboardScreen.current.style.transform = "translateX(0rem)";
      verticallNav.current.style.transform = "translateX(0%)";
    }
    horizontalNav.current.style.backgroundColor = navColor;
  }, [icon]);
  return (
    <>
      <div className="Dashboard">
        <div className="Dashboard-nav-horizontal" ref={horizontalNav}>
          <div
            className="Dashboard-nav-toggle"
            onClick={() => setIcon((prev) => !prev)}
          >
            {icon ? (
              <MenuRoundedIcon fontSize="inherit" />
            ) : (
              <CloseRoundedIcon fontSize="inherit" />
            )}
          </div>
          <div className="Dashboard-nav-horizontal-logo">
            <img src={logo} onClick={() => navigate("/")} alt="Cash logo" />
          </div>
        </div>

        <div className="Dashboard-content-container">
          <div className="Dashboard-nav-vertical" ref={verticallNav}>
            <div className="Dashboard-nav-vertical-item">
              <div className="Dashboard-nav-vertical-icon">
                <HomeRoundedIcon fontSize="inherit" />
                <p>Dashboard</p>
              </div>
              <div className="Dashboard-nav-vertical-icon">
                <InboxRoundedIcon fontSize="inherit" />
                <p>My Orders</p>
              </div>
              <div className="Dashboard-nav-vertical-icon">
                <ShareLocationRoundedIcon fontSize="inherit" />
                <p>Track Packages</p>
              </div>
              <div className="Dashboard-nav-vertical-icon">
                <KeyRoundedIcon fontSize="inherit" />
                <p>Change Account Details</p>
              </div>
            </div>
          </div>

          <div
            ref={dashboardScreen}
            className="Dashboard-content-container-screen"
          >
            <h1>
              Hello, <span>{user.name}</span>
            </h1>
          </div>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
