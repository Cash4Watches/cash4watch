import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import AdminOrderDetailCard from "./mini-components/AdminOrderDetailCard.jsx";
import { useSelector } from "react-redux";
import Alert from "@mui/material/Alert";
import CircularProgress from "@mui/material/CircularProgress";
import logo from "../../../media/logo.svg";
import api from "../../../services/AxiosConfig.js";
export default function AdminOrderDetail() {
  let { order_id } = useParams();
  const navigate = useNavigate();
  const user = useSelector((state) => state.user);
  const [forceRefresh, setForceRefresh] = useState(false);
  const [content, setContent] = useState(null);
  useEffect(() => {
    let grabOrder = async () => {
      try {
        let token = localStorage.getItem("jwt_token");
        let response = await api.post(
          "/admin-view-order",
          {
            order_id: order_id,
          },
          {
            headers: {
              Authentication: `Bearer ${token}`,
            },
          }
        );

        !response.data["message"]
          ? setContent(response.data)
          : alert(response.data["message"]);
      } catch (e) {
        alert(e.response.statusText);
      }
    };
    grabOrder();
  }, [order_id, forceRefresh]);
  return (
    <>
      <div className="Dashboard-nav-horizontal">
        <div className="Dashboard-nav-horizontal-logo">
          <img
            src={logo}
            onClick={() => navigate("/dashboard")}
            alt="Cash logo"
          />
        </div>
      </div>

      {user.profile.is_admin ? (
        <div className="AdminOrderDetail">
          {!content ? (
            <CircularProgress sx={{ color: "green" }} />
          ) : (
            <AdminOrderDetailCard
              forceRefresh={setForceRefresh}
              data={content}
            />
          )}
        </div>
      ) : (
        <div
          style={{
            display: "flex",
            justifyContent: "center",
            marginTop: "10vh",
          }}
          className="unauthorized"
        >
          <Alert
            severity="error"
            style={{ alignSelf: "center", fontSize: "1rem" }}
          >
            unAuthorized you are not a admin !
          </Alert>
        </div>
      )}
    </>
  );
}
