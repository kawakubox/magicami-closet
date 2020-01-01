import * as React from 'react';
import Navbar from "react-bootstrap/Navbar";

class Header extends React.Component {
  public render() {
    return (
      <>
        <Navbar bg="dark" variant="dark" expand="xl">
          <Navbar.Brand>
            Magicami Closet
          </Navbar.Brand>
        </Navbar>
      </>
    );
  }
}

export default Header;
