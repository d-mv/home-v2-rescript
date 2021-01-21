import * as React from 'react'
import { render, screen } from '@testing-library/react';
import {make as App} from './App.bs';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
