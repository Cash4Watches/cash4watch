import { Routes, Route } from "react-router-dom";
import Landing from "./screens/Landing.jsx";
function App() {
  return (
    <>
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
    </>
  );
}

export default App;
