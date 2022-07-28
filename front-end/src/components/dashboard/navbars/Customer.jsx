import React from "react";
import InboxRoundedIcon from "@mui/icons-material/InboxRounded";
import ShareLocationRoundedIcon from "@mui/icons-material/ShareLocationRounded";
import KeyRoundedIcon from "@mui/icons-material/KeyRounded";
import HomeRoundedIcon from "@mui/icons-material/HomeRounded";
export default function CustomerNav(props) {
  let { handleClick } = props;
  return (
    <>
      <div
        onClick={handleClick}
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
        onClick={handleClick}
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
        onClick={handleClick}
        data-content="Tracking"
        className="Dashboard-nav-vertical-icon"
      >
        <ShareLocationRoundedIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">Track Packages</p>
      </div>
      <div
        onClick={handleClick}
        data-content="Account"
        className="Dashboard-nav-vertical-icon"
      >
        <KeyRoundedIcon
          className="Dashboard-nav-vertical-icon-noclick"
          fontSize="inherit"
        />
        <p className="Dashboard-nav-vertical-icon-noclick">Account Details</p>
      </div>
    </>
  );
}
