// app/javascript/packs/index.js
import React from 'react';
import { render } from 'react-dom';
import Provider from '../components/Provider';
import Navigator from '../components/Navigator';

render(
  <Provider>
    <Navigator />
  </Provider>,
  document.querySelector('#root')
);