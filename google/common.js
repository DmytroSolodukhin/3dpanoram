function initialize() {
    // Set up Street View and initially set it visible. Register the
    // custom panorama provider function. Set the StreetView to display
    // the custom panorama 'reception' which we check for below.
    var panoOptions = {
        pano: 'reception',
        visible: true,
        panoProvider: getCustomPanorama
    };

    var panorama = new google.maps.StreetViewPanorama(
        document.getElementById('map-canvas'), panoOptions);

    var sydneyOffice = new google.maps.LatLng(-33.867386, 151.195767);

    var streetviewService = new google.maps.StreetViewService();

    streetviewService.getPanoramaByLocation(sydneyOffice, 50,
        function(result, status) {
            if (status == google.maps.StreetViewStatus.OK) {
                // We'll monitor the links_changed event to check if the current
                // pano is either a custom pano or our entry pano.
                google.maps.event.addListener(panorama, 'links_changed',
                    function() {
                        createCustomLinks(result.location.pano);
                    });
            }
        }
    );

}

// Return a pano image given the panoID.
function getCustomPanoramaTileUrl(pano, zoom, tileX, tileY) {
    // Note: robust custom panorama methods would require tiled pano data.
    // Here we're just using a single tile, set to the tile size and equal
    // to the pano "world" size.
    return 'pano.jpg';
}

// Construct the appropriate StreetViewPanoramaData given
// the passed pano IDs.
function getCustomPanorama(pano, zoom, tileX, tileY) {
    if (pano == 'reception') {
        return {
            location: {
                pano: 'reception'/*,
                description: 'Google Sydney - Reception'*/
            },
            links: [],
            // The text for the copyright control.
            copyright: 'Dmitrey',
            // The definition of the tiles for this panorama.
            tiles: {
                tileSize: new google.maps.Size(1024, 512),
                worldSize: new google.maps.Size(1024, 512),
                // The heading in degrees at the origin of the panorama
                // tile set.
                centerHeading: 105,
                getTileUrl: getCustomPanoramaTileUrl
            }
        };
    }
}

function createCustomLinks(entryPanoId) {
    var links = panorama.getLinks();
    var panoId = panorama.getPano();

    switch(panoId) {
        case 'reception':
            // Adding a link in the view from the entrance of the office
            // with an arrow pointing at 100 degrees, with a text of 'Exit'
            // and loading the street entrance of the building pano on click.
            links.push({
                heading: 195,
                description : 'Exit',
                pano : entryPanoId
            });
            break;
        default:
            return;
    }
}

google.maps.event.addDomListener(window, 'load', initialize);
