from django.db import models


class Device(models.Model):
    DEVICE_TYPES = [
        ("lamp", "Lamp"),
        ("thermostat", "Thermostat"),
    ]

    id = models.CharField(primary_key=True, max_length=50)  # e.g., lamp-101
    type = models.CharField(max_length=20, choices=DEVICE_TYPES)
    state = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.id} ({self.type}) - {self.state}"
