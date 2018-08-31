import React from 'react';

export default ({ user }) => (
  <div data-testid='user-details'>
    <div>{user.name}</div>
    <div>{user.email}</div>
    <div></div>
  </div>
);
