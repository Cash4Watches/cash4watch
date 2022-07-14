import { Routes, Route } from "react-router-dom";
import Landing from "./screens/Landing.jsx";
import Navbar from "./components/Nav.jsx";
import Footer from "./components/Footer.jsx";
import Dashboard from "./components/Dashboard.jsx";
import Form from "./screens/Form.jsx";
import Login from "./screens/Login.jsx";
import Register from "./screens/Register.jsx";
function App() {
  return (
    <>
      <Routes>
        <Route
          path="/"
          element={
            <>
              <Navbar />
              <Landing />
            </>
          }
        />
        <Route
          path="/form"
          element={
            <>
              <Navbar />
              <Form />
            </>
          }
        />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route
          path="/login"
          element={
            <>
              <Navbar />
              <Login />
            </>
          }
        />
        <Route
          path="/register"
          element={
            <>
              <Navbar />
              <Register />
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
            </>
          }
        />
      </Routes>
      <Footer />
    </>
  );
}

export default App;
