from django.db import models
from datetime import date

# ACCOMMODATION=(
# 	('hotel'),('Hotel'),
# 	('resort'),('Resort'),
# )
ACCOMMODATION_TYPE=(
	('2star','2Star'),
	('3star','3Star'),
	('4star','4Star'),
	('5star','5Star'),
)
ACCOMMODATION = (
    ('hotel', 'Hotel'),
    ('resort', 'Resort'),
)
FLIGHT=(
	('economy','Economy'),
	('business','Business'),
	)
TRAIN=(
	('ac','A/C'),
	('non ac','Non A/C'),
	)
BUS=(
	('sleeper','Sleeper'),
	('semi-sleeper','Semi-Sleeper'),
	)
CAR=(
	('indigo','Indigo'),
	('innova','Innova'),
	('tempo','Tempo'),
	)
GROUP=(
	('minibus','MiniBus'),
	('bus','Bus'),
	)
MEAL_PLAN=(
	('ep','EP'),
	('cp','CP'),
	('map','map'),
	('ap','AP'),
	)
PAYMENT=(
	('cash','Cash'),
	('cheque/dd','Cheque/DD'),
	('online_transfer','Online_Transfer'),
	)
GENDER=(
	('male','Male'),
	('female','Female'),
	)
# Create your models here.
class Booking_detail(models.Model):
	"""docstring for Booking_detail"""
	
	booking_id=models.IntegerField(max_length=10,default='', blank=True, help_text="Booking ID")
	package_name=models.CharField(max_length=50,default='', blank=True, help_text="Package details")
	cost=models.DecimalField(verbose_name='Price', default=0.0, max_digits=10, decimal_places=2, help_text="Cost")
	contact=models.CharField(max_length=50,default='', blank=True, help_text="Contact")
	address=models.CharField(max_length=500,default='', blank=True, help_text="Address")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	email=models.EmailField(default='', blank=True, help_text="Email")
	date_of_departure=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of birth.")
	no_of_days=models.IntegerField(max_length=3,default='', blank=True, help_text="No of days")
	meal_plan=models.CharField(max_length=50,default='', blank=True, help_text="Meal_plan")
	adult=models.IntegerField(max_length=10,default='', blank=True, help_text="adult")
	child=models.IntegerField(max_length=10,default='', blank=True, help_text="child")
	infant=models.IntegerField(max_length=10,default='', blank=True, help_text="infant")
	accommodation=models.CharField(max_length=10, default='', choices=ACCOMMODATION, blank=True, help_text="Accommatation.")
	accommodation_type=models.CharField(max_length=10, default='', choices=ACCOMMODATION_TYPE, blank=True, help_text="Accommatation Type.")
	flight=models.CharField(max_length=15, default='', choices=FLIGHT, blank=True, help_text="Flight")
	train=models.CharField(max_length=15, default='', choices=TRAIN, blank=True, help_text="Train")
	bus=models.CharField(max_length=20, default='', choices=BUS, blank=True, help_text="BUS")
	car=models.CharField(max_length=15, default='', choices=CAR, blank=True, help_text="Car")
	group=models.CharField(max_length=15, default='', choices=GROUP, blank=True, help_text="Group")
	meal_plan_dropdown=models.CharField(max_length=10, default='', choices=MEAL_PLAN, blank=True, help_text="Meal_plan")
	payment=models.CharField(max_length=20, default='', choices=PAYMENT, blank=True, help_text="Payment")
	notes=models.TextField()
	active = models.BooleanField(default=False)
	def __unicode__(self):
	  return self.package_name if self.package_name else ''

class Process_form(models.Model):
	"""docstring for Booking_detail"""
	#process=models.OneToOneField(Booking_detail)
	booking_id=models.IntegerField(max_length=10,default='', blank=True, help_text="Booking ID")
	package_name=models.CharField(max_length=50,default='', blank=True, help_text="Package details")
	cost=models.DecimalField(verbose_name='Price', default=0.0, max_digits=10, decimal_places=2, help_text="Cost")
	contact=models.CharField(max_length=50,default='', blank=True, help_text="Contact")
	address=models.CharField(max_length=500,default='', blank=True, help_text="Address")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	email=models.EmailField(default='', blank=True, help_text="Email")
	date_of_departure=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of birth.")
	no_of_days=models.IntegerField(max_length=3,default='', blank=True, help_text="No of days")
	meal_plan=models.CharField(max_length=50,default='', blank=True, help_text="Meal_plan")
	adult=models.IntegerField(max_length=10,default='', blank=True, help_text="adult")
	child=models.IntegerField(max_length=10,default='', blank=True, help_text="child")
	infant=models.IntegerField(max_length=10,default='', blank=True, help_text="infant")
	accommodation=models.CharField(max_length=10, default='', choices=ACCOMMODATION, blank=True, help_text="Accommatation.")
	accommodation_type=models.CharField(max_length=10, default='', choices=ACCOMMODATION_TYPE, blank=True, help_text="Accommatation Type.")
	flight=models.CharField(max_length=10, default='', choices=FLIGHT, blank=True, help_text="Flight")
	train=models.CharField(max_length=10, default='', choices=TRAIN, blank=True, help_text="Train")
	bus=models.CharField(max_length=20, default='', choices=BUS, blank=True, help_text="BUS")
	car=models.CharField(max_length=10, default='', choices=CAR, blank=True, help_text="Car")
	group=models.CharField(max_length=10, default='', choices=GROUP, blank=True, help_text="Group")
	meal_plan_dropdown=models.CharField(max_length=10, default='', choices=MEAL_PLAN, blank=True, help_text="Meal_plan")
	payment=models.CharField(max_length=20, default='', choices=PAYMENT, blank=True, help_text="Payment")
	notes=models.TextField()
	active = models.BooleanField(default=False)


	def __unicode__(self):
	  return self.package_name if self.package_name else ''

