from django.contrib import admin

from doctor.models import Doctor
from patients.models import Patient, Payment

# Register your models here.

admin.site.register(Patient)
admin.site.register(Payment)
