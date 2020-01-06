import * as React from "react";
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Content, {Dress} from "./Content";
import SideMenu from "./SideMenu";

class Body extends React.Component {
  public render() {
    return (
      <Row>
        <Col>
          <SideMenu />
        </Col>
        <Col xs="10">
          <Content dresses={testDresses()} />
        </Col>
      </Row>
    );
  }
}

export default Body;

function testDresses(): Dress[] {
  const dresses = [
    {
      attribution: "火",
      group: "Magica2019",
      rarity: "SR",
      style: "体力"
    }
  ];
  return dresses;
}
