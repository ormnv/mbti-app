// app/javascript/components/Library
import React, { useState } from "react";
import { Query } from "react-apollo";
import { NavigatorQuery } from "./operations.graphql";
import cs from "./styles";

const Navigator = () => {
  const [user, setUser] = useState(null);
  return (
    <Query query={NavigatorQuery}>
      {({ data, loading }) => (
        <div className={cs.navigator}>
          {loading || !data.users
            ? "loading..."
            : data.users.map(({id, email, fullName, personality }) => (
                <button
                  key={id}
                  onClick={() => setUser({ id, email, fullName, personality })}
                >
                  <div>{email}</div>
                  <div>{fullName}</div>
                  <div>{personality.name}</div>
                </button>
              ))}
        </div>
      )}
    </Query>
  );
};

export default Navigator;