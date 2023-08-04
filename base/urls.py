from django.urls import path
from .views import (
    TaskList,
    TaskCreate,
    TaskUpdate,
    TaskDelete,
    CustomLoginView,
    RegisterPage,
)
from django.contrib.auth.views import LogoutView

urlpatterns = [
    path("login/", CustomLoginView.as_view(), name="login"),
    path("logout/", LogoutView.as_view(next_page="login"), name="logout"),
    path("register/", RegisterPage.as_view(), name="register"),
    path("", TaskList.as_view(), name="tasks"),
    path("create-task/", TaskCreate.as_view(), name="task-create"),
    path("update-task/<int:pk>/", TaskUpdate.as_view(), name="task-update"),
    path("delete-task/<int:pk>/", TaskDelete.as_view(), name="task-delete"),
]
