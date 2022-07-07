import { configureStore } from "@reduxjs/toolkit";
import userReducer from "./user.js";
import formReducer from "./form.js";
export default configureStore({
  reducer: {
    user: userReducer,
    form: formReducer,
  },
});
