from django.shortcuts import render

# Create your views here.
def index(request):
    context = {'message': 'Hello World!'}
    # context = {}
    return render(request, 'gantt/index.html', context)
