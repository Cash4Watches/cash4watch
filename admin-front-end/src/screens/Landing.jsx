import "../styles/Landing.scss";
import OrdersTable from '../components/OrdersTable.jsx'
function Landing() {
  return (
      <div className="Landing">
        <div style={{height: "100vh"}}>
          <h1>ADMIN PANEL</h1>
          <h2>Orders:</h2>
          <OrdersTable/>
        </div>    
      </div>
  );
}
export default Landing;
