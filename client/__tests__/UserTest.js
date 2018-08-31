import React from 'react';
import { render } from 'react-testing-library';

test('User component receives props and renders user details', () => {
  const { getByTestId } = render(
    <User text='I am a user' />
  );

  expect(getByTestId('user-text')).toHaveTextContent('I am a user');
})