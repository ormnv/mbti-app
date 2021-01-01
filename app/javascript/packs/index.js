// app/javascript/packs/index.js
import React from 'react';
import { render } from 'react-dom';
import Provider from '../components/Provider';
import Navigator from '../components/Navigator';
import UserInfo from '../components/UserInfo';
import AddPeerSetForm from '../components/AddPeerSetForm';


render(
  <Provider>
  	<UserInfo />
    <Navigator />
    <AddPeerSetForm />
  </Provider>,
  document.querySelector('#root')
);