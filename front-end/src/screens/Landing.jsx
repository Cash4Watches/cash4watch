import "../styles/Landing.scss";
import moblieRolex from "../media/rolexMoblie.svg";
import desktopRolex from "../media/rolexDesktop.svg";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import LocalShippingIcon from "@mui/icons-material/LocalShipping";
import LibraryAddCheckIcon from "@mui/icons-material/LibraryAddCheck";
import AttachMoneyIcon from "@mui/icons-material/AttachMoney";
import Acordain from "../components/Acordain.jsx";
import Review from "../components/Review.jsx";
import { useState, useEffect, useRef } from "react";
import { useSelector } from "react-redux";
import LandingForm from "../components/LandingForm.jsx";
import LandingBox from "../components/LandingBox.jsx";
import api from "../services/AxiosConfig.js";
function Landing() {
  const reviewContainer = useRef(null);
  const user = useSelector((state) => state.user);
  const [background, setBackground] = useState("");
  const [reviews, setReviews] = useState([]);
  let handleResize = () => {
    if (800 <= window.innerWidth) {
      setBackground(
        <div className="Landing__rolex-desktop">
          <img src={desktopRolex} alt="rolex" />
        </div>
      );
    } else {
      setBackground(
        <div className="Landing__rolex-moblie">
          <img src={moblieRolex} alt="rolex" />
        </div>
      );
    }
  };
  let grabReviews = async () => {
    try {
      let response = await api.get("/reviews");
      setReviews(response.data);
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  useEffect(() => {
    grabReviews();
    handleResize();
    window.addEventListener("resize", handleResize);
    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);
  useEffect(() => {
    if (reviews.length > 3) {
      reviewContainer.current.style.justifyContent = "flex-start";
    }
  }, [reviews]);
  return (
    <>
      <div className="Landing">
        <div className="Landing__landing-wrapper">
          {background}

          <div className="Landing__form-container">
            {!user.isAuthenticated ? <LandingForm /> : <LandingBox />}
          </div>
        </div>

        <div className="Landing__banner-container">
          <div className="Landing__banner-container__item">
            <LibraryAddCheckIcon fontSize="inherit" />
            <p>
              Get Insured
              <span style={{ color: "purple", fontWeight: "bolder" }}>Fed</span>
              <span style={{ color: "darkorange", fontWeight: "bolder" }}>
                Ex
              </span>
              label
            </p>
          </div>
          <div className="Landing__banner-container__arrow">
            <ArrowForwardIcon fontSize="inherit" />
          </div>
          <div className="Landing__banner-container__item">
            <LocalShippingIcon fontSize="inherit" />
            <p>Ship Your Watches For Free</p>
          </div>
          <div className="Landing__banner-container__arrow">
            <ArrowForwardIcon fontSize="inherit" />
          </div>
          <div className="Landing__banner-container__item">
            <AttachMoneyIcon fontSize="inherit" />
            <p>Get Paid</p>
          </div>
        </div>
        <div className="Landing-brand-video-container">
          <iframe
            width="560"
            height="315"
            src="https://www.youtube.com/embed/RLgVOi1ydQw"
            title="YouTube video player"
            frameBorder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
          ></iframe>
        </div>
        <div className="Landing__about-container">
          <h1>About Us</h1>
          <p>
            We are a high end watch consignment company with elite methods to
            maximize your watches' value. Our long and trusted reputation in the
            industry of over 10 years speaks for itself. Our tenure in the
            industry has allowed us to build relationships stretching to the
            other side of the globe which help us get you the most money
            possible for your watch.
          </p>
        </div>
        <div className="Landing-Reviews">
          <div className="Landing-Reviews-title">
            <p>Hear what our customers are saying about us !</p>
          </div>
          <div ref={reviewContainer} className="Landing-Reviews-container">
            {reviews.map((review, i) => (
              <Review
                key={i}
                author={review["user_name"]}
                review={review["comment"]}
              />
            ))}
          </div>
        </div>
        <Acordain />
      </div>
    </>
  );
}
export default Landing;
