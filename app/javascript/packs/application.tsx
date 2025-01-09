import React from 'react';
import ReactDOM from 'react-dom/client';
import Home from '../components/Home';

document.addEventListener('DOMContentLoaded', () => {
    const element = document.getElementById('hello');
    if (element) {
      const root = ReactDOM.createRoot(element); // createRoot を使用
      root.render(<Home />);
    }
  });