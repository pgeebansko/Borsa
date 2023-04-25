from django.contrib.auth import authenticate, login
from django.contrib.auth.views import LoginView, LogoutView
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import CreateView

from .models import *
from .forms import *


# ********************************************
#                работни страници
# ********************************************
def index(request):
    classes = Klas.objects.order_by('class_num')

    context = {
        'title': 'Учебници',
        'classes': classes,
    }
    return render(request, 'main/index.html', context)


def offers_by_class(request, klas):
    return render(request, 'main/OffersList.html')


# ********************************************
#   регистрация и оторизация на потребители
# ********************************************
class MyprojectLoginView(LoginView):
    template_name = 'main/login.html'
    form_class = AuthUserForm
    success_url = reverse_lazy('home')

    def get_success_url(self):
        return self.success_url


class RegisterUserView(CreateView):
    model = User
    template_name = 'main/register.html'
    form_class = RegisterUserForm
    success_url = reverse_lazy('home')
    success_msg = 'Регистриран е нов потребител'

    def form_valid(self, form):
        form_valid = super().form_valid(form)
        username = form.cleaned_data["username"]
        password = form.cleaned_data["password"]
        aut_user = authenticate(username=username, password=password)
        login(self.request, aut_user)
        return form_valid


class MyProjectLogout(LogoutView):
    next_page = reverse_lazy('home')
