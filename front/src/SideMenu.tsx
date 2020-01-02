import * as React from "react";
import styled from "styled-components";

class SideMenu extends React.Component {
  public render() {
    return (
      <SideMenuBox>
        <ul>
          <li>Menu 1</li>
          <li>Menu 2</li>
          <li>Menu 3</li>
        </ul>
      </SideMenuBox>
    );
  }
}

export default SideMenu;

const SideMenuBox = styled.div`
  min-height: 500px;
  background-color: grey;
`;
