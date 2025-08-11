from django.urls import path, include, re_path
from rest_framework import routers

from apps.StartApp.views.AddressSet import AddressSetView
from apps.StartApp.views.CartSet import CartModelViewSet
from apps.StartApp.views.Commodity import CommodityViewSet
from apps.StartApp.views.OrderSet import OrderViewSets
from apps.StartApp.views.SaveAllOrderSet import SaveAllOrderSetView
from apps.StartApp.views.SlideshowSet import SlideshowViewSet
from apps.StartApp.views.TypeSet import TypeViewSet

system_url = routers.SimpleRouter()
system_url.register(r"slideshow",SlideshowViewSet)
system_url.register(r"types",TypeViewSet)
system_url.register(r"commodity",CommodityViewSet)
system_url.register(r"cart",CartModelViewSet)
system_url.register(r"address",AddressSetView)
system_url.register(r"saveallorder",SaveAllOrderSetView)
system_url.register(r"orders",OrderViewSets, basename="orders")


urlpatterns = [
    path('change_to_default/', AddressSetView.as_view({'post': 'change_to_default'}), name='change_to_default'),
]

urlpatterns += system_url.urls


