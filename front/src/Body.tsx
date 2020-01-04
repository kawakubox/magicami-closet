import * as React from "react";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Content from "./Content";
import SideMenu from "./SideMenu";

class Body extends React.Component {
  public render() {
    return (
      <Row>
        <Col>
          <SideMenu />
        </Col>
        <Col xs="10">
          <Content />
        </Col>
      </Row>
    );
  }
}

export default Body;
