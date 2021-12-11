from django.db import models


from .models import *
from coordinator.models import *
# Create your models here.
from django.contrib.auth.models import User

class  Doctor(models.Model):
    first_name = models.CharField(max_length=40,default="")
    last_name = models.CharField(max_length=40,default="")
    id_card_number = models.CharField(max_length=40,default="")
    phone = models.CharField(max_length=12,default="",unique=True)
    email = models.CharField(max_length=50,unique=True)
    gender = models.CharField(max_length=30)
    address = models.CharField(max_length=200)
    age = models.IntegerField(default= 0)
    blood = models.CharField(max_length=10)
    username = models.OneToOneField(User,on_delete = models.CASCADE)
    # status = models.BooleanField(default = 0)
    department = models.CharField(max_length=30 , default = "")
    salary = models.IntegerField(default = 10000)
