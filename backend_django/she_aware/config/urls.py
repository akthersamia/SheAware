from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('v1/', include('apps.users.urls')),
    path('v1/', include('apps.symptoms.urls')),
    path('v1/', include('apps.education.urls')),
    path('v1/', include('apps.notifications.urls')),
    path('v1/', include('apps.support.urls')),
]
