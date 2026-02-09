from rest_framework.views import exception_handler
from rest_framework.response import Response
from datetime import datetime

def custom_exception_handler(exc, context):
    response = exception_handler(exc, context)

    if response is not None:
        # Standardize the error response immediately
        custom_data = {
            "success": False,
            "message": response.data.get('detail', "An error occurred"),
            "data": response.data,
            "timestamp": datetime.now().isoformat()
        }
        # Clear original data to avoid double wrapping issues if renderer logic is complex
        # But renderer logic handles 'success' check.
        # Let's just return the standard format here so renderer picks it up as "already formatted"?
        # Actually renderer check `if 'success' in data ...` works.
        response.data = custom_data

    return response
