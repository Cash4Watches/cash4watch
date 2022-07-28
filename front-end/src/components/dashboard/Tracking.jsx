import LocationSearchingRoundedIcon from "@mui/icons-material/LocationSearchingRounded";
import Button from "@mui/material/Button";
import { useRef } from "react";
function Tracking() {
  const trackingInput = useRef(null);
  let handleKeyDown = (e) => {
    if (e.keyCode === 13) fetchTrackingdata();
  };
  let fetchTrackingdata = () => {
    let trackingNumber = trackingInput.current.value;
    window.location = `https://www.fedex.com/fedextrack/?tracknumbers=${trackingNumber}`;

    // const postOptions = {
    //   method: "POST",
    //   headers: {
    //     "Content-Type": "application/json",
    //     "X-locale": "en_US",
    //     Authorization: "Bearer ",
    //   },
    //   body: JSON.stringify({
    //     trackingInfo: [
    //       {
    //         trackingNumberInfo: {
    //           trackingNumber: trackingNumber,
    //         },
    //       },
    //     ],
    //   }),
    // };
    // fetch(url, postOptions)
    //   .then((res) => res.json())
    //   .then((data) => console.log(data));
  };
  return (
    <div className="Tracking">
      <h1>Tracking Number</h1>
      <input ref={trackingInput} type="text" onKeyDown={handleKeyDown} />
      <Button variant="outlines" onClick={fetchTrackingdata}>
        Search
        <LocationSearchingRoundedIcon
          style={{ marginLeft: "1rem", fontSize: "1.6rem" }}
        />
      </Button>
    </div>
  );
}
export default Tracking;
