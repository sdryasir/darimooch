from django.shortcuts import render, redirect
from products.models import Products
from categories.models import Category
from carousel.models import Carousel
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login as user_login, logout
from django.core.paginator import Paginator
from django.contrib import messages

def home(request):
    categories = Category.objects.all()
    productsData = Products.objects.all().order_by('-id')[:10]
    carousel = Carousel.objects.all()

    data = {
        "products":productsData,
        "carousel":carousel,
        # "totalPages":totalPages,
        "categories":categories
    }
    return render(request, 'index.html', data)



def shop(request, cat_id=None):
    categories = Category.objects.all()
    if cat_id:
        productsByCat = Products.objects.filter(cat_id_id = cat_id)
    else:
        productsByCat = Products.objects.all()

    productsData = Paginator(productsByCat, 10)

    if 'page' in request.GET:
        page = request.GET['page']
    else:
        page = 1

    products = productsData.get_page(page)

    totalPages = [x+1 for x in range(productsData.num_pages)]

    print("test test", products.number)

    data = {
        "categories":categories,
        "productsByCat":products,
        "totalPages":totalPages,
        "currentPage":products.number,
        "cat_id": cat_id
    }
    return render(request, 'shop.html', data)



def aboutPage(request):
    return render(request, 'about.html')



def productDetail(request, id):
    product = Products.objects.get(id__exact=id)
    print(product)
    data = {
        "product":product
    }
    return render(request, 'product.html', data)

def search(request):
    searchTerm = request.GET['search']
    products = Products.objects.filter(title__icontains=searchTerm)
    categories = Category.objects.all()
    data = {
        "products":products,
        "count":products.count(),
        "categories":categories
    }
    return render(request, 'search.html', data)

def register(request):
    # username = request.POST['username']
    return render(request, 'register.html')

def login(request):
    if request.user.is_authenticated:
        return redirect('home')
    
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

    if uname == '' or upassword =='':
        messages.error(request, "Please provide the username and password")
        return redirect('login')

    user = authenticate(request, username=uname, password=upassword)
    if user is not None:
        user_login(request, user)
        request.session['username'] = user.username
        request.session['email'] = user.email
        return redirect('/')
    else:
        messages.error(request, "User does not exist")

    return render(request, 'login.html')

def logoutUser(request):
    logout(request)
    return redirect('home')


