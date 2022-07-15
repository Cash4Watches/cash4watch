import React from "react";
import { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import { setUser } from "../state/user.js";
import api from "../services/AxiosConfig.js";
const PresistProfile = () => {
  const dispatch = useDispatch();
  const user = useSelector((state) => state.user);
  let grabProfile = async () => {
    let response = await api.get("/profile");
    console.log(response.data);
    dispatch(
      setUser({
        name: response.data.user.full_name,
        token: response.data.token,
      })
    );
  };
  useEffect(() => {
    let token = localStorage.getItem("jwt_token");
    //if the user is not authenticated and a token exists attempt to log them in
    if (!user.isAuthenticated && token) {
      //make api call
      // grabProfile();
    } else {
      console.log("isAuthenticated", token);
    }
  }, [user]);
  return <></>;
};

export default PresistProfile;
