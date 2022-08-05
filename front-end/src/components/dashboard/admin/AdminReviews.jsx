import React, { useEffect, useState } from "react";
import Review from "./mini-components/AdminReviewView.jsx";
import axios from "axios";
export default function AdminReviews() {
  const [reviews, setReviews] = useState({
    content: [],
    isLoaded: false,
  });
  useEffect(() => {
    let grabReviews = async () => {
      let token = localStorage.getItem("jwt_token");
      try {
        let response = await axios.get(
          "https://pacific-escarpment-97348.herokuapp.com/admin-show-reviews",
          {
            headers: {
              Authentication: `Bearer ${token}`,
            },
          }
        );
        !response.data["message"]
          ? setReviews({
              content: response.data,
              isLoaded: true,
            })
          : alert(response.data["message"]);
      } catch (e) {
        alert(e.response.statusText);
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
