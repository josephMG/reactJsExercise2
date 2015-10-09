# @cjsx React.DOM
# Actually, no need cjsx
###### 
# @ will be transform to 'this'
# See also https://github.com/reactjs/react-rails/issues/28
######
@PeopleSection = React.createClass
  displayName: 'PeopleSection'
  getInitialState: ->
    didFetchData: false
    people: []
  fetchPeople: (data) ->
    $.ajax
      url: Routes.people_path()
      dataType: 'json'
      data: data
    .done @fetchDataDone
    .fail @fetchDataFail
  componentDidMount: ->
    @fetchPeople({})

  fetchDataDone: (data, textStatus, jqXHR) ->
    @setState 
      didFetchData: true 
      people: data
  fetchDataFail: (xhr, status, err) ->
    console.error this.props.url, status, err.toString()

  handleOnSearchSubmit: (search) -> 
    fetchPeople
      search: search
  render: ->
    cardsNode = @state.people.map (person) ->
      <PersonCard key={person.id} data={person}/>
    noDataNode = 
      <div className="warning">
        <span className="fa-stack">
          <i className="fa fa-meh-o fa-stack 2x"></i>
        </span>
      </div>
    <div>
      <div className="cards-wrapper">
      {
        if @state.people.length > 0
          {cardsNode}
        else if @state.didFetchData
          {noDataNode}
      }
      </div>
    </div>
