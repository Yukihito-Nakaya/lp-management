// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import React from 'react';
import {createRoot} from 'react-dom/client';

function App() {
  return <h1>Hello, World!</h1>;
}
const root = createRoot(document.getElementById('root'));
if (!root) {
  throw new Error('Root element not found');
}
createRoot(root).render(
    <React.StrictMode>
        <App />
    </React.StrictMode>
);