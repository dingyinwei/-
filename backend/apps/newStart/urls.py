from rest_framework import routers
from django.urls import include, path

from apps.newStart.views.CreateDieInfo import DieInfoSetView
from apps.newStart.views.Cremation import CremationModelViewSet
from apps.newStart.views.FreezerView import FreezerSetView
from apps.newStart.views.HuohualuView import HuohualuViewSet
from apps.newStart.views.ParentsView import ParentsView
from apps.newStart.views.RefrigeratedView import RefrigeratedViewSet
from apps.newStart.views.Reservation import ReservationViewSet
from apps.newStart.views.Chargingitems import ChargingItemViewSet
# from apps.newStart.views import *
from apps.newStart.views.test import TestViewSet

system_url = routers.SimpleRouter()
system_url.register(r'testlop', TestViewSet)
system_url.register(r"dieinfo",DieInfoSetView)
system_url.register(r'refrigerated',RefrigeratedViewSet)
system_url.register(r'cremation',CremationModelViewSet)
system_url.register(r'reservation',ReservationViewSet)
system_url.register(r'chargingItem',ChargingItemViewSet)
system_url.register(r'parents',ParentsView)
system_url.register(r'hhl',HuohualuViewSet)
system_url.register(r'freezer',FreezerSetView)



urlpatterns=[

]
urlpatterns +=system_url.urls

