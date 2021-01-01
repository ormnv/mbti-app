// app/javascript/components/ProcessPeerSetForm/index.js

import React, { useState } from "react";
import cs from "./styles";

const ProcessPeerSetForm = ({
  // first_user_email = "",
  // second_user_email = "",
  // first_user_confirmation = "",
  initialRequesteePeerEmail = "",
  onProcessPeerSet,
  buttonText,
  loading
}) => {
  const [requesteePeerEmail, setRequesteePeerEmail] = useState(initialRequesteePeerEmail);
  //   const [secondUserId, initialSecondUserId] = useState(initialSecondUserId);
  return (
    <div className={cs.form}>
      <input
        type="text"
        placeholder="requested peer's email"
        value={requesteePeerEmail}
        className={cs.input}
        onChange={e => setRequesteePeerEmail(e.currentTarget.value)}
      />
      {loading ? (
        "...Loading"
      ) : (
        <button
          onClick={() => onProcessPeerSet({ requesteePeerEmail })}
          className={cs.button}
        >
          {buttonText}
        </button>
      )}
    </div>
  );
};

export default ProcessPeerSetForm;
