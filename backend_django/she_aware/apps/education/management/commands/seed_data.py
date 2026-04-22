from django.core.management.base import BaseCommand
from apps.education.models import Article

class Command(BaseCommand):
    help = 'Seeds extensive education content from verified sources'

    def handle(self, *args, **options):
        # List of ~50 pieces of content derived from reliable health sources
        # Sources: NHS, WHO, Cancer Research UK
        articles_data = [
            # --- Symptoms & Warning Signs ---
            {
                "title": "Post-Menopausal Bleeding: Why see a GP?",
                "slug": "post-menopausal-bleeding",
                "category": "Symptoms",
                "body_html": "<p>Any vaginal bleeding after menopause is not normal and should be checked by a doctor. It is the most common symptom of womb cancer.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["bleeding", "menopause", "symptoms"]
            },
            {
                "title": "Heavy Periods and Womb Cancer",
                "slug": "heavy-periods",
                "category": "Symptoms",
                "body_html": "<p>Bleeding that is unusually heavy for you, or happens between periods, can be a sign of womb cancer.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/symptoms"],
                "tags": ["bleeding", "periods"]
            },
            {
                "title": "Unusual Vaginal Discharge",
                "slug": "unusual-discharge",
                "category": "Symptoms",
                "body_html": "<p>A watery or bloody discharge can be a symptom. If it changes color or smell, consult your GP.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["discharge", "symptoms"]
            },
            {
                "title": "Pelvic Pain Explained",
                "slug": "pelvic-pain",
                "category": "Symptoms",
                "body_html": "<p>Pain in the lower abdomen or back, especially if persistent, should be investigated.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/symptoms"],
                "tags": ["pain", "symptoms"]
            },
            {
                "title": "Pain During Sex",
                "slug": "pain-during-sex",
                "category": "Symptoms",
                "body_html": "<p>Pain during intercourse (dyspareunia) can sometimes be a sign of gynaecological cancers.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["pain", "sex"]
            },
            {
                "title": "Bloating and Swelling",
                "slug": "bloating-swelling",
                "category": "Symptoms",
                "body_html": "<p>Persistent bloating or a lump in the tummy area is less common but possible.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/symptoms"],
                "tags": ["bloating", "symptoms"]
            },
            {
                "title": "Unexplained Weight Loss",
                "slug": "weight-loss",
                "category": "Symptoms",
                "body_html": "<p>Losing weight without trying can be a symptom of many cancers, including uterine cancer.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["weight", "general"]
            },
            {
                "title": "Fatigue and Tiredness",
                "slug": "fatigue",
                "category": "Symptoms",
                "body_html": "<p>Feeling constantly tired or weak may accompany other symptoms.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/symptoms"],
                "tags": ["fatigue"]
            },
            {
                "title": "Difficulty Urinating",
                "slug": "difficulty-urinating",
                "category": "Symptoms",
                "body_html": "<p>Changes in bladder habits or pain when peeing can be a sign.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/symptoms"],
                "tags": ["bladder"]
            },
            {
                "title": "Blood in Urine",
                "slug": "blood-urine",
                "category": "Symptoms",
                "body_html": "<p>While often a sign of infection, blood in urine needs checking to rule out cancer.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["urine", "blood"]
            },
            
            # --- Risk Factors ---
            {
                "title": "Obesity and Womb Cancer",
                "slug": "obesity-risk",
                "category": "Risk Factors",
                "body_html": "<p>Being overweight causes the body to produce more estrogen, which can thicken the womb lining and increase cancer risk.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["obesity", "estrogen"]
            },
            {
                "title": "Age Factor",
                "slug": "age-risk",
                "category": "Risk Factors",
                "body_html": "<p>Risk increases as you get older. Most cases are in women aged 40 to 74.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/causes/"],
                "tags": ["age"]
            },
            {
                "title": "Diabetes Link",
                "slug": "diabetes-risk",
                "category": "Risk Factors",
                "body_html": "<p>Women with diabetes are twice as likely to develop womb cancer, partly linked to insulin levels.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["diabetes"]
            },
            {
                "title": "PCOS (Polycystic Ovary Syndrome)",
                "slug": "pcos-risk",
                "category": "Risk Factors",
                "body_html": "<p>PCOS can cause infrequent periods, leading to a build-up of the womb lining.</p>",
                "sources": ["https://www.nhs.uk/conditions/polycystic-ovary-syndrome-pcos/"],
                "tags": ["pcos"]
            },
            {
                "title": "Late Menopause",
                "slug": "late-menopause",
                "category": "Risk Factors",
                "body_html": "<p>Going through menopause after age 55 gives you more years of estrogen exposure.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["menopause"]
            },
            {
                "title": "Early Puberty",
                "slug": "early-puberty",
                "category": "Risk Factors",
                "body_html": "<p>Starting periods before age 12 increases lifetime estrogen exposure.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["puberty"]
            },
            {
                "title": "Nulliparity (Never Giving Birth)",
                "slug": "nulliparity",
                "category": "Risk Factors",
                "body_html": "<p>Women who have never had children have a slightly higher risk than those who have.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["pregnancy"]
            },
            {
                "title": "Lynch Syndrome",
                "slug": "lynch-syndrome",
                "category": "Risk Factors",
                "body_html": "<p>An inherited genetic condition that increases the risk of colon and womb cancer.</p>",
                "sources": ["https://www.nhs.uk/conditions/lynch-syndrome/"],
                "tags": ["genetics"]
            },
            {
                "title": "Tamoxifen Use",
                "slug": "tamoxifen",
                "category": "Risk Factors",
                "body_html": "<p>This breast cancer drug can slightly increase the risk of womb cancer.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["medication"]
            },
            {
                "title": "Thickened Womb Lining (Hyperplasia)",
                "slug": "hyperplasia",
                "category": "Risk Factors",
                "body_html": "<p>Endometrial hyperplasia is a thickening of the womb lining that can sometimes turn into cancer.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/causes/"],
                "tags": ["hyperplasia"]
            },
            {
                "title": "Estrogen-only HRT",
                "slug": "estrogen-hrt",
                "category": "Risk Factors",
                "body_html": "<p>Taking estrogen without progesterone increases risk if you still have a womb.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["hrt"]
            },
            {
                "title": "Family History",
                "slug": "family-history",
                "category": "Risk Factors",
                "body_html": "<p>Having a close relative with womb or bowel cancer may increase your risk slightly.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/causes/"],
                "tags": ["family"]
            },

            # --- Prevention & Healthy Living ---
            {
                "title": "Maintaining Healthy Weight",
                "slug": "healthy-weight",
                "category": "Prevention",
                "body_html": "<p>Keeping a healthy BMI is one of the best ways to reduce your risk.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/prevention"],
                "tags": ["lifestyle", "weight"]
            },
            {
                "title": "Exercise Benefits",
                "slug": "exercise-benefits",
                "category": "Prevention",
                "body_html": "<p>Regular physical activity helps regulate hormones and weight.</p>",
                "sources": ["https://www.who.int/news-room/fact-sheets/detail/physical-activity"],
                "tags": ["exercise"]
            },
            {
                "title": "Dietary Choices",
                "slug": "diet-choices",
                "category": "Prevention",
                "body_html": "<p>A balanced diet rich in fiber, fruits, and vegetables supports overall health.</p>",
                "sources": ["https://www.nhs.uk/live-well/eat-well/"],
                "tags": ["diet"]
            },
            {
                "title": "Oral Contraceptives Benefit",
                "slug": "pill-benefit",
                "category": "Prevention",
                "body_html": "<p>Taking the combined pill can reduce the risk of womb cancer for years after stopping.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes/protective-factors"],
                "tags": ["medication"]
            },
            {
                "title": "Progesterone IUD (Mirena)",
                "slug": "iud-benefit",
                "category": "Prevention",
                "body_html": "<p>Some researches suggest progesterone-releasing IUDs may lower risk.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes/protective-factors"],
                "tags": ["iud"]
            },
            {
                "title": "Pregnancy Protective Effect",
                "slug": "pregnancy-protection",
                "category": "Prevention",
                "body_html": "<p>Having children tends to lower estrogen exposure over a lifetime.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes/protective-factors"],
                "tags": ["pregnancy"]
            },
            {
                "title": "Combined HRT",
                "slug": "combined-hrt",
                "category": "Prevention",
                "body_html": "<p>If you need HRT, using a combined type (estrogen + progesterone) is safer for the womb.</p>",
                "sources": ["https://www.nhs.uk/conditions/hormone-replacement-therapy-hrt/risks/"],
                "tags": ["hrt"]
            },
            {
                "title": "Is Soy helpful?",
                "slug": "soy-diet",
                "category": "Prevention",
                "body_html": "<p>Some studies look at soy foods, but evidence is mixed. A balanced diet is key.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/causes-of-cancer/diet-and-cancer"],
                "tags": ["diet"]
            },
            {
                "title": "Coffee Consumption",
                "slug": "coffee-study",
                "category": "Prevention",
                "body_html": "<p>Some research suggests coffee drinkers might have a slightly lower risk, though reasons are unclear.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes/protective-factors"],
                "tags": ["coffee"]
            },
            {
                "title": "Regular Check-ups",
                "slug": "checkups",
                "category": "Prevention",
                "body_html": "<p>Always report abnormal symptoms early. Early detection is effectively prevention of advanced disease.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/diagnosis/"],
                "tags": ["diagnosis"]
            },

             # --- Myths vs Facts ---
            {
                "title": "Myth: Only older women get it.",
                "slug": "myth-age",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> While rarer, younger women can and do get womb cancer.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer"],
                "tags": ["myths"]
            },
            {
                "title": "Myth: Smear tests detect it.",
                "slug": "myth-smear",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> Cervical screening checks the cervix, not the inside of the womb. Womb cancer is not found this way.</p>",
                "sources": ["https://www.nhs.uk/conditions/cervical-screening/"],
                "tags": ["myths", "screening"]
            },
            {
                "title": "Myth: It's always hereditary.",
                "slug": "myth-hereditary",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> Most womb cancers are not caused by inherited genes like Lynch syndrome.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/risks-causes"],
                "tags": ["myths", "genetics"]
            },
            {
                "title": "Myth: HRT always causes cancer.",
                "slug": "myth-hrt",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> Combined HRT has a much lower risk profile than estrogen-only HRT for women with a womb.</p>",
                "sources": ["https://www.nhs.uk/conditions/hormone-replacement-therapy-hrt/risks/"],
                "tags": ["myths", "hrt"]
            },
            {
                "title": "Myth: Pain is always the first sign.",
                "slug": "myth-pain",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> Bleeding is much more common as an early sign than pain.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/symptoms/"],
                "tags": ["myths", "symptoms"]
            },
            {
                "title": "Myth: A hysterectomy is the only option.",
                "slug": "myth-surgery",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> While common, other treatments exist depending on the stage and patient needs (hormone therapy, etc).</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/treatment"],
                "tags": ["myths", "treatment"]
            },
            {
                "title": "Myth: Stress causes womb cancer.",
                "slug": "myth-stress",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> There is no strong evidence linking stress directly to womb cancer risk.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/causes-of-cancer/stress-and-cancer"],
                "tags": ["myths"]
            },
            {
                "title": "Myth: Superfoods prevent it.",
                "slug": "myth-superfoods",
                "category": "Myths",
                "body_html": "<p><strong>Fact:</strong> No single food prevents cancer, but a balanced diet helps reduce risk.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/causes-of-cancer/diet-and-cancer"],
                "tags": ["myths"]
            },
            
            # --- General Info ---
            {
                "title": "What is the Endometrium?",
                "slug": "endometrium-info",
                "category": "General",
                "body_html": "<p>The endometrium is the lining of the womb which thickens during the menstrual cycle and is shed during a period.</p>",
                "sources": ["https://www.nhs.uk/common-health-questions/womens-health/"],
                "tags": ["anatomy"]
            },
            {
                "title": "Types of Womb Cancer",
                "slug": "types-cancer",
                "category": "General",
                "body_html": "<p>Most are adenocarcinomas (start in gland cells). Uterine sarcomas are rarer.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/types"],
                "tags": ["types"]
            },
            {
                "title": "Stages of Womb Cancer",
                "slug": "stages",
                "category": "General",
                "body_html": "<p>Stage 1 is contained in the womb. Stage 4 has spread to other parts of the body.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/stages-types-grades"],
                "tags": ["stages"]
            },
            {
                "title": "Grading of Cancer",
                "slug": "grading",
                "category": "General",
                "body_html": "<p>Grade 1 cells look similar to normal cells. Grade 3 cells look very abnormal and grow faster.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/stages-types-grades/grades"],
                "tags": ["grading"]
            },
            {
                "title": "Transvaginal Ultrasound",
                "slug": "ultrasound",
                "category": "Diagnosis",
                "body_html": "<p>A scanner probe is placed into the vagina to create an image of the womb.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/diagnosis/"],
                "tags": ["diagnosis"]
            },
            {
                "title": "Hysteroscopy",
                "slug": "hysteroscopy",
                "category": "Diagnosis",
                "body_html": "<p>A thin telescope looks inside the womb and can take a biopsy.</p>",
                "sources": ["https://www.nhs.uk/conditions/hysteroscopy/"],
                "tags": ["diagnosis"]
            },
            {
                "title": "Biopsy Procedure",
                "slug": "biopsy",
                "category": "Diagnosis",
                "body_html": "<p>A small sample of cells is taken from the womb lining to be checked under a microscope.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/diagnosis/"],
                "tags": ["diagnosis"]
            },
            {
                "title": "Treatment: Surgery",
                "slug": "surgery",
                "category": "Treatment",
                "body_html": "<p>Surgery to remove the womb (hysterectomy) and ovaries is the main treatment.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/treatment/"],
                "tags": ["treatment"]
            },
            {
                "title": "Treatment: Radiotherapy",
                "slug": "radiotherapy",
                "category": "Treatment",
                "body_html": "<p>High-energy waves are used to kill cancer cells, often used after surgery.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/treatment/"],
                "tags": ["treatment"]
            },
            {
                "title": "Treatment: Chemotherapy",
                "slug": "chemotherapy",
                "category": "Treatment",
                "body_html": "<p>Medicine is used to kill cancer cells for more advanced stages.</p>",
                "sources": ["https://www.nhs.uk/conditions/womb-cancer/treatment/"],
                "tags": ["treatment"]
            },
            {
                "title": "Living with Womb Cancer",
                "slug": "living-with",
                "category": "Support",
                "body_html": "<p>Support groups and counseling can help manage the emotional impact.</p>",
                "sources": ["https://www.macmillan.org.uk/cancer-information-and-support/womb-cancer"],
                "tags": ["support"]
            },
            {
                "title": "Follow-up Care",
                "slug": "follow-up",
                "category": "Support",
                "body_html": "<p>Regular check-ups after treatment ensure the cancer hasn't come back.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/living-with"],
                "tags": ["care"]
            },
            {
                "title": "Fertility and Treatment",
                "slug": "fertility",
                "category": "Support",
                "body_html": "<p>Hysterectomy causes infertility. Discuss options like egg freezing if relevant.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/living-with/fertility"],
                "tags": ["fertility"]
            },
            {
                "title": "Sex Life after Treatment",
                "slug": "sex-life",
                "category": "Support",
                "body_html": "<p>Treatment can affect your sex life physically and emotionally, but help is available.</p>",
                "sources": ["https://www.cancerresearchuk.org/about-cancer/womb-cancer/living-with/sex-life"],
                "tags": ["sex"]
            },
            {
                "title": "Travel Insurance",
                "slug": "travel-insurance",
                "category": "Support",
                "body_html": "<p>Finding insurance can be harder, but specialist providers exist.</p>",
                "sources": ["https://www.macmillan.org.uk/cancer-information-and-support/impacts-of-cancer/travel-and-holidays"],
                "tags": ["travel"]
            }
        ]

        count = 0
        for data in articles_data:
            obj, created = Article.objects.update_or_create(
                slug=data['slug'],
                defaults={
                    "title": data['title'],
                    "category": data['category'],
                    "body_html": data['body_html'],
                    "sources": data['sources'],
                    "tags": data['tags'],
                    "lang": "en",
                    "is_published": True
                }
            )
            count += 1
            if created:
                self.stdout.write(self.style.SUCCESS(f"Created: {data['title']}"))
            else:
                self.stdout.write(f"Updated: {data['title']}")
        
        self.stdout.write(self.style.SUCCESS(f"Total processed: {count} articles."))
