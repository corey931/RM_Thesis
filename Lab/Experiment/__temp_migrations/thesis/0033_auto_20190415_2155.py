# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2019-04-15 19:55
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('thesis', '0032_auto_20190415_2129'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='group',
            name='payoff1',
        ),
        migrations.RemoveField(
            model_name='group',
            name='payoff2',
        ),
        migrations.RemoveField(
            model_name='group',
            name='payoff3',
        ),
        migrations.RemoveField(
            model_name='group',
            name='payoff4',
        ),
    ]
