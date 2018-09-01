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

test('Fetches and renders all users', () => {
  const { getByText } = render(
    <Users users={[
      { name: 'Yusuf', email: 'danij@gmail.com' },
      { name: 'Justin', email: 'justin@bieber.com' },
    ]} />
  );

  expect(getByText('danij@gmail.com')).toBeInTheDocument();
  expect(getByText('justin@bieber.com')).toBeInTheDocument();
});
