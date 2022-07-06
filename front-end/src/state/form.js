import { createSlice } from "@reduxjs/toolkit";
export const formSlice = createSlice({
  name: "form",
  initialState: {
    value: {
      name: "mustafa",
      email: "",
      number: "",
      brand: "",
    },
  },
  reducers: {
    setForm: (state, action) => {
      state.value = { ...action.payload };
    },
  },
});

// Action creators are generated for each case reducer function
export const { setForm } = formSlice.actions;

export default formSlice.reducer;
