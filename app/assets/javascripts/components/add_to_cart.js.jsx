var AddToCart = React.createClass({
  handleClick: function(){

  },
  render: function(){
    return (
      <div onClick={this.handleClick} className="btn">{this.props.name}</div>
    );
  }
});
