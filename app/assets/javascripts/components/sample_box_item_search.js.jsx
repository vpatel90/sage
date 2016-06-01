var SampleBoxItemSearch = React.createClass ({
  getInitialState: function (){
    return {
      filterQuery: '',
      items: [],
      selectedItems: []
    };
  },
  addSelectedItems: function(item){
    var that = this;
    var sis = this.state.selectedItems;
    sis.push(item);
    this.setState({
      selectedItems: sis
    })
  },
  handleChange: function(event) {
    var that = this;
    this.setState({
      filterQuery: event.target.value
    });
    var url =  "/sample_box/search_items?query=" + event.target.value;
    $.getJSON(url,function(response){
      that.setState({
        items: response
      });
    });
  },
  render: function(){
    var that = this;
    return (
      <div>
        <input value={this.state.filterQuery} onChange={this.handleChange} type="text"/>
        {this.state.items.map(function(item){
          return (
            <DropDownItems key={item.id}
                           name={item.name}
                           selectedItems={that.state.selectedItems}
                           addSelectedItems={that.addSelectedItems}/>
          );
        })}

      </div>
    )
  }
});
