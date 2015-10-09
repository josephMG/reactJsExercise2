# @cjsx React.DOM

@PeopleSearch = React.createClass
  displayName: 'PeopleSearch'
  handleOnSubmit: (e) ->
    e.preventDefault()
    # the value of the search box input
    searchValue = @refs.search.getDOMNode().value.trim()
    # triggers it's custom onFormSUbmit event and passing value
    # onFormSubmit is in PeopleSection.js
    this.props.onFormSubmit(searchValue)

  render: ->
    <div className="filter-wrapper">
      <div className="form-wrapper">
        <form onSubmit={this.handleOnSubmit}>
          <input ref="search" placeholder="Search people" type="search" />
        </form>
      </div>
    </div>
