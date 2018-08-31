import React from "react";
import ReactDOM from "react-dom";

import style from './assets/styles/index.css'

const Index = () => {
  return <div className={style.redder}>Hello React!</div>;
};

ReactDOM.render(<Index />, document.getElementById('root'));
