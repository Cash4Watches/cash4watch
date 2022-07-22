import logo from './logo.svg';
import './App.css';
import {useState} from 'react'
function App() {
  const [file, setFile] = useState("")
  console.log("file",file)
  // let name = file.split("\").pop() 
  let filename = file.replace(/^.*[\\\/]/, '')
  let match = /\.(\w+)$/.exec(filename);
  let type = match ? `image/${match[1]}` : `image`;
  console.log("name",filename)
  console.log("match",match)
  console.log("type",type)

  const handleSubmit = () =>{
    // fetch("http://localhost:3000/upload", {
    //   method: "POST",
    //   headers: {'Content-Type': 'application/json'}, 
    //   body: JSON.stringify({
    //     name: file,

    //   })
    // }).then(res => {
    //   console.log("Request complete! response:", res);
    // });
    let filename = file.replace(/^.*[\\\/]/, '')
    let type;
    if(match[1]== "pdf"){
      type = 
    }else{
      type = match ? `image/${match[1]}` : `image`;
    }
    // // Infer the type of the image
    let match = /\.(\w+)$/.exec(filename);
    console.log(type)
    // let formData = new FormData();
    // formData.append("file", { uri: localUri, name: filename, type });
    // formData.append("name", filename);

    //   // console.log('clicked')
    //   fetch("http://localhost:3000/upload", {
    //     method: "POST",
    //     body: formData,
    //     headers: {
    //       "content-type": "multipart/form-data",
    //     },
    //   })
    //     .then((response) => response.json())
    //     .then((data) => {
    //       // console.log(data);
    //       navigation.navigate("page");
    //     });
  
  }
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <input type="file" onChange={(e)=>setFile(e.target.value)}/>
  
      </header>
    </div>
  );
}

export default App;
