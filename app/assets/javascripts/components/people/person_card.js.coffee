@PersonCard = React.createClass
  displayName: 'PersonCard'
  render: ->
    #cx = React.addons.classSet
    #cx = require 'classnames'
    cardClasses = cx
      'card': true
      'female': @props.data.gender == 'female'
      'male': @props.data.gender == 'male'

    <div className={cardClasses}>
      <header>
        <div className="avatar-warpper">
          &nbsp;
          <img className="avatar" src={this.props.data.picture} />
        </div>
        <div className="info-wrapper">
          <h4>{this.props.data.first_name} {this.props.data.last_name} </h4>
          <ul className="meta">
            <li>
              <i className="fa fa-map-maker"></i> {this.props.data.location}
            </li>
            <li>
              <i className="fa fa-birthday-cake"></i> {this.props.data.birth_date}
            </li>
          </ul>
        </div>
      </header>
      <div className="card-body">
        <div className="headline">
          <p>{this.props.data.headline}</p>
        </div>
        <ul className="contact-info">
          <li>
            <i className="fa fa-phone"></i> {this.props.data.phone_number}
          </li>
          <li>
            <i className="fa fa-envelope"></i> {this.props.data.email}
          </li>
        </ul>
      </div>
    </div>
