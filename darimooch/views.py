from django.shortcuts import render, redirect
from products.models import Products
from carousel.models import Carousel
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login as user_login, logout

def home(request):
    productsData = Products.objects.all()
    carousel = Carousel.objects.all()
    print(productsData)
    data = {
        "products":productsData,
        "carousel":carousel
    }
    return render(request, 'index.html', data)

def aboutPage(request):
    return render(request, 'about.html')



def productDetail(request, id):
    print(id)
    product = Products.objects.get(id__exact=id)
    print(product)
    data = {
        "product":product
    }
    return render(request, 'product.html', data)

def search(request):
    searchTerm = request.GET['search']
    products = Products.objects.filter(title__icontains=searchTerm)
    data = {
        "products":products
    }
    return render(request, 'search.html', data)

def register(request):
    # username = request.POST['username']
    return render(request, 'register.html')

def login(request):
    # username = request.POST['username']
    return render(request, 'login.html')


def registerUser(request):
    uname = request.POST['username']
    uemail = request.POST['email']
    upassword = request.POST['password']
    user = User.objects.create_user(username=uname, email=uemail, password=upassword)
    
    return render(request, 'register.html')

def loginUser(request):
    uname = request.POST['username']
    upassword = request.POST['password']
    user = authenticate(request, username=uname, password=upassword)
    if user is not None:
        user_login(request, user)
        request.session['username'] = user.username
        request.session['email'] = user.email
        return redirect('/')
    else:
        print('User does not exist')

    return render(request, 'login.html')

def logoutUser(request):
    logout(request)
    return render(request, 'login.html')