class Transport(models.Model):
	process=models.ForeignKey(Process_form)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	destination=models.CharField(max_length=50,default='', blank=True, help_text="destination")
	number=models.IntegerField(max_length=10,default='', blank=True, help_text="number")
	departure_time=models.DateTimeField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="departure_time.")
	arrival_time=models.DateTimeField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="arrival_time")
	name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	cab_no=models.CharField(max_length=50,default='', blank=True, help_text="cab_no")
	remark=models.CharField(max_length=50,default='', blank=True, help_text="remark")

class Hotel(models.Model):
	process=models.ForeignKey(Process_form)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	destination=models.CharField(max_length=50,default='', blank=True, help_text="destination")
	hotel_name=models.CharField(max_length=50,default='', blank=True, help_text="hotel name")
	checkin=models.CharField(max_length=50,default='', blank=True, help_text="checkin")
	checkout=models.CharField(max_length=50,default='', blank=True, help_text="checkout")
	room_type=models.CharField(max_length=50,default='', blank=True, help_text="room_type")
	meal_type=models.CharField(max_length=50,default='', blank=True, help_text="meal_type")
	remark=models.CharField(max_length=50,default='', blank=True, help_text="remark")

class Passanger(models.Model):
	process=models.ForeignKey(Process_form)
	name=models.CharField(max_length=50,default='', blank=True, help_text="hotel name")
	gender=models.CharField(max_length=10, default='', choices=GENDER, blank=True, help_text="GENDER")
	date_of_birth=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of birth.")
	passport=models.IntegerField(max_length=50,default='', blank=True, help_text="passport")
	place_of_issue=models.CharField(max_length=50,default='', blank=True, help_text="place_of_issue")
	date_of_issue=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of issue.")
	date_of_expiry=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of expiry.")

class Ventor(models.Model):
	#process=models.OneToOneField(Process_form)
	booking_id=models.IntegerField(max_length=10,default='', blank=True, help_text="Booking ID")
	package_name=models.CharField(max_length=50,default='', blank=True, help_text="Package details")
	cost=models.DecimalField(verbose_name='Price', default=0.0, max_digits=10, decimal_places=2, help_text="Cost")
	contact=models.CharField(max_length=50,default='', blank=True, help_text="Contact")
	address=models.CharField(max_length=500,default='', blank=True, help_text="Address")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	email=models.EmailField(default='', blank=True, help_text="Email")
	date_of_departure=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date of birth.")
	no_of_days=models.IntegerField(max_length=3,default='', blank=True, help_text="No of days")
	meal_plan=models.CharField(max_length=50,default='', blank=True, help_text="Meal_plan")
	adult=models.IntegerField(max_length=10,default='', blank=True, help_text="adult")
	child=models.IntegerField(max_length=10,default='', blank=True, help_text="child")
	infant=models.IntegerField(max_length=10,default='', blank=True, help_text="infant")
	accommodation=models.CharField(max_length=10, default='', choices=ACCOMMODATION, blank=True, help_text="Accommatation.")
	accommodation_type=models.CharField(max_length=10, default='', choices=ACCOMMODATION_TYPE, blank=True, help_text="Accommatation Type.")
	flight=models.CharField(max_length=10, default='', choices=FLIGHT, blank=True, help_text="Flight")
	train=models.CharField(max_length=10, default='', choices=TRAIN, blank=True, help_text="Train")
	bus=models.CharField(max_length=20, default='', choices=BUS, blank=True, help_text="BUS")
	car=models.CharField(max_length=10, default='', choices=CAR, blank=True, help_text="Car")
	group=models.CharField(max_length=10, default='', choices=GROUP, blank=True, help_text="Group")
	meal_plan_dropdown=models.CharField(max_length=10, default='', choices=MEAL_PLAN, blank=True, help_text="Meal_plan")
	payment=models.CharField(max_length=20, default='', choices=PAYMENT, blank=True, help_text="Payment")
	notes=models.TextField()
	active = models.BooleanField(default=False)
	
