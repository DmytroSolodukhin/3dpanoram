
var camera, scene, renderer;

var isUserInteracting = false,
    lite = 0x555555,
    lon = 0,
    acx, R = 0, L = 0,
    lat = 0,
    phi = 0, theta = 0,
    tablet = false;
webGl = null;
if( device.tablet() || device.mobile() ) {
    tablet = true;
}

window.ondevicemotion = function(event){
    acx = event.accelerationIncludingGravity.x;
    acx = Math.round(acx);
}

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
    camera.target = new THREE.Vector3( 100, 100, 100 );
    camera.position.y =-1;
    camera.position.x = 1;
    camera.position.z = 0;
    scene = new THREE.Scene();

    var geometry = new THREE.SphereGeometry( 100, 100, 100 );

    var pano = 'pano2.jpg';
    if(tablet){
        pano='pano4.jpg';
    }

    renderer = doOnLoad();
    renderer.setSize( window.innerWidth, window.innerHeight );

    container.appendChild( renderer.domElement );

    var material = new THREE.MeshBasicMaterial( {
        map: THREE.ImageUtils.loadTexture( pano ),
        overdraw:true,
        side:THREE.BackSide
    } );

    mesh = new THREE.Mesh( geometry, material );


    /**
     * координаты
     * @type {THREE.Mesh}
     *
     var xc = new THREE.Geometry(),
     yc = new THREE.Geometry(),
     zc = new THREE.Geometry();

     xc.vertices.push(new THREE.Vector3( -100, 0, 0 ), new THREE.Vector3( 100, 0, 0 ));
     yc.vertices.push(new THREE.Vector3( 0, -100, 0 ), new THREE.Vector3( 0, 100, 0 ));
     zc.vertices.push(new THREE.Vector3( 0, 0, -100 ), new THREE.Vector3( 0, 0, 100 ));

     var linex = new THREE.Line(xc, new THREE.LineBasicMaterial({color:0xff0000,linewidth:2})),
     liney = new THREE.Line(yc, new THREE.LineBasicMaterial({color:0x00ff00,linewidth:2})),
     linez = new THREE.Line(zc, new THREE.LineBasicMaterial({color:0x0000ff,linewidth:2}));
     scene.add( linex);
     scene.add( liney);
     scene.add( linez);
     /*
     стрелки
     */

    var s1 = new THREE.Geometry(),
        s2 = new THREE.Geometry();

    s1.vertices.push(new THREE.Vector3( 4, -3, -1 ), new THREE.Vector3( 5, -3, 0 ), new THREE.Vector3( 4, -3, 1 ));
    //s2.vertices.push(new THREE.Vector3( 0, -100, 0 ), new THREE.Vector3( 0, 100, 0 ));

    var snext = new THREE.Line(s1, new THREE.LineBasicMaterial({color:lite,linewidth:16}));
    //sprev = new THREE.Line(s2, new THREE.LineBasicMaterial({color:0x0000ff,linewidth:6}));
    scene.add( snext);
    //scene.add( sprev );
    /*
     конец стрелкам

     */

    var okno = new THREE.BoxGeometry(30,5,30), baselinemater = new THREE.MeshBasicMaterial({color:0xff0000,opacity:0.6,
        overdraw:true});


    // реальный обьект
    var oknoreal = new THREE.Mesh(okno, baselinemater);
    oknoreal.position.y = -20;
    oknoreal.position.x = 0;
    oknoreal.position.z = 0;

    //ставим на сцену обьекты
    scene.add( mesh );
    scene.add( oknoreal );

    var domEvents   = new THREEx.DomEvents(camera, renderer.domElement);

    domEvents.addEventListener(oknoreal, 'click', function(event){
        document.location.href = "/";
    }, false);

    domEvents.addEventListener(snext, 'click', function(event){
        alert('next pano');
    }, false);

    domEvents.addEventListener(snext, 'mouseover', function(event){
        snext.material.color.setHex(0xff0000);
    }, false);

    domEvents.addEventListener(snext, 'mouseout', function(event){
        snext.material.color.setHex(lite);
    }, false);


    //установка событий для прокрутки панорамы
    document.addEventListener( 'mousedown', onDocumentMouseDown, false );
    document.addEventListener( 'touchstart', onDocumentMouseDown, false );
    document.addEventListener( 'mousemove', onDocumentMouseMove, false );
    document.addEventListener( 'touchmove', onDocumentMouseMove, false );
    document.addEventListener( 'mouseup', onDocumentMouseUp, false );
    document.addEventListener( 'touchend', onDocumentMouseUp, false );
    document.addEventListener( 'mousewheel', onDocumentMouseWheel, false );
    document.addEventListener( 'DOMMouseScroll', onDocumentMouseWheel, false);
    document.addEventListener( 'dragover', function ( event ) {

        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy';

    }, false );

    //обьеденяем события прокрутки
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


/**
 * изменение параметров окна
 */
function onWindowResize() {

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );


}

/**
 * установка параметров при перемещении
 * @param event
 */
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

        if(tablet){

            alert(event.targetTouches[0].pageX);
            lon = ( onPointerDownPointerX - event.targetTouches[0].pageX ) * 0.1 + onPointerDownLon;
            lat = ( event.targetTouches[0].pageY - onPointerDownPointerY ) * 0.1 + onPointerDownLat;

        }else{
            lon = ( onPointerDownPointerX - event.clientX ) * 0.1 + onPointerDownLon;
            lat = ( event.clientY - onPointerDownPointerY ) * 0.1 + onPointerDownLat;
        }

    }

}

/**
 * захват панорамы для перемещения
 * @param event
 */
function onDocumentMouseUp( event ) {

    isUserInteracting = false;

}

/**
 * приближение отдаление
 * @param event
 */
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


