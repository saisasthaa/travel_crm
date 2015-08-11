from django.http import *
from django.shortcuts import render_to_response,redirect
from django.template import RequestContext
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from booking.models import *

def login_user(request):
    username = password = ''
    if request.POST:
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
            	if user.is_superuser:
	                login(request, user)
	                return HttpResponseRedirect('/list/')
	        else:
	            return HttpResponse('You are not authenticate user')
        else:
          	return HttpResponse('invalid user')
 
def home(request):
	return render_to_response('login.html', context_instance=RequestContext(request))

def logout_view(request):
	logout(request)
	return render_to_response('login.html', context_instance=RequestContext(request))

@login_required(login_url='/')
def list(request):
	process=Process_form.objects.all()
	ventor=Ventor.objects.all()
	return render_to_response('list.html', {'process_form':process, 'vendor':ventor}, context_instance=RequestContext(request)) 

@login_required(login_url='/')
def list_detail(request,booking_id):
	process=Process_form.objects.get(booking_id=booking_id)
	transport=process.transport_set.all()
	hotel=process.hotel_set.all()
	passanger=process.passanger_set.all()
	ventor=Ventor.objects.get(booking_id=booking_id)
	ventor_detail=ventor.ventor_details_set.all()
	payment_detail=ventor.payment_detail_set.all()
	payment_for_land=ventor.payment_for_land_set.all()
	payment_recived=ventor.payment_recived_set.all()
	expense=ventor.expense_set.all()
	profit=ventor.profit_set.all()
	return render_to_response('list_detail.html', {'process':process,'transport':transport,'hotel':hotel,'passanger':passanger,'ventor':ventor_detail,'payment_detail':payment_detail,'payment_for_land':payment_for_land,'payment_recived':payment_recived,'expense':expense,'profit':profit}, context_instance=RequestContext(request))

@login_required(login_url='/')
def invoice(request,booking_id):
	process=Process_form.objects.get(booking_id=booking_id)
	return render_to_response('invoice.html', {'process':process}, context_instance=RequestContext(request))

@login_required(login_url='/')
def invoice_save(request):
	invoice=Invoice()
	invoice.invoice_id = request.POST['invoice_id']
	invoice.booking_id = request.POST['booking_id']
	invoice.booking_date = request.POST['booking_date']
	invoice.service_tax = request.POST['service_tax']
	invoice.invoice_date = request.POST['date']
	invoice.package_id = request.POST['package_id']
	invoice.package_date = request.POST['package_date']
	invoice.invoice_to = request.POST['invoice_to']
	invoice.address = request.POST['address']
	invoice.pan = request.POST['pan_no']
	invoice.no_of_pax = request.POST['pax']
	invoice.package=request.POST['details']
	invoice.rate=request.POST['rate']
	invoice.amount=request.POST['amount']
	invoice.total=request.POST['total']
	invoice.service_charge=request.POST['service_charge']
	invoice.service_tax=request.POST['service_tax']
	invoice.total_value=request.POST['total_value']
	invoice.save()
	return HttpResponse('Invoice saved and printed')
	


	


