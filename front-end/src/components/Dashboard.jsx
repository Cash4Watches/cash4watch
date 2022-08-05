import "../styles/Dashboard.scss";
import MenuRoundedIcon from "@mui/icons-material/MenuRounded";
import CloseRoundedIcon from "@mui/icons-material/CloseRounded";
import { useState, useEffect, useRef } from "react";
import logo from "../media/logo.svg";
import { useNavigate } from "react-router-dom";
import Home from "../components/dashboard/Home.jsx";
import Orders from "../components/dashboard/Orders.jsx";
import Tracking from "../components/dashboard/Tracking.jsx";
import Account from "../components/dashboard/Account.jsx";
import CustomerNav from "../components/dashboard/navbars/Customer.jsx";
import AdminNav from "../components/dashboard/navbars/Admin.jsx";
import AdminMarket from "../components/dashboard/admin/AdminMarket.jsx";
import AdminOrders from "../components/dashboard/admin/AdminOrders.jsx";
import AdminReviews from "../components/dashboard/admin/AdminReviews.jsx";
import AdminHome from "../components/dashboard/admin/AdminHome.jsx";
import { useSelector } from "react-redux";
import "../styles/Admin.scss";
function Dashboard() {
  const user = useSelector((state) => state.user);
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
  useEffect(() => {
    if (user.isAdmin) setContent(<AdminHome />);
  }, [user.isAdmin]);
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
      case "Admin Market":
        setContent(<AdminMarket />);
        break;
      case "Admin Orders":
        setContent(<AdminOrders />);
        break;
      case "Admin Reviews":
        setContent(<AdminReviews />);
        break;
      case "Admin Home":
        setContent(<AdminHome />);
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
              {!user.profile.is_admin ? (
                <CustomerNav handleClick={changeContent} />
              ) : (
                <AdminNav handleClick={changeContent} />
              )}
            </div>
          </div>

          <div ref={dashboardScreen} className="Dashboard-screen">
            {content}
          </div>
        </div>
      </div>
    </>
  );
}

export default Dashboard;
