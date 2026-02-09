from django.urls import path
from .views import DeviceRegisterView

urlpatterns = [
    path('auth/device', DeviceRegisterView.as_view(), name='device_register'),
]
