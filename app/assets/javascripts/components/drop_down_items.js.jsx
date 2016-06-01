var DropDownItems = React.createClass({
  handleClick: function(){
    var itemBox = document.getElementById('itemsInBox');
    console.log(this.props.selectedItems)
    if (_.contains(this.props.selectedItems, this.props.name)){

    }else {
      this.props.addSelectedItems(this.props.name);

      itemBox.innerHTML = itemBox.innerHTML + '<p>' + this.props.name + '</p>';
    }
  },
  render: function(){
    return (
      <div onClick={this.handleClick}> {this.props.name} </div>
    );
  }
});
