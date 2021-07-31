import PropTypes from 'prop-types';
import React from 'react';
import {Form} from 'react-bootstrap';
import 'react-bootstrap-table-next/dist/react-bootstrap-table2.min.css';

import BootstrapTable from 'react-bootstrap-table-next';

export default class PlaylistView extends React.Component {

  constructor(props) {
    super(props);
    this.state = { tracks: this.props.tracks };
  }

  render() {
    const musics = [ ];

    function addTracks(tracks) {
      (tracks).map((track) => (
            musics.push({
              id: track['id'],
              popularity: track['popularity'],
              name: track['name'],
              preview_url: track['preview_url'],
              spotify_id: track['spotify_id'],
              href: track['href'],
              duration_ms: track['duration_ms'],
              artist_name: track['artist_name']
            })
        )
      );
    }

    addTracks(this.state.tracks);

    const columns = [
      {
        dataField: 'name',
        text: 'Album Name'
      },{
        dataField: 'artist_name',
        text: 'Artist Name'
      },{
        dataField: 'spotify_id',
        text: 'Spotify id'
      },{
        dataField: 'popularity',
        text: 'Popularity'
      },{
        dataField: 'duration_ms',
        text: 'Duration in milliseconds'
      }]
    

    return (
      <React.Fragment>
      <div className="form-group">
        <hr />
        <Form >
          <BootstrapTable 
            keyField='id'
            columns={columns} 
            data={musics} 
            noDataIndication={"No data to display"}
            striped
            hover condensed
             />
        </Form>
      </div>
      </React.Fragment>
    );
  }
}
