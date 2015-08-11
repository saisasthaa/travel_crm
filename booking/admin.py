from django.contrib import admin
from django.contrib.admin import SimpleListFilter
from models import *
from booking.models import Booking_detail
from django.http import HttpResponseRedirect
from django.http import HttpResponse, Http404
from django.contrib.auth.admin import UserAdmin

def approved(modeladmin, request, queryset):
    queryset.update(active=True)
    
    for g in queryset:
        print g
        process=Process_form()
        process.process_id=g.booking_id
        process.booking_id=g.booking_id
        process.package_name=g.package_name
        process.cost=g.cost
        process.contact=g.contact
        process.address=g.address
        process.mobile=g.mobile
        process.email=g.email
        process.date_of_departure=g.date_of_departure
        process.no_of_days=g.no_of_days
        process.meal_plan=g.meal_plan
        process.adult=g.adult
        process.child=g.adult
        process.infant=g.infant
        process.accommodation=g.accommodation
        process.accommodation_type=g.accommodation_type
        process.flight=g.flight
        process.train=g.train
        process.bus=g.bus
        process.car=g.car
        process.group=g.group
        process.meal_plan_dropdown=g.meal_plan_dropdown
        process.payment=g.payment
        process.notes=g.notes
        process.save()    
approved.short_description = "approved"

class Booking_detailAdmin(admin.ModelAdmin):


  list_display = ('booking_id', 'package_name', 'cost', 'contact', 'address','mobile', 'email', 'date_of_departure', 'no_of_days','active')
  search_fields = [
      'booking_id', 'package_name', 'email', 'mobile'
  ]
  fieldsets = [
      (None,                {'fields': ['booking_id']}),
      (None,                {'fields': ['package_name', 'cost']}),         
      ('Contact Details',   {'fields': ['contact','address','mobile','email']}),
      ('Travel Details',    {'fields': ['date_of_departure','no_of_days','meal_plan']}),      
      ('Pax Details',       {'fields': ['adult','child','infant']}),
      ('Accommodation',     {'fields': ['accommodation','accommodation_type']}),      
      ('Mode of Transport', {'fields': ['flight','train','bus','car','group']}),  
      ('Meal plan',         {'fields': ['meal_plan_dropdown']}),  
      ('payment',           {'fields': ['payment']}),
      ('Notes:if any',      {'fields': ['notes']}),  
       ]
  # superuser_fields = [
  #     ('Status',            {'fields': ['active']})]
  actions = [approved]


  def get_actions(self, request):
            actions = super(Booking_detailAdmin, self).get_actions(request)
            if not request.user.is_superuser:
                if 'approved' in actions:
                    del actions['approved']
            return actions

  # def get_form(self, request, obj=None, **kwargs):                             
  #       if request.user.is_superuser:                                     
  #            self.fieldsets = self.normal_fields + self.superuser_fields         
  #       else:                                                                    
  #            self.fieldsets = self.normal_fields
  #       return super(Booking_detailAdmin, self).get_form(request, obj, **kwargs)

class TransportInline(admin.TabularInline):
    model = Transport
    extra = 2

class HotelInline(admin.TabularInline):
    model = Hotel
    extra = 2

class PassangerInline(admin.TabularInline):
    model = Passanger
    extra = 2
def approve(modeladmin, request, queryset):
    queryset.update(active=True)
    
    for g in queryset:
        print g
        ventor=Ventor()
        ventor.process_id=g.booking_id
        ventor.booking_id=g.booking_id
        ventor.package_name=g.package_name
        ventor.cost=g.cost
        ventor.contact=g.contact
        ventor.address=g.address
        ventor.mobile=g.mobile
        ventor.email=g.email
        ventor.date_of_departure=g.date_of_departure
        ventor.no_of_days=g.no_of_days
        ventor.meal_plan=g.meal_plan
        ventor.adult=g.adult
        ventor.child=g.child
        ventor.infant=g.infant
        ventor.accommodation=g.accommodation
        ventor.accommodation_type=g.accommodation_type
        ventor.flight=g.flight
        ventor.train=g.train
        ventor.bus=g.bus
        ventor.car=g.car
        ventor.group=g.group
        ventor.meal_plan_dropdown=g.meal_plan_dropdown
        ventor.notes=g.notes
        ventor.save()    
approve.short_description = "approved"

