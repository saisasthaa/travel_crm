from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'booking.views.home', name='home'),
    url(r'^login/$', 'booking.views.login_user'),
    url(r'^logout/$', 'booking.views.logout_view'),
    url(r'^list/$', 'booking.views.list'),
  	url(r'^list_detail/(?P<booking_id>[0-9]+)/$','booking.views.list_detail'),
  	url(r'^invoice/(?P<booking_id>[0-9]+)/$','booking.views.invoice'),
  	url(r'^invoice_save/$', 'booking.views.invoice_save'),
	url(r'^admin/', include(admin.site.urls)),
)
