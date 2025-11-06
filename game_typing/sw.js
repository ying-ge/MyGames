// Service Worker for 绿色终端打字游戏
const CACHE_NAME = 'typing-game-v1';
const STATIC_CACHE_NAME = 'typing-game-static-v1';

// 需要缓存的静态资源
const STATIC_ASSETS = [
  '/',
  '/index.html',
  '/manifest.json',
  '/favicon.ico'
];

// 安装事件
self.addEventListener('install', event => {
  console.log('Service Worker installing...');

  event.waitUntil(
    caches.open(STATIC_CACHE_NAME)
      .then(cache => {
        console.log('Caching static assets');
        return cache.addAll(STATIC_ASSETS);
      })
      .then(() => {
        console.log('Static assets cached successfully');
        return self.skipWaiting();
      })
      .catch(error => {
        console.error('Failed to cache static assets:', error);
      })
  );
});

// 激活事件
self.addEventListener('activate', event => {
  console.log('Service Worker activating...');

  event.waitUntil(
    caches.keys()
      .then(cacheNames => {
        return Promise.all(
          cacheNames.map(cacheName => {
            // 删除旧版本的缓存
            if (cacheName !== STATIC_CACHE_NAME && cacheName !== CACHE_NAME) {
              console.log('Deleting old cache:', cacheName);
              return caches.delete(cacheName);
            }
          })
        );
      })
      .then(() => {
        console.log('Service Worker activated');
        return self.clients.claim();
      })
  );
});

// 拦截网络请求
self.addEventListener('fetch', event => {
  const url = new URL(event.request.url);

  // 只处理同源请求
  if (url.origin !== self.location.origin) {
    return;
  }

  // 处理导航请求（页面请求）
  if (event.request.mode === 'navigate') {
    event.respondWith(
      caches.match('/index.html')
        .then(response => {
          return response || fetch(event.request);
        })
    );
    return;
  }

  // 处理静态资源请求
  if (STATIC_ASSETS.includes(url.pathname)) {
    event.respondWith(
      caches.match(event.request)
        .then(response => {
          // 如果有缓存就返回缓存，否则从网络获取并缓存
          return response || fetch(event.request)
            .then(fetchResponse => {
              // 检查响应是否有效
              if (!fetchResponse || fetchResponse.status !== 200 || fetchResponse.type !== 'basic') {
                return fetchResponse;
              }

              // 克隆响应用于缓存
              const responseToCache = fetchResponse.clone();

              caches.open(STATIC_CACHE_NAME)
                .then(cache => {
                  cache.put(event.request, responseToCache);
                })
                .catch(error => {
                  console.error('Failed to cache response:', error);
                });

              return fetchResponse;
            });
        })
    );
    return;
  }

  // 其他请求直接通过网络获取
  event.respondWith(fetch(event.request));
});

// 后台同步（可选功能）
self.addEventListener('sync', event => {
  console.log('Background sync event:', event.tag);

  // 这里可以添加后台同步逻辑，比如同步游戏记录等
  if (event.tag === 'sync-game-data') {
    event.waitUntil(syncGameData());
  }
});

// 推送通知（可选功能）
self.addEventListener('push', event => {
  console.log('Push event received');

  const options = {
    body: event.data ? event.data.text() : '您有新的游戏记录！',
    icon: '/favicon.ico',
    badge: '/favicon.ico',
    vibrate: [100, 50, 100],
    data: {
      dateOfArrival: Date.now(),
      primaryKey: 1
    },
    actions: [
      {
        action: 'explore',
        title: '查看详情',
        icon: '/favicon.ico'
      },
      {
        action: 'close',
        title: '关闭',
        icon: '/favicon.ico'
      }
    ]
  };

  event.waitUntil(
    self.registration.showNotification('绿色终端打字游戏', options)
  );
});

// 通知点击处理
self.addEventListener('notificationclick', event => {
  console.log('Notification click received');

  event.notification.close();

  if (event.action === 'explore') {
    // 打开应用
    event.waitUntil(
      clients.openWindow('/')
    );
  } else if (event.action === 'close') {
    // 关闭通知
    event.notification.close();
  } else {
    // 默认行为：打开应用
    event.waitUntil(
      clients.openWindow('/')
    );
  }
});

// 同步游戏数据的示例函数
async function syncGameData() {
  try {
    // 这里可以添加将本地存储的游戏数据同步到服务器的逻辑
    console.log('Syncing game data...');

    // 示例：从IndexedDB获取数据并同步
    // const gameData = await getGameDataFromIndexedDB();
    // await syncToServer(gameData);

    return true;
  } catch (error) {
    console.error('Failed to sync game data:', error);
    return false;
  }
}

// 缓存清理函数
async function cleanupOldCaches() {
  try {
    const cacheNames = await caches.keys();
    const oldCaches = cacheNames.filter(name =>
      name !== STATIC_CACHE_NAME && name !== CACHE_NAME
    );

    await Promise.all(oldCaches.map(name => caches.delete(name)));
    console.log('Old caches cleaned up successfully');
  } catch (error) {
    console.error('Failed to cleanup old caches:', error);
  }
}

// 网络状态监听
self.addEventListener('online', event => {
  console.log('App is now online');
  // 可以在这里添加网络恢复时的同步逻辑
});

self.addEventListener('offline', event => {
  console.log('App is now offline');
  // 可以在这里添加离线提示逻辑
});