import React, { useEffect, useState } from "react";
import api from "../../../services/AxiosConfig.js";
import Review from "./mini-components/AdminReviewView.jsx";
export default function AdminReviews() {
  const [reviews, setReviews] = useState({
    content: [],
    isLoaded: false,
  });
  useEffect(() => {
    let grabReviews = async () => {
      try {
        let response = await api.get(
          "/admin-show-reviews",
          {},
          {
            headers: {
              Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
            },
          }
        );
        console.log(response.data);
        !response.data["message"]
          ? setReviews({
              content: response.data,
              isLoaded: true,
            })
          : alert(response.data["message"]);
      } catch (e) {
        console.log(e);
      }
    };
    if (!reviews.isLoaded) grabReviews();
  }, [reviews.isLoaded]);

  return (
    <div className="Admin-Review">
      <h1>Review Control Panel</h1>
      <div className="Admin-Review-map-container">
        <div className="Admin-Review-map-container-title">
          <h2>Reviews:</h2>
        </div>
        {!reviews.isLoaded ? (
          <h1>Loading Reviews</h1>
        ) : (
          reviews.content.map((review, i) => (
            <Review
              key={i}
              reviews={reviews}
              setReviews={setReviews}
              data={review}
            />
          ))
        )}
      </div>
    </div>
  );
}
