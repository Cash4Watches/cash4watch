import { Routes, Route } from "react-router-dom";
import Landing from "./screens/Landing.jsx";
import Navbar from "./components/Nav.jsx";
import Footer from "./components/Footer.jsx";
import Dashboard from "./components/Dashboard.jsx";
import Form from "./screens/Form.jsx";
function App() {
  return (
    <>
      <Navbar />
      <Routes>
        <Route path="/" element={<Landing />} />
        <Route path="/form" element={<Form />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route
          path="*"
          element={
            <>
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
