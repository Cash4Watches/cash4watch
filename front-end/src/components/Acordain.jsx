import "../styles/Acordain.scss";
import AddIcon from "@mui/icons-material/Add";
import RemoveIcon from "@mui/icons-material/Remove";
import { useState } from "react";
function Acordain() {
  const [iconController, setIconController] = useState({
    1: true,
    2: true,
    3: true,
    4: true,
    5: true,
    6: true,
    7: true,
  });
  let handleClick = (e) => {
    let questionNumber = e.target.dataset.questionnumber;
    let answer = document.querySelector(`.Acordain__answer${questionNumber}`);
    answer.classList.toggle("show");
    setIconController({
      ...iconController,
      [questionNumber]: !iconController[questionNumber],
    });
  };
  return (
    <div className="Acordain">
      <h1>FAQs</h1>
      <div className="Acordain__container">
        <div
          onClick={handleClick}
          data-questionnumber={1}
          className="Acordain__question"
        >
          <h1 data-questionnumber={1}>What are our rates ?</h1>
          {iconController[1] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer1">
          <h1>
            We charge a standard fee of $350 dollars and 5% of the sale price of
            the watch. Polishes and repairs are quoted out on a case by case
            basis, get a free quote here.
          </h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={2}
          className="Acordain__question"
        >
          <h1 data-questionnumber={2}>What is the best way to reach us ?</h1>
          {iconController[2] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer2">
          <h1>
            You can best reach us by calling us or sending us a message on
            WhatsApp at 2124103030. You can also reach us through email at
            info@cash4watches.com or filling out the form on our homepage and a
            rep will get back to you within 24 business hours.
          </h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={3}
          className="Acordain__question"
        >
          <h1 data-questionnumber={3}>What Services do we offer ?</h1>
          {iconController[3] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer3">
          <h1>We offer repairs, polishes, and consignment sales services.</h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={4}
          className="Acordain__question"
        >
          <h1 data-questionnumber={4}>How does it work ?</h1>
          {iconController[4] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer4">
          <h1>
            We will give you a minimum price that we know we can sell the watch
            for. Once the consignment agreement and submission form are signed,
            we will send you a prepaid insurance label to send the watch to our
            facility. We will then notify you when the watch sells and send the
            funds your way.
          </h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={5}
          className="Acordain__question"
        >
          <h1 data-questionnumber={5}>How long is the consignment period ?</h1>
          {iconController[5] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer5">
          <h1>
            30 days. After which we will offer to buy out your watch at a
            prespecified price or return the watch back at no cost to you.
          </h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={6}
          className="Acordain__question"
        >
          <h1 data-questionnumber={6}> Why choose us ?</h1>
          {iconController[6] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer6">
          <h1>
            We have been in the watch industry for over 10 years now, and have
            elite methods to maximize your watches' value.
          </h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={7}
          className="Acordain__question"
          style={{ border: "none" }}
        >
          <h1 data-questionnumber={7}>Are we insured ?</h1>
          {iconController[7] ? <AddIcon /> : <RemoveIcon />}
        </div>
        <div className="Acordain__answer Acordain__answer7">
          <h1>
            We are 100% insured. From the second the watch leaves your
            possession, we take full responsibility for the safety of your
            watch.
          </h1>
        </div>
      </div>
    </div>
  );
}
export default Acordain;
