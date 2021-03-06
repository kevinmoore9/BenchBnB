import React from 'react';
import ReactDOM from 'react-dom';


// window
import { signup, signin, signout } from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);

  window.signup = signup;
  window.signin = signin;
  window.signout = signout;
});