class Ventor_details(models.Model):
	vendor=models.ForeignKey(Ventor)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	destination=models.CharField(max_length=50,default='', blank=True, help_text="destination")
	name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	

class Payment_detail(models.Model):
	vendor=models.ForeignKey(Ventor)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	destination=models.CharField(max_length=50,default='', blank=True, help_text="destination")
	vendor_name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	made_of_pay=models.CharField(max_length=50,default='', blank=True, help_text="made of pay")
	vendor_name=models.CharField(max_length=50,default='', blank=True, help_text="name")
	mobile=models.CharField(max_length=15,default='', blank=True, help_text="Mobile Number")
	made_of_pay=models.CharField(max_length=50,default='', blank=True, help_text="made of pay")

class Payment_for_land(models.Model):
	vendor=models.ForeignKey(Ventor)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	destination=models.CharField(max_length=50,default='', blank=True, help_text="destination")
	visa_free=models.CharField(max_length=50,default='', blank=True, help_text="visa_free")
	food=models.CharField(max_length=50,default='', blank=True, help_text="food")
	entry_fee=models.CharField(max_length=50,default='', blank=True, help_text="entry_fee")
	toll_fee=models.CharField(max_length=50,default='', blank=True, help_text="TOll & hill fee")
	driver_fee=models.CharField(max_length=50,default='', blank=True, help_text="driver_fee")
	guide_fee=models.CharField(max_length=50,default='', blank=True, help_text="guide_fee")

class Payment_recived(models.Model):
	vendor=models.ForeignKey(Ventor)
	date=models.DateField(auto_now=False, auto_now_add=False, null=True, blank=True, help_text="Date")
	price=models.DecimalField(verbose_name='Price', default=0.0, max_digits=10, decimal_places=2, help_text="price")
	made_of_pay=models.CharField(max_length=50,default='', blank=True, help_text="made of transfer")

class expense(models.Model):
	vendor=models.ForeignKey(Ventor)
	air=models.DecimalField(verbose_name='air', default=0.0, max_digits=10, decimal_places=2, help_text="Ait ticket")
	hotel=models.DecimalField(verbose_name='hotel', default=0.0, max_digits=10, decimal_places=2, help_text="Hotel")
	transfort=models.DecimalField(verbose_name='transfort', default=0.0, max_digits=10, decimal_places=2, help_text="Transfort")
	other=models.DecimalField(verbose_name='other', default=0.0, max_digits=10, decimal_places=2, help_text="Other")

class Profit(models.Model):
	vendor=models.ForeignKey(Ventor)
	cost=models.DecimalField(verbose_name='Price', default=0.0, max_digits=10, decimal_places=2, help_text="Cost")
	total_expense=models.DecimalField(verbose_name='total_expense', default=0.0, max_digits=10, decimal_places=2, help_text="Total Expense")
	profit=models.DecimalField(verbose_name='profit', default=0.0, max_digits=10, decimal_places=2, help_text="profit")
	percentage=models.CharField(max_length=50,default='', blank=True, help_text="Percentage")

class Invoice(models.Model):
	invoice_id=models.IntegerField(max_length=10,default='', blank=True, help_text="Invoice ID")
	booking_id=models.IntegerField(max_length=10,default='', blank=True, help_text="Booking ID")
	booking_date=models.DateField(max_length=50,default='', blank=True, help_text="Booking Date")
	service_tax=models.CharField(max_length=50,default='', blank=True, help_text="service_tax")
	invoice_date=models.DateField(max_length=50,default='', blank=True, help_text="invoice Date")
	package_id=models.IntegerField(max_length=10,default='', blank=True, help_text="package ID")
	package_date=models.DateField(max_length=50,default='', blank=True, help_text="Package Date")
	pan=models.IntegerField(max_length=10,default='', blank=True, help_text="Pan no")
	invoice_to=models.CharField(max_length=50,default='', blank=True, help_text="Invoice to")
	address=models.CharField(max_length=500,default='', blank=True, help_text="Address")
	no_of_pax=models.IntegerField(max_length=10,default='', blank=True, help_text="No of Pax")
	package=models.TextField()
	rate=models.DecimalField(verbose_name='rete', default=0.0, max_digits=10, decimal_places=2, help_text="Rate")
	amount=models.DecimalField(verbose_name='amount', default=0.0, max_digits=10, decimal_places=2, help_text="Amount")
	total=models.DecimalField(verbose_name='Total', default=0.0, max_digits=10, decimal_places=2, help_text="Total")
	service_charge=models.DecimalField(verbose_name='Service charge', default=0.0, max_digits=10, decimal_places=2)
	service_tax=models.DecimalField(verbose_name='Service tax', default=0.0, max_digits=10, decimal_places=2)
	total_value=models.DecimalField(verbose_name='Total value', default=0.0, max_digits=10, decimal_places=2)

		
		