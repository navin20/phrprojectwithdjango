# Generated by Django 3.2.9 on 2021-12-11 07:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(default='', max_length=40)),
                ('last_name', models.CharField(default='', max_length=40)),
                ('id_card_number', models.CharField(default='', max_length=40)),
                ('phone', models.CharField(default='', max_length=12, unique=True)),
                ('email', models.CharField(max_length=50, unique=True)),
                ('gender', models.CharField(max_length=30)),
                ('address', models.CharField(max_length=200)),
                ('age', models.IntegerField(default=0)),
                ('blood', models.CharField(max_length=10)),
                ('department', models.CharField(default='', max_length=30)),
                ('salary', models.IntegerField(default=10000)),
                ('username', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
