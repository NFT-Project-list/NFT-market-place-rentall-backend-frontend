import React from 'react';
import PropTypes from 'prop-types';
import withStyles from 'isomorphic-style-loader/lib/withStyles';
import s from './Calculator.css';
import {
  Grid,
  Row,
  Col,
  Table,
} from 'react-bootstrap';
import cx from 'classnames';
import Loader from '../../Loader';
import Slider from 'rc-slider';
import 'rc-slider/assets/index.css';

class Calculator extends React.Component {
  static propTypes = {
  };

  constructor(props) {
      super(props);
      this.state = {
          bookings: 30000,
          otherFees: 20,
          fees: 2.5,
      }
  }

  onChangeSlider = e => {
      e.preventDefault();
      this.setState({bookings: e.target.value})
  }

  onChange = value => {
      this.setState({
        bookings: value,
      });
  }

  render() {
    // const { data: { loading, getBanner } } = this.props;

    // if (loading || !getBanner) {
    //   return <Loader type={"text"} />
    // } else {
      return (
        <Grid fluid>
          <Row>
            <Col xs={12} sm={12} md={10} lg={10} className={cx(s.calculatorContainer)}>
              <h1 className={cx(s.boldText)}>Hosts get more</h1>
              <p style={{fontSize: "16px", marginBottom: "22px"}}>With the lowest fees in the industry, you keep more of what you earn. Whereas similar platforms charge up to 20% per transaction, RentLUV only charges 2.5% (with 0% for hosts)!</p>
              <div className={cx(s.calcContainer)}>
                <div className={cx(s.calcSlider)}>
                    <h4>Expected monthly bookings</h4>
                    <span className={cx(s.bookingsFund)}><span className={cx(s.greyDollarSign)}>$</span> <span className={cx(s.boldText)}>{' ' + this.state.bookings}</span></span>
                    <div className={cx(s.slidebarContainer)}>
                        {/* <Slider 
                            className={cx(s.rcSlider)} 
                            value={this.state.bookings} 
                            onChange={this.onChange} 
                            dotStyle={{
                                borderColor: '#c8c8c9',
                                backgroundColor: '#eeeeee',
                            }} 
                            trackStyle={{
                                backgroundColor: '#388e3c',
                            }}
                            railStyle={{
                                backgroundColor: '#f57c00',
                            }}
                            min={0} 
                            max={100000} 
                        /> */}
                        <input className={cx(s.slidebar)} type="range" id="bookings" step="5000" onChange={this.onChangeSlider} value={this.state.bookings} name="bookings"  min="0" max="100000" />
                    </div>
                </div>
                <div className={cx(s.calcTable)}>
                    <Table>
                        <tbody>
                            <tr>
                                <td className={cx(s.tableBorder)}></td>
                                <td className={cx(s.tableBorder)}>Other platforms</td>
                                <td className={cx(s.tableBorder)}>RentLUV</td>
                            </tr>
                            <tr>
                                <td className={cx(s.tableBorder)}>Gross booking</td>
                                <td className={cx(s.tableBorder)}>{'$' + this.state.bookings}</td>
                                <td className={cx(s.boldText, s.tableBorder)}>{'$' + this.state.bookings}</td>
                            </tr>
                            <tr>
                                <td className={cx(s.tableBorder)}>Platform fees</td>
                                <td className={cx(s.tableBorder)}>{'-(' + this.state.bookings * this.state.otherFees / 100 + ')'}</td>
                                <td className={cx(s.boldText, s.tableBorder)}>{'-(' + this.state.bookings * this.state.fees / 100 + ')'}</td>
                            </tr>
                            <tr>
                                <td className={cx(s.tableBorder)}>Net monthly revenue</td>
                                <td className={cx(s.tableBorder)}>{'$' + this.state.bookings * (1- this.state.otherFees / 100)}</td>
                                <td className={cx(s.boldText, s.tableBorder)}>{'$' + this.state.bookings * (1 - this.state.fees / 100)}</td>
                            </tr>
                            <tr>
                                <td className={cx(s.tableBorder, s.tableNoBottomBorder)}>Savings with RentLUV</td>
                                <td className={cx(s.tableBorder, s.tableNoBottomBorder)}></td>
                                <td className={cx(s.boldText, s.tableBorder, s.tableNoBottomBorder)}><span className={cx(s.savingsTextBox)}>{'+$' + this.state.bookings * (this.state.otherFees - this.state.fees) / 100}</span></td>
                            </tr>
                        </tbody>
                    </Table>
                </div>
                <div className={cx(s.calcLine)}>
                    <span className={cx(s.tableBorder)}>Savings with RentLUV</span>
                    <span className={cx(s.boldText, s.tableBorder)}><span className={cx(s.savingsTextBox)}>{'+$' + this.state.bookings * (this.state.otherFees - this.state.fees) / 100}</span></span>
                </div>
              </div>
            </Col>
          </Row>
        </Grid>
      );
    // }
  }
}

export default withStyles(s)(Calculator);