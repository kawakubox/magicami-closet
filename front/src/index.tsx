import 'bootstrap/dist/css/bootstrap.min.css';
import * as React from 'react';
import * as ReactDOM from 'react-dom';
import './index.css';
import Layout from "./Layout";
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(
  <Layout />,
  document.getElementById('root') as HTMLElement
);
registerServiceWorker();
