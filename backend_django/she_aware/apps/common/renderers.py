from rest_framework.renderers import JSONRenderer
from datetime import datetime

class StandardJSONRenderer(JSONRenderer):
    def render(self, data, accepted_media_type=None, renderer_context=None):
        status_code = renderer_context['response'].status_code
        success = 200 <= status_code < 300
        
        # If data is already in our format (e.g. from exception handler), pass it through
        if isinstance(data, dict) and 'success' in data and 'timestamp' in data:
            return super().render(data, accepted_media_type, renderer_context)

        response_data = {
            "success": success,
            "message": "Success" if success else "Error",
            "data": data if success else None,
            "timestamp": datetime.now().isoformat()
        }

        # Handle specific error structure from DRF
        if not success:
             response_data['message'] = "Request failed"
             if isinstance(data, dict):
                 # Try to extract a simple message if possible
                 if 'detail' in data:
                     response_data['message'] = data['detail']
                 # Put the detailed errors in 'data' instead of standard data field if we want, 
                 # or keep them as 'data' for debugging forms.
                 response_data['data'] = data
             elif isinstance(data, list):
                 response_data['data'] = data

        return super().render(response_data, accepted_media_type, renderer_context)
