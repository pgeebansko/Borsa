from django.urls import path, include
from . import views

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='home'),
    path('offers_by_class/<int:klas>/', views.offers_by_class),
    path('login', views.MyprojectLoginView.as_view(), name='login_page'),
    path('register', views.RegisterUserView.as_view(), name='register_page'),
    path('logout', views.MyProjectLogout.as_view(), name='logout_page'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
