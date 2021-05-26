import ApolloClient, { createNetworkInterface } from 'apollo-client';

const client = new ApolloClient({
  networkInterface: createNetworkInterface({
    uri: 'http://0.0.0.0:3000/graphql',
    opts: {
      // Additional fetch options like `credentials` or `headers`
      credentials: 'include'
    },
  }),
  queryDeduplication: true,
  reduxRootSelector: state => state.apollo,
});

export default function createApolloClient() {
  return client;
}
