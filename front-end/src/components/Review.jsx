import React from "react";
import "../styles/Review.scss";
import FormatQuoteRoundedIcon from "@mui/icons-material/FormatQuoteRounded";
export default function Review(props) {
  const { author, review } = props;
  return (
    <div className="Review">
      <div className="Review-qoute">
        <FormatQuoteRoundedIcon fontSize="inherit" />
      </div>
      <div className="Review-content">
        <h1>{review}</h1>
        <h2>- {author}</h2>
      </div>
      <div className="Review-qoute Review-bottom-qoute ">
        <FormatQuoteRoundedIcon fontSize="inherit" />
      </div>
    </div>
  );
}
