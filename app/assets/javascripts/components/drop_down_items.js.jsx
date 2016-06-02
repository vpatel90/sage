var DropDownItems = React.createClass({
  handleClick: function(){
    var itemBox = document.getElementById('itemsInBox');
    if (_.contains(this.props.selectedItems, this.props.itemId)){
      Materialize.toast("Item already on list", 2000)
    }else {
      this.props.addSelectedItems(this.props.itemId);
      itemBox.innerHTML = itemBox.innerHTML + "<input type='hidden' name='sample_box[item_id][]' value='"+ this.props.itemId + "'/>"+
                          '<p>' + this.props.name + '</p>';
    }
  },
  render: function(){
    return (
      <div onClick={this.handleClick}> {this.props.name} </div>
    );
  }
});
