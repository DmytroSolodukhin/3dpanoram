
var camera, scene, renderer;

var isUserInteracting = false,
    lon = 0,
    lat = 0,
    phi = 0, theta = 0,
    webGl = null;


init();
animate();

/**
 * проверка на возможность подключение WEBGL,
 * в случае неудачи возвращаем рендеринг канваса
 * @returns {*}
 */
function doOnLoad(){

    var myCanvas = document.getElementById("mycanvas");
    var glContextName = ["webgl", "experimental-webgl", "webkit-3d", "moz-webgl"];
    for(var i = 0; i < glContextName.length; ++i){
        try{
            webGl = myCanvas.getContext(glContextName[i]);
        }catch(e){
        }
        if(webGl){
            break;
        }
    }
    document.getElementById( 'container').innerHTML="";
    if(webGl != null){
        return(new THREE.WebGLRenderer());
    }else{
        return(new THREE.CanvasRenderer());
    }

}

/**
 * инициализация панорамы
 */
function init() {

    var container, mesh;

    container = document.getElementById( 'container' );

    camera = new THREE.PerspectiveCamera( 55, window.innerWidth / window.innerHeight, 1, 1100 );
    camera.target = new THREE.Vector3( 0, 0, 0 );

    scene = new THREE.Scene();

    var geometry = new THREE.SphereGeometry( 30, 30, 30 );
    geometry.applyMatrix( new THREE.Matrix4().makeScale( -1, 1, 1 ) );


    var material = new THREE.MeshBasicMaterial( {
        map: THREE.ImageUtils.loadTexture( 'pano2.jpg' ),
        overdraw:true
    } );

    mesh = new THREE.Mesh( geometry, material );

            var okno = new THREE.PlaneGeometry(window.innerWidth, window.innerHeight), baselinemater = new THREE.MeshBasicMaterial({color:0xff0000});

           // okno.applyMatrix(new THREE.Matrix4().makeScale(1,1,1));
            okno.applyMatrix(new THREE.Matrix4().makeRotationX(-Math.PI/2));
    okno.applyMatrix(new THREE.Matrix4().setPosition(1,1,1));

            // реальный обьект
            var oknoreal = new THREE.Line(okno,baselinemater);
            scene.add( oknoreal );


    //scene.add( mesh );

    renderer = doOnLoad();


    renderer.setSize( window.innerWidth, window.innerHeight );

    container.appendChild( renderer.domElement );

    document.addEventListener( 'mousedown', onDocumentMouseDown, false );
    document.addEventListener( 'mousemove', onDocumentMouseMove, false );
    document.addEventListener( 'mouseup', onDocumentMouseUp, false );
    document.addEventListener( 'mousewheel', onDocumentMouseWheel, false );
    document.addEventListener( 'DOMMouseScroll', onDocumentMouseWheel, false);

    document.addEventListener( 'dragover', function ( event ) {

        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy';

    }, false );

    document.addEventListener( 'dragenter', function ( event ) {

        document.body.style.opacity = 0.1;

    }, false );

    document.addEventListener( 'dragleave', function ( event ) {

        document.body.style.opacity = 0.1;

    }, false );

    document.addEventListener( 'drop', function ( event ) {

        event.preventDefault();

        var reader = new FileReader();
        reader.addEventListener( 'load', function ( event ) {

            material.map.image.src = event.target.result;
            material.map.needsUpdate = true;

        }, false );
        reader.readAsDataURL( event.dataTransfer.files[ 0 ] );

        document.body.style.opacity = 0.1;

    }, false );

    window.addEventListener( 'resize', onWindowResize, true );
}

function onWindowResize() {

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );


}

function onDocumentMouseDown( event ) {

    event.preventDefault();

    isUserInteracting = true;

    onPointerDownPointerX = event.clientX;
    onPointerDownPointerY = event.clientY;

    onPointerDownLon = lon;
    onPointerDownLat = lat;

}


/**
 * прокрутка панорамы за мышью
 * @param event
 */
function onDocumentMouseMove( event ) {

    if ( isUserInteracting === true ) {

        lon = ( onPointerDownPointerX - event.clientX ) * 0.1 + onPointerDownLon;
        lat = ( event.clientY - onPointerDownPointerY ) * 0.1 + onPointerDownLat;

    }

}

/**
 * захват панорамы для перемещения
 * @param event
 */
function onDocumentMouseUp( event ) {

    isUserInteracting = false;

}

function onDocumentMouseWheel( event ) {

    // WebKit

    if ( event.wheelDeltaY ) {

        camera.fov -= event.wheelDeltaY * 0.05;

    // Opera / Explorer 9
    } else if ( event.wheelDelta ) {

        camera.fov -= event.wheelDelta * 0.05;

    // Firefox
    } else if ( event.detail ) {

        camera.fov += event.detail * 1.0;
    }

    camera.updateProjectionMatrix();

}

/**
 * анимация при перемещении
 */
function animate() {

    requestAnimationFrame( animate );
    update();

}


/**
 * установка позиции камеры
 */
function update() {

    lat = Math.max( - 85, Math.min( 85, lat ) );
    phi = THREE.Math.degToRad( 90 - lat );
    theta = THREE.Math.degToRad( lon );


    // вращение камеры
    camera.target.x = 500 * Math.sin( phi ) * Math.cos( theta );
    camera.target.y = 500 * Math.cos( phi );
    camera.target.z = 500 * Math.sin( phi ) * Math.sin( theta );

    camera.lookAt( camera.target );

    // ограничение на приближение и удаление камеры
    if(camera.fov > 80){
        camera.fov = 80;
    };
    if(camera.fov < 10){
        camera.fov = 10;
    };

/*
     // distortion
     camera.position.copy( camera.target ).negate();
*/
    renderer.render( scene, camera );

}
