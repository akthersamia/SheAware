from django.core.management.base import BaseCommand
from apps.support.models import Resource

class Command(BaseCommand):
    help = 'Seeds the database with support resources'

    def handle(self, *args, **kwargs):
        data = [
            {
                "title": "How to Talk to Your GP",
                "description": "Before Your Appointment:\n• Write down your symptoms and when they started\n• Note how symptoms affect your daily life\n• Bring your symptom log from this app\n• List any questions you want to ask\n\nDuring Your Appointment:\n• Be specific about symptoms and timing\n• Don't minimize or downplay what you're experiencing\n• Ask for clarification if you don't understand\n• Request a referral if you feel it's needed\n\nRemember: You have the right to be heard and taken seriously. If you feel dismissed, you can request a second opinion or see another GP.",
                "category": "OTHER",
            },
            {
                "title": "NHS - Womb Cancer",
                "description": "Symptoms, causes, and treatment",
                "category": "NHS",
                "link": "https://www.nhs.uk/conditions/womb-cancer/",
            },
            {
                "title": "NHS - Heavy Periods",
                "description": "When to see a GP",
                "category": "NHS",
                "link": "https://www.nhs.uk/conditions/heavy-periods/",
            },
            {
                "title": "Cancer Research UK",
                "description": "Womb cancer information & support",
                "category": "NHS",
                "link": "https://www.cancerresearchuk.org/about-cancer/womb-cancer",
            },
            {
                "title": "Emergency Contact",
                "description": "If you experience severe or sudden symptoms such as heavy bleeding, severe pain, or feeling faint:\nCall 999 for emergency help or visit A&E immediately",
                "category": "EMERGENCY",
                "phone_number": "999",
            },
            {
                "title": "Samaritans",
                "description": "24/7 confidential support",
                "category": "HELPLINE",
                "phone_number": "116 123",
                "link": "https://www.samaritans.org/",
            },
            {
                "title": "Mind",
                "description": "Mental health support",
                "category": "HELPLINE",
                "phone_number": "0300 123 3393",
                "link": "https://www.mind.org.uk/",
            },
            {
                "title": "Culturally Sensitive Support",
                "description": "We understand that cultural backgrounds can affect how comfortable you feel discussing health concerns. Here are some tips:\n• You can request a female GP if that makes you more comfortable\n• Bring a trusted family member or friend for support\n• Many NHS services offer interpreters if needed\n• Your medical information is confidential\n• You have the right to seek care regardless of cultural norms\n\nYour health is a priority. It's okay to put your wellbeing first, even if it means having difficult conversations with family or community.",
                "category": "OTHER",
            }
        ]

        for item in data:
            resource, created = Resource.objects.get_or_create(
                title=item['title'],
                defaults=item
            )
            if created:
                self.stdout.write(self.style.SUCCESS(f'Created resource: {resource.title}'))
            else:
                self.stdout.write(self.style.WARNING(f'Resource already exists: {resource.title}'))

        self.stdout.write(self.style.SUCCESS('Successfully seeded support resources'))
