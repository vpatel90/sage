var SampleBoxItemSearch = React.createClass ({
  getInitialState: function (){
    return {
      filterQuery: '',
      items: []
    };
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
    return (
      <div>
        <input value={this.state.filterQuery} onChange={this.handleChange} type="text"/>
        {this.state.items.map(function(item){
          return (
            <DropDownItems key={item.id} name={item.name} />
          );
        })}
      </div>
    )
  }
});
