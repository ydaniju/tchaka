import React, { Component } from 'react';
import User from './../User/User';

export default class Users extends Component {
  render () {
    if (this.props.users.length) {
      return this.props.users.map(user => <User key={user.email} user={user} />);
    }
    return <p>No users yet</p>
  }
};