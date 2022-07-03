import "../styles/Acordain.scss";
function Acordain() {
  let handleClick = (e) => {
    let questionNumber = e.target.dataset.questionnumber;
    let answer = document.querySelector(`.Acordain__answer${questionNumber}`);
    answer.classList.toggle("show");
  };
  return (
    <div className="Acordain">
      <h1>FAQ</h1>
      <div className="Acordain__container">
        <div
          onClick={handleClick}
          data-questionnumber={1}
          className="Acordain__question"
        >
          <h1 data-questionnumber={1}>Question1</h1>
        </div>
        <div className="Acordain__answer Acordain__answer1">
          <h1>answer1</h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={2}
          className="Acordain__question"
        >
          <h1 data-questionnumber={2}>Question2</h1>
        </div>
        <div className="Acordain__answer Acordain__answer2">
          <h1>answer2</h1>
        </div>
        <div
          onClick={handleClick}
          data-questionnumber={3}
          className="Acordain__question"
        >
          <h1 data-questionnumber={3}>Question3</h1>
        </div>
        <div className="Acordain__answer Acordain__answer3">
          <h1>answer3</h1>
        </div>
      </div>
    </div>
  );
}
export default Acordain;
