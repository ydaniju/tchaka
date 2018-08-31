import React from 'react';
import { render } from 'react-testing-library';
import 'jest-dom/extend-expect'
import User from '../components/User/User';

test('User component receives props and renders user details', () => {
  const { getByTestId } = render(
    <User user={{ name: 'Yusuf', email: 'danij@gmail.com' }} />
  );

  expect(getByTestId('user-details')).toHaveTextContent('danij@gmail.com');
});