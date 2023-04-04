'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "182b9638db48d7466e7e29c518955ce3",
"assets/assets/icons/MyFLutterApp.ttf": "c6bca3f6e9175bc424db72c8bf394378",
"assets/assets/images/2016-CQMS.jpg": "343557a17859ce3b580f4f40a6f33081",
"assets/assets/images/2016-CSM.jpg": "7c1c95c0e5a12ac9a70c218d44cf44f3",
"assets/assets/images/2016-CSUO.jpg": "90ebb7490511bca6ca7dff0b2a1694c1",
"assets/assets/images/2016-CUO-1.jpg": "5af74adda3f8b24b4a72c7a087ef7091",
"assets/assets/images/2017-CQMS.jpg": "d8497f40a87d211f44e2f7a02c661f9e",
"assets/assets/images/2017-CSM.jpg": "deb36a5a1b1134b331769928f329cc6e",
"assets/assets/images/2017-CSUO.jpg": "1bb3f3406a458a66027cc6f322808e3a",
"assets/assets/images/2017-CUO-1.jpg": "0299e5e10aca76c129ae1acdab7657fa",
"assets/assets/images/2017-CUO-2.jpg": "4f3daafec5ae879344f202367f74f019",
"assets/assets/images/2017-CUO-3.jpg": "502e6009b9e8911a4659cb93d834cc3d",
"assets/assets/images/2018-CQMS.jpg": "d6803cf4f12f6deba9a694d6569752fd",
"assets/assets/images/2018-CSM.jpg": "b8dc523cc2115bcf83afdb7c25298236",
"assets/assets/images/2018-CSUO.jpg": "ababa588633c451ad0815db2e88986db",
"assets/assets/images/2018-CUO-1.jpg": "19082d2dcf702f56e0cc759f19fd50c9",
"assets/assets/images/2018-CUO-2.jpg": "bc2c41d60d0fde99348cdb8525f800ae",
"assets/assets/images/2018-CUO-3.jpg": "f8073149c91cddae029995784f0b869d",
"assets/assets/images/aim_1.jpg": "0538ad54b6ac8dae27c916d6a22a1dc1",
"assets/assets/images/aim_2.jpg": "69d95f507a468c5f97ca0b03eb872bbd",
"assets/assets/images/aim_3.jpg": "a87d69f640f3e4db332354454f28e2f7",
"assets/assets/images/Anna_University_Logo.png": "ea3e6322223b470ca68fbf12caf265bf",
"assets/assets/images/azadi_ka_amrit.png": "c963036756d6667eba175f4b72205770",
"assets/assets/images/azadi_ka_amrit_1.png": "069f2e6095507987f7a5cacb52e02462",
"assets/assets/images/Capt_Dr_Suresh_Babu_A.jpg": "3db02c6329c1f5e24eadd7590e46e587",
"assets/assets/images/CEG_col.ico": "130882095b9aa440214b6fc4db215343",
"assets/assets/images/CEG_col.png": "8c427b6e2704977ab51cd8a718a081f5",
"assets/assets/images/Lt_Dr_Neelakandan_R.jpg": "2c3a1aae0cfcdc81fe1e07f6678a4a27",
"assets/assets/images/Lt_Dr_Padmanabhan_Panchu_K.jpg": "dba24fbf0eeaae2ad79e2667dfa3c0c8",
"assets/assets/images/Lt_Dr_Sivanesan.jpg": "b21ea3bd09e5c5bd100fa6935a55c97c",
"assets/assets/images/Maj_Rajendra_Boopathy_S.jpg": "336097e3d0a580bd75b9a2dc53d8db0f",
"assets/assets/images/ncc_1.jpg": "49f475cd0e736659e74c85c2c7bfbed1",
"assets/assets/images/ncc_2.jpg": "77cc38475665ec64ea23bf0e15771324",
"assets/assets/images/ncc_3.jpg": "0782a1bdce46a3373167a8362ae721dd",
"assets/assets/images/ncc_4.jpg": "a57d6e0852758c4ef5bbbcfd158af5a2",
"assets/assets/images/ncc_5.jpg": "5b6ad0053eb28cfa914f40b99c943d06",
"assets/assets/images/ncc_flag.jpg": "a3cd6db313c26eac44d59e7508b6a0b3",
"assets/assets/images/ncc_flag.png": "1bff6fedb8682e6cdd915c29740bcc67",
"assets/assets/images/ncc_icon.ico": "567309684d6a3f6aa9fe90f60e2b228f",
"assets/assets/images/ncc_icon_png.png": "4002aaa199b08d95d15b69afd42d9d1b",
"assets/assets/images/ncc_logo.ico": "4b2d8c3c88dd6ec5684d40a264da9041",
"assets/assets/images/ncc_logo.png": "caecfccbf51abbf2ef0ab00883206a4f",
"assets/assets/images/ncc_logo_1.png": "f824f5432d441e15b0dd7dc57efade0a",
"assets/assets/images/unity_&_discipline.png": "a2afdc1ff6b6641b06f61f2c6b4e8c4f",
"assets/FontManifest.json": "82a03768e5674127333c963eb0d99153",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "3f4cf55777d750349dbb32b517778237",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "dd74f11e425603c7adb66100f161b2a5",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "49bb7ed4c84bec4707f170d608afa0f4",
"/": "49bb7ed4c84bec4707f170d608afa0f4",
"main.dart.js": "253d936e83106263d0333911c44a0b20",
"manifest.json": "ba4b49885b4cd96a7d17952fc6b98bd8",
"version.json": "31302d700f0b2f2d8715c3294274eade"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
