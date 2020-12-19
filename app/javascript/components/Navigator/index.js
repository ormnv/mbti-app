// app/javascript/components/Navigator/index.js
import React from 'react';
import { Query } from 'react-apollo';
import gql from 'graphql-tag';

const NavigatorQuery = gql`
  {
    personalities
    {
      name
      tagline
      description
      primaryFunction {
        symbol
      }
    }
  }
`;
// update this 
export default () => (
  <Query query={NavigatorQuery}>
    {({ data, loading }) => (
      <div>
        {loading
          ? 'loading...'
          : data.personalities.map(({ name, tagline, description, primaryFunction }) => (
              <div key={name}>
                <b>{name}</b> primary function is {primaryFunction.symbol}
              </div>
            ))}
      </div>
    )}
  </Query>
);