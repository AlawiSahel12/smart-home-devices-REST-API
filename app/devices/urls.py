from django.urls import path
from .views import DeviceListCreateAPIView, DeviceRetrieveUpdateAPIView

urlpatterns = [
    path("", DeviceListCreateAPIView.as_view(), name="device-list-create"),
    path(
        "<str:id>/", DeviceRetrieveUpdateAPIView.as_view(), name="device-detail-update"
    ),
]
