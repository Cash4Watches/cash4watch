import { createSlice } from "@reduxjs/toolkit";
export const userSlice = createSlice({
  name: "user",
  initialState: {
    name: "Guest",
    isAuthenticated: false,
  },
  reducers: {
    setUser: (state, action) => {
      state.name = action.payload.name;
      state.isAuthenticated = true;
    },
    clearUser: (state, action) => {
      state.name = "Guest";
      state.isAuthenticated = false;
      localStorage.clear();
    },
  },
});

// Action creators are generated for each case reducer function
export const { setUser, clearUser } = userSlice.actions;

export default userSlice.reducer;
