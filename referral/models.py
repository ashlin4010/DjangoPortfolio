from django.db import models


class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    data_of_birth = models.DateField()
    email = models.EmailField()
    notes = models.TextField(max_length=4000, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)


class Referrer(models.Model):
    ReferrerType = models.TextChoices('ReferrerType', 'ORGANISATION INDIVIDUAL')
    type = models.CharField(choices=ReferrerType.choices, max_length=12)
    name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)


class Referral(models.Model):
    date = models.DateTimeField()
    notes = models.TextField(max_length=4000, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)
    person = models.ForeignKey(Person, on_delete=models.CASCADE)
    referrer = models.ForeignKey(Referrer, on_delete=models.CASCADE)
