import * as React from "react";
import Row from "react-bootstrap/Row";

interface Props {
  dresses: Dress[]
}

export interface Dress {
  group: string,
  attribution: string,
  rarity: string,
  style: string
}

class Content extends React.Component<Props> {
  public render() {
    return (
      <>
        <Row>
          FilterBox
        </Row>
        <Row>
          <div>
            {
              this.props.dresses.map((dress: Dress, index: number) => {
                return (
                  <div key={index}>
                    {`${dress.rarity} | ${dress.group} | ${dress.attribution} | ${dress.style}`}
                  </div>
                );
              })
            }
          </div>
        </Row>
      </>
    );
  }
}

export default Content;
