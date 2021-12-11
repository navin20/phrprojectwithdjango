from django.db import models
from django.contrib.auth.models import User

import patients

# Create your models here.
class Patient(models.Model):
    first_name = models.CharField(max_length=40,default="")
    last_name = models.CharField(max_length=40,default="")
    id_card_number = models.CharField(max_length=40,default="")
    phone = models.CharField(max_length=12,default="",unique=True)
    email = models.CharField(max_length=50,unique=True)
    gender = models.CharField(max_length=30)
    address = models.CharField(max_length=200)
    age = models.IntegerField(default= 0 )
    blood = models.CharField(max_length=10)
    medical = models.CharField(max_length=100)
    case = models.CharField(max_length=20)
    username = models.OneToOneField(User,on_delete = models.CASCADE)


class Payment(models.Model):
    patients = models.OneToOneField(Patient,on_delete=models.CASCADE)
    payment = models.CharField(max_length=20)

    