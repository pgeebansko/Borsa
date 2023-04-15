from django.shortcuts import render


def index(request):
    context = {
        'title': 'Учебници',
    }
    return render(request, 'main/index.html', context)