class Process_formAdmin(admin.ModelAdmin):
  list_display = ('booking_id', 'package_name', 'cost', 'contact', 'address','mobile', 'email', 'date_of_departure', 'no_of_days', 'meal_plan','adult','child','infant','accommodation','accommodation_type','flight','train','bus','car','group','meal_plan_dropdown','payment','notes','active')
  search_fields = [
      'booking_id', 'package_name', 'email', 'mobile'
  ]
  fieldsets = [
      (None,                {'fields': ['booking_id']}),
      (None,                {'fields': ['package_name', 'cost']}),         
      ('Contact Details',   {'fields': ['contact','address','mobile','email']}),
      ('Travel Details',    {'fields': ['date_of_departure','no_of_days','meal_plan']}),      
      ('Pax Details',       {'fields': ['adult','child','infant']}),
      ('Accommodation',     {'fields': ['accommodation','accommodation_type']}),      
      ('Mode of Transport', {'fields': ['flight','train','bus','car','group']}),  
      ('Meal plan',         {'fields': ['meal_plan_dropdown']}),  
      ('payment',           {'fields': ['payment']}),
      ('Notes:if any',      {'fields': ['notes']}),  
       ]
  inlines = [TransportInline,HotelInline,PassangerInline]
  # superuser_fields = [
  #     ('Status',            {'fields': ['active']})]
  actions = [approve]

  def get_actions(self, request):
            actions = super(Process_formAdmin, self).get_actions(request)
            if not request.user.is_superuser:
                if 'approve' in actions:
                    del actions['approve']
            return actions

  # def get_form(self, request, obj=None, **kwargs):                             
  #       if request.user.is_superuser:                                     
  #            self.fieldsets = self.normal_fields + self.superuser_fields         
  #       else:                                                                    
  #            self.fieldsets = self.normal_fields
  #       return super(Process_formAdmin, self).get_form(request, obj, **kwargs)

class Ventor_detailsInline(admin.TabularInline):
    model = Ventor_details
    extra = 2 
class Payment_detailInline(admin.TabularInline):
    model = Payment_detail
    extra = 2
class Payment_for_landInline(admin.TabularInline):
    model = Payment_for_land
    extra = 2
class Payment_recivedInline(admin.TabularInline):
    model = Payment_recived
    extra = 2
class expenseInline(admin.TabularInline):
    model = expense
    extra = 2
class ProfitInline(admin.TabularInline):
    model = Profit
    extra = 1
def approv(modeladmin, request, queryset):
    queryset.update(active=True)
approv.short_description = "approved"

class VentorAdmin(admin.ModelAdmin):
    list_display = ('booking_id', 'package_name', 'cost', 'contact', 'address','mobile', 'email', 'date_of_departure', 'no_of_days', 'meal_plan','adult','child','infant','accommodation','accommodation_type','flight','train','bus','car','group','meal_plan_dropdown','payment','notes','active')
    fieldsets = [
    (None,                {'fields': ['booking_id']}),
    (None,                {'fields': ['package_name', 'cost']}),         
    ('Contact Details',   {'fields': ['contact','address','mobile','email']}),
    ('Travel Details',    {'fields': ['date_of_departure','no_of_days','meal_plan']}),      
    ('Pax Details',       {'fields': ['adult','child','infant']}),
    ('Accommodation',     {'fields': ['accommodation','accommodation_type']}),      
    ('Mode of Transport', {'fields': ['flight','train','bus','car','group']}),  
    ('Meal plan',         {'fields': ['meal_plan_dropdown']}),  
    ('payment',           {'fields': ['payment']}),
    ('Notes:if any',      {'fields': ['notes']}),  
     ]
    inlines = [Ventor_detailsInline,Payment_detailInline,Payment_for_landInline,Payment_recivedInline,expenseInline,ProfitInline]
    # superuser_fields = [
    #   ('Status',            {'fields': ['active']})]
    actions = [approv]
    def get_actions(self, request):
              actions = super(VentorAdmin, self).get_actions(request)
              if not request.user.is_superuser:
                  if 'approv' in actions:
                      del actions['approv']
              return actions

    # def get_form(self, request, obj=None, **kwargs):                             
    #       if request.user.is_superuser:                                     
    #            self.fieldsets = self.normal_fields + self.superuser_fields         
    #       else:                                                                    
    #            self.fieldsets = self.normal_fields
    #       return super(VentorAdmin, self).get_form(request, obj, **kwargs)

admin.site.register(Booking_detail, Booking_detailAdmin)
admin.site.register(Process_form, Process_formAdmin)
admin.site.register(Ventor, VentorAdmin)
