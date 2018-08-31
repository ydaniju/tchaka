import React, { Component } from 'react';

export default class Users extends Component {
  render () {
    if (this.props.users.length) {
      return this.props.users.map(user => <div>{user}</div>);
    }
    return <p>No users yet</p>
  }
};