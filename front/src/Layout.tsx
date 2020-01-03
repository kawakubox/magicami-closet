import 'bootstrap/dist/css/bootstrap.min.css';
import * as React from 'react';
import Container from 'react-bootstrap/Container';
import Body from "./Body";
import Header from "./Header";

class Layout extends React.Component {
  public render() {
    return (
      <Container>
        <Header />
        <Body />
      </Container>
    );
  }
}

export default Layout;
