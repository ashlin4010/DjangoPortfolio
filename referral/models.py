from django.db import models


class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    data_of_birth = models.DateField()
    email = models.EmailField()
    notes = models.TextField(max_length=4000, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)

    def __str__(self):
        return f'{self.first_name} {self.last_name}'


class Referrer(models.Model):
    ReferrerType = models.TextChoices('ReferrerType', 'ORGANISATION INDIVIDUAL')
    type = models.CharField(choices=ReferrerType.choices, max_length=12)
    name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)

    def __str__(self):
        return f'{self.name} ({self.type.lower()})'


class Referral(models.Model):
    date = models.DateTimeField()
    notes = models.TextField(max_length=4000, blank=True, null=True)
    createdAt = models.DateTimeField("Created At", auto_now_add=True)
    person = models.ForeignKey(Person, on_delete=models.CASCADE)
    referrer = models.ForeignKey(Referrer, on_delete=models.CASCADE)

    def __str__(self):
        return f'(Referral - {self.date.date()} - {self.person.first_name} {self.person.last_name} - {self.referrer.name})'

