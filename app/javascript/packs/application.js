import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';


import { check_box } from '../plugins/subscrib_ckeck_button';
import { total } from '../plugins/total_card';

initMapbox();
check_box();
total();
