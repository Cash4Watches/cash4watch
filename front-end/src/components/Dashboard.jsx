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
import Home from "../components/dashboard/Home.jsx";
import Orders from "../components/dashboard/Orders.jsx";
import Tracking from "../components/dashboard/Tracking.jsx";
import Account from "../components/dashboard/Account.jsx";
function Dashboard() {
  const horizontalNav = useRef(null);
  const verticallNav = useRef(null);
  const dashboardScreen = useRef(null);
  const [icon, setIcon] = useState(false);
  const [content, setContent] = useState(<Home />);
  const navigate = useNavigate();
  useEffect(() => {
    // due to differences in screen width the amount to shift by vaires
    let shiftAmount = "0rem";
    window.innerWidth >= 900 ? (shiftAmount = "18vw") : (shiftAmount = "7rem");
    //icon is initally set to false
    //icon controllers the side nav
    //when the side nav is visible shift screen to the right by x amount and change color of the horizontal nav
    let navColor = "";
    if (icon) {
      navColor = "#242951e9";
      verticallNav.current.style.transform = "translateX(-100%)";
      dashboardScreen.current.style.paddingLeft = "0rem";
    } else {
      navColor = "#790220";
      dashboardScreen.current.style.paddingLeft = shiftAmount;
      verticallNav.current.style.transform = "translateX(0%)";
    }
    document.body.style.setProperty("--dashboard-nav-color", navColor);
  }, [icon]);
  let changeContent = (e) => {
    let dashboardContent = e.target.dataset.content;
    switch (dashboardContent) {
      case "Home":
        setContent(<Home />);
        break;
      case "Orders":
        setContent(<Orders />);
        break;
      case "Tracking":
        setContent(<Tracking />);
        break;
      case "Account":
        setContent(<Account />);
        break;

      default:
        break;
    }
    document
      .querySelectorAll(".Dashboard-active")
      .forEach((element) => element.classList.remove("Dashboard-active"));
    e.target.classList.toggle("Dashboard-active");
  };
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

        <div className="Dashboard-nav-container">
          <div className="Dashboard-nav-vertical" ref={verticallNav}>
            <div className="Dashboard-nav-vertical-item">
              <div
                onClick={changeContent}
                data-content="Home"
                className="Dashboard-nav-vertical-icon"
              >
                <HomeRoundedIcon
                  className="Dashboard-nav-vertical-icon-noclick"
                  fontSize="inherit"
                />
                <p className="Dashboard-nav-vertical-icon-noclick">Dashboard</p>
              </div>
              <div
                onClick={changeContent}
                data-content="Orders"
                className="Dashboard-nav-vertical-icon"
              >
                <InboxRoundedIcon
                  className="Dashboard-nav-vertical-icon-noclick"
                  fontSize="inherit"
                />
                <p className="Dashboard-nav-vertical-icon-noclick">My Orders</p>
              </div>
              <div
                onClick={changeContent}
                data-content="Tracking"
                className="Dashboard-nav-vertical-icon"
              >
                <ShareLocationRoundedIcon
                  className="Dashboard-nav-vertical-icon-noclick"
                  fontSize="inherit"
                />
                <p className="Dashboard-nav-vertical-icon-noclick">
                  Track Packages
                </p>
              </div>
              <div
                onClick={changeContent}
                data-content="Account"
                className="Dashboard-nav-vertical-icon"
              >
                <KeyRoundedIcon
                  className="Dashboard-nav-vertical-icon-noclick"
                  fontSize="inherit"
                />
                <p className="Dashboard-nav-vertical-icon-noclick">
                  Account Details
                </p>
              </div>
            </div>
          </div>

          <div ref={dashboardScreen} className="Dashboard-screen">
            <div className="Dashboard-screen-content">{content}</div>
          </div>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
