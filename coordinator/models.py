from django.db import models


from django.db import models
from django.contrib.auth.models import User
from doctor.models import *
from patients.models import *
# Create your models here.

# Model For Coordinator
class Coordinator(models.Model):
    first_name = models.CharField(max_length=40,default="")
    last_name = models.CharField(max_length=40,default="")
    id_card_number = models.CharField(max_length=40,default="")
    phone = models.CharField(max_length=12,default="",unique=True)
    email = models.CharField(max_length=50,unique=True)
    address = models.CharField(max_length=200)
    username = models.OneToOneField(User,on_delete = models.CASCADE)


class Appointmentsforpatients(models.Model):
    date = models.DateField()
    timeofappointment = models.TimeField()
    doctor_id_number = models.ForeignKey('doctor.Doctor',on_delete=models.CASCADE)
    patient_id_number = models.ForeignKey('patients.Patient',on_delete=models.CASCADE)
