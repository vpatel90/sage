var AddToCart = React.createClass({
  handleClick: function(){
    $.ajax({
      method: "POST",
      url: "/add_to_cart",
      data: {
        cart_itemable_id: this.props.item_id,
        cart_itemable_type: this.props.item_type
      },
      success: function(response){
        console.log(response);
      },
      error: function(response){
        console.log(response);
      }
    });
  },
  render: function(){
    return (
      <div onClick={this.handleClick} className="btn">{this.props.name}</div>
    );
  }
});
