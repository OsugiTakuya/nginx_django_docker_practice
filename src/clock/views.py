from django.shortcuts import render
from django.http import JsonResponse
import datetime

# Create your views here.
def index(request):
    context = {}
    return render(request, 'clock/index.html', context)


def getnow(request):
    if request.method == 'GET':
        dt_now = datetime.datetime.now().strftime('%H:%M:%S')
    elif request.method == 'POST':
        disp_time = int(request.POST.get('disp_time'))
        if disp_time == 1:
            dt_now = datetime.datetime.now().strftime('%H:%M:%S')
        else:
            dt_now = 'no_disp_time: ' + str(requeset.POST.get('any_data'))
    else:
        dt_now = 'internal erorr!!'
    d = {'now': dt_now}
    return JsonResponse(d)
