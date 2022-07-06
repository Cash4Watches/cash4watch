import "../styles/Form.scss";

function Form() {
  let handleSubmit = (e) => {
    e.preventDefault();
  };
  return (
    <>
      <div className="Form">
        <form onSubmit={handleSubmit}></form>
      </div>
    </>
  );
}

export default Form;
