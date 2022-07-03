import { Routes, Route } from "react-router-dom";
import Landing from "./screens/Landing.jsx";
import Navbar from "./components/Nav.jsx";
import Footer from "./components/Footer.jsx";
function App() {
  return (
    <>
      <Navbar />
      <Routes>
        <Route path="/" element={<Landing />} />
        <Route
          path="*"
          element={
            <>
              <h1>
                Wrong url <a href="/">Click here</a> to go back home
              </h1>
            </>
          }
        />
      </Routes>
      <Footer />
    </>
  );
}

export default App;
