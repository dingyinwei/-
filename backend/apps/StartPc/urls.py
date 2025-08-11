from django.urls import path, include, re_path
from rest_framework import routers

system_url = routers.SimpleRouter()
# system_url.register()


urlpatterns=[

]
urlpatterns += system_url.urls


