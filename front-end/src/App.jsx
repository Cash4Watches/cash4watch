import { Routes, Route } from "react-router-dom";
import Landing from "./screens/Landing.jsx";
import Navbar from "./components/Nav.jsx";
import Footer from "./components/Footer.jsx";
import Dashboard from "./components/Dashboard.jsx";
import Form from "./screens/Form.jsx";
import Login from "./screens/Login.jsx";
import Register from "./screens/Register.jsx";
import PresistProfile from "./components/PersistProfile.jsx";
import AdminOrderDetail from "./components/dashboard/admin/AdminOrderDetail.jsx";
import ForgottenPassword from "./components/ForgottenPassword.jsx";
function App() {
  return (
    <>
      <PresistProfile />
      <Routes>
        <Route
          path="/"
          element={
            <>
              <Navbar />
              <Landing />
              <Footer />
            </>
          }
        />
        <Route
          path="/form"
          element={
            <>
              <Navbar />
              <Form />
              <Footer />
            </>
          }
        />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route
          path="/dashboard/detail/:order_id"
          element={<AdminOrderDetail />}
        />
        <Route
          path="/login"
          element={
            <>
              <Navbar />
              <Login />
              <Footer />
            </>
          }
        />
        <Route
          path="/register"
          element={
            <>
              <Navbar />
              <Register />
              <Footer />
            </>
          }
        />
        <Route
          path="/forgot"
          element={
            <>
              <Navbar />
              <ForgottenPassword />
              <Footer />
            </>
          }
        />
        <Route
          path="*"
          element={
            <>
              <Navbar />
              <div className="Errorpage">
                Wrong url <a href="/">Click here</a> to go back home
              </div>
              <Footer />
            </>
          }
        />
      </Routes>
    </>
  );
}

export default App;
