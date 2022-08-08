import React from "react";
import Accordion from "@mui/material/Accordion";
import AccordionDetails from "@mui/material/AccordionDetails";
import AccordionSummary from "@mui/material/AccordionSummary";
import Typography from "@mui/material/Typography";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import { useNavigate } from "react-router-dom";
function OrderCard({ order }) {
  const navigate = useNavigate();
  const [expanded, setExpanded] = React.useState(false);

  const handleChange = (panel) => {
    setExpanded(expanded ? false : true);
  };
  return (
    <>
      <Accordion
        expanded={expanded}
        onChange={() => handleChange()}
        style={{ width: "80vw" }}
      >
        <AccordionSummary
          expandIcon={<ExpandMoreIcon />}
          aria-controls="panel1bh-content"
          id="panel1bh-header"
          style={{
            borderRadius: "5px",
            border: "5px solid var(--dashboard-nav-color)",
          }}
        >
          <Typography sx={{ width: "33%", flexShrink: 0 }}>
            <h4>Order# {order.id}</h4>
          </Typography>
          <Typography sx={{ width: "33%", color: "text.primary" }}>
            <h4>{order.brand_name}</h4>
          </Typography>
          <Typography sx={{ width: "33%", color: "text.primary" }}>
            <h4>{order.user_name}</h4>
          </Typography>
          <Typography sx={{ width: "33%", color: "text.primary" }}>
            <h4>{order.created_at.split("T")[0]}</h4>
          </Typography>
          <button
            onClick={() => navigate(`/dashboard/detail/${order.id}`)}
            style={{
              border: "2px solid var(--dashboard-nav-color)",
              borderRadius: "5px",
              width: "10vw",
              height: "5vh",
              marginRight: "1vw",
              backgroundColor: "var(--dashboard-nav-color)",
              color: "white",
            }}
          >
            Manage
          </button>
        </AccordionSummary>
        <AccordionDetails
          style={{
            borderRadius: "5px",
            borderBottom: "5px solid var(--dashboard-nav-color)",
            borderLeft: "5px solid var(--dashboard-nav-color)",
            borderRight: "5px solid var(--dashboard-nav-color)",
          }}
        >
          <Typography>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Model Number/Refrence Number: {order.model_number}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Papers: {order.papers ? "Yes" : "No"}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Previous Polish: {order.previous_polish}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Previous Service: {order.previous_service}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Included Items: {order.included_items}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Extra Details: {order.extra_comment}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              {" "}
              Tracking Number:{" "}
              {order.tracking_number ? order.tracking_number : "None"}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Last Updated: {order.updated_at.split("T")[0]}
            </p>
            <p style={{ borderBottom: "2px solid var(--dashboard-nav-color)" }}>
              Created At: {order.created_at.split("T")[0]}
            </p>
          </Typography>
        </AccordionDetails>
      </Accordion>
    </>
  );
}

export default OrderCard;
