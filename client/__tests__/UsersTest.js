import React from 'react';
import { render } from 'react-testing-library';
import 'jest-dom/extend-expect'
import Users from '../components/Users/Users';

test("Renders 'No users yet' if no user was found", () => {
  const { getByText } = render(
    <Users users={[]} />
  );

  expect(getByText('No users yet')).toBeInTheDocument();
});