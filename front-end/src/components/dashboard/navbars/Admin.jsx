import React from "react";
import HomeRoundedIcon from "@mui/icons-material/HomeRounded";
import StorefrontIcon from "@mui/icons-material/Storefront";
import ReviewsIcon from "@mui/icons-material/Reviews";
import AppsIcon from "@mui/icons-material/Apps";
export default function CustomerNav(props) {
  let { handleClick } = props;
  return (
    <>
      <div
        onClick={handleClick}
        data-content="Admin Home"
        className="Dashboard-nav-vertical-icon"
      >
        <HomeRoundedIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">Home</p>
      </div>
      <div
        onClick={handleClick}
        data-content="Admin Orders"
        className="Dashboard-nav-vertical-icon"
      >
        <AppsIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">All Orders</p>
      </div>
      <div
        onClick={handleClick}
        data-content="Admin Reviews"
        className="Dashboard-nav-vertical-icon"
      >
        <ReviewsIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">Reviews</p>
      </div>
      <div
        onClick={handleClick}
        data-content="Admin Market"
        className="Dashboard-nav-vertical-icon"
      >
        <StorefrontIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">Market</p>
      </div>
    </>
  );
}
