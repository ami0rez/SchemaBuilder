class Header extends React.Component {
state = {
        headerX: window.header,
    }
    
  render(){
    return (

        <div className="section-body contain-lg">
            <div className="row">
                <div className="col-lg-12">
                    <h4>Headers</h4>
                </div>
                <div className="col-lg-3 col-md-4">
                    <article className="margin-bottom-xxl">
                        <p>
                            Add/edit your headers here
                        </p>
                        <p>
                            <button type="submit" className="btn btn-primary ink-reaction">Add Page</button>
                        </p>
                    </article>
                </div>
                <div className="col-lg-offset-1 col-md-8">
                    <div id="PageList">

                    </div>

                    <div className="card panel">
                        <div className="card-head collapsed" data-toggle="collapse" data-parent="#accordion1" data-target="#accordion2" aria-expanded="false">
                            <header>Add Header</header>
                            <div className="tools">
                                <a className="btn btn-icon-toggle"><i className="fa fa-angle-down"></i></a>
                            </div>
                        </div>
                        <div id="accordion2" className="collapse" aria-expanded="false" >
                            <div className="card-body">

                                <form className="form">
                                    <div className="card">

                                        <div className="card-body floating-label">
                                            <div>
                                                <label className="radio-inline radio-styled">
                                                    <input type="radio" name="active" value="true"/><span>Active</span>
                                                </label>
                                                <label className="radio-inline radio-styled">
                                                    <input type="radio" name="active" value="false"/><span>Not Active</span>
                                                </label>
                                            </div>
                                            <br />
                                            <div className="form-group">
                                                <input type="text" className="form-control" id="name" value={this.state.headerX.name} />
                                                <label >Name</label>
                                            </div>
                                           

                                            <div className="form-group">
                                                <input type="text" className="form-control" id="logo" value={this.state.headerX.logo}/>
                                                <label >Logo</label>
                                            </div>

                                        </div>
                                        <div className="card-actionbar">
                                            <div className="card-actionbar-row">
                                                <button type="button" className="btn btn-flat btn-primary ink-reaction">Add Page</button>
                                            </div>
                                        </div>
                                    </div>
                                    <em className="text-caption">Loading Header</em>
                                </form>

                            </div>
                        </div>
                    </div>


                </div>

            </div>

        </div>



            );
  }
}


ReactDOM.render(<Header />, document.getElementById('pagecontent'));
