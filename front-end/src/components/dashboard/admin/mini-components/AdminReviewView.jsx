import React, { useState } from "react";
import VerifiedRoundedIcon from "@mui/icons-material/VerifiedRounded";
import DoNotDisturbAltRoundedIcon from "@mui/icons-material/DoNotDisturbAltRounded";
import DeleteForeverRoundedIcon from "@mui/icons-material/DeleteForeverRounded";
import FormControlLabel from "@mui/material/FormControlLabel";
import Switch from "@mui/material/Switch";
import api from "../../../../services/AxiosConfig.js";
const AdminReviewView = (props) => {
  const { data, setReviews, reviews } = props;
  const [approved, setApproved] = useState(data.approved);
  let handleDelete = async () => {
    try {
      let response = await api.post(
        "/delete-review",
        {
          review_id: data.id,
        },
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      console.log(response);
      if (response.status === 200) {
        setReviews({
          ...reviews,
          isLoaded: false,
        });
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  let handleToggle = async (e) => {
    try {
      let response = await api.post(
        "/update-review",
        {
          review_id: data.id,
        },
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      setApproved(response.data.approved);
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  let cleanDataString = (date) => {
    if (typeof date === "string") {
      let filteredDate = date.split("T")[0];
      filteredDate = filteredDate.replace(/-/g, "/");
      return filteredDate;
    } else {
      return "";
    }
  };
  return (
    <div className="Admin-Review-view">
      <div className="Admin-Review-view-left">
        <section>
          <h1>{data.user_name}</h1>
          <p>{data.comment}</p>
        </section>
        {!approved ? (
          <DoNotDisturbAltRoundedIcon
            fontSize="large"
            className="Admin-Review-view-disapproved"
          />
        ) : (
          <VerifiedRoundedIcon
            fontSize="large"
            className="Admin-Review-view-approved"
          />
        )}
        <FormControlLabel
          control={<Switch checked={approved} onChange={handleToggle} />}
        />
        <p>Toggle</p>
      </div>
      <div className="Admin-Review-view-right">
        <h1>{cleanDataString(data.created_at)}</h1>
        <DeleteForeverRoundedIcon
          onClick={handleDelete}
          className="Admin-Review-view-right-trash"
          fontSize="large"
        />
      </div>
    </div>
  );
};

export default AdminReviewView;
