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
      console.log(e);
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
      console.log(e);
    }
  };
  return (
    <div className="Admin-Review-view">
      <div className="Admin-Review-view-left">
        <section>
          <h1>{data.user_id}</h1>
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
        <h1>0/0/2022</h1>
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
