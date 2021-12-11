from django.shortcuts import redirect, render

from doctor.models import *
from coordinator.models import *
from django.template.loader import get_template
from django.shortcuts import render , redirect , HttpResponse
from django.contrib import auth
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.views.generic import View
from django import template
from django.template.loader import get_template
from io import BytesIO
import xhtml2pdf.pisa as pisa

from django.contrib.auth.models import User
from django.db import IntegrityError
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from doctor.models import *
from patients.models import *
from coordinator.models import *



# Create your views here.

def home(request):
	return render(request , 'home.html',{'user':0})

def homepageforusers(request,user):
    if request.user:
        if(user==1):
            all_data = Appointmentsforpatients.objects.filter(doctor_id_number =(Doctor.objects.get(username=(User.objects.get(username=request.user)))))
        if(user==2):
            all_data = Appointmentsforpatients.objects.filter(patient_id_number =(patients.objects.get(username=(User.objects.get(username=request.user)))))

    if(user==0):
        return redirect("/")

    return render(request,'home.html',{'user':user,'all_data':all_data})





        
    # return render(request,'home.html',{"user":1}) 


def login(request):
    return render(request,'login.html')

def signup(request):
    if request.method=='POST':
        users = User.objects.create_user(username =request.POST['username'],password =request.POST['password'])
        Patientdb = Patient(first_name =request.POST['first_name'],last_name=request.POST['last_name'],id_card_number = request.POST['id_card_number'],phone = request.POST['phone_number'],username_id = users)
        Patientdb.save()
        return render(request,'home.html')
    return render(request,'signup.html')

def doctor_appointment():
    return

def patient_appointment():
    return






