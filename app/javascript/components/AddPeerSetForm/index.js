import React from "react";
import { Mutation } from "react-apollo";
import { AddPeerSetMutation } from "./operations.graphql";
import ProcessPeerSetForm from "../ProcessPeerSetForm";


const AddPeerSetForm = () => (
  <Mutation mutation={AddPeerSetMutation}>
    {(addPeerSet, { loading }) => (
      <ProcessPeerSetForm
        buttonText="Add Peer"
        loading={loading}
        onProcessPeerSet={({ requesteePeerEmail }) =>
          addPeerSet({
            variables: {
              requesteePeerEmail
            }
          })
        }
      />
    )}
  </Mutation>
);

export default AddPeerSetForm;

