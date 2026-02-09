from django.urls import path
from .views import ScheduleNotificationView, PushNotificationView

urlpatterns = [
    path('notifications/schedule', ScheduleNotificationView.as_view(), name='notification_schedule'),
    path('notifications/push', PushNotificationView.as_view(), name='notification_push'),
]
