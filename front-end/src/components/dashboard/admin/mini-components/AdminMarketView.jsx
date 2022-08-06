import React from "react";
import DeleteForeverRoundedIcon from "@mui/icons-material/DeleteForeverRounded";
import AttachMoneyRoundedIcon from "@mui/icons-material/AttachMoneyRounded";
import api from "../../../../services/AxiosConfig.js";
export default function AdminMarketView(props) {
  const { data, setMarket, market } = props;
  let handleDelete = async () => {
    let token = localStorage.getItem("jwt_token");
    console.log(data.id);
    try {
      let response = await api.post(
        "/remove-market",
        {
          market_id: data.id,
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );
      !response.data["message"]
        ? setMarket({
            ...market,
            isLoaded: false,
          })
        : alert(response.data["message"]);
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
    <div className="AdminMarket-view">
      <h1>{data.name}</h1>
      <div className="AdminMarket-view-price">
        <AttachMoneyRoundedIcon className="AdminMarket-view-price-money-icon" />
        <p>{data.price}</p>
      </div>
      <div className="AdminMarket-view-date">
        <p>{cleanDataString(data.updated_at)}</p>
        <DeleteForeverRoundedIcon
          onClick={handleDelete}
          className="AdminMarket-view-date-trash-icon"
          fontSize="large"
        />
      </div>
    </div>
  );
}
