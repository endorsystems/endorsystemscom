from django.test import TestCase
from django.contrib.auth.models import AnonymousUser, User
from .models import Post
# Create your tests here.

class WebsiteTests(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='test', email=None, password=None)
    def test_post_is_created_successfully(self):
        post = Post(
            title='test_post',
            slug='test_post',
            author=self.user
        )
        post.save()