import React, { useRef, useState } from "react";
import "../styles/SubmitReview.scss";
import api from "../services/AxiosConfig.js";
const SubmitReview = () => {
  const [helperText, setHelperText] = useState("");
  let handleSubmit = async (e) => {
    setHelperText("");
    e.preventDefault();
    try {
      let response = await api.post(
        "/add-review",
        {
          comment: textArea.current.value,
        },
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      if (response.status === 200) {
        textArea.current.value = "";
        setHelperText("Your Review has been submited");
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  const textArea = useRef(null);

  return (
    <div className="SubmitReview">
      <h3>Submit Your Review here</h3>
      <div className="SubmitReview-form">
        <textarea ref={textArea}></textarea>
        <p>{helperText}</p>
        <button onClick={handleSubmit}> Submit </button>
      </div>
    </div>
  );
};

export default SubmitReview;
