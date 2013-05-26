<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" language="java" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link href="http://ilab.by/tmp/app.css" rel="stylesheet" />

    <script type="text/javascript" src="http://ilab.by/tmp/js/jquery-2.0.0.min.js" ></script>
    <script type="text/javascript" src="http://ilab.by/tmp/js/app.js" ></script>

    <title>Wanelo.com</title>
</head>
<body>
<header>
    <nav>
        <img class="logo" src="http://ilab.by/tmp/images/logo.png">
        <a class="login" href="#login">Войти</a>
    </nav>
    <!--
        есть несколько изображений, которые подставляются рандомно при каждом открытии страницы
        причем, на определенные изображения ставится класс white, чтобы текст был нормально читаем
     -->
    <div class="intro " style="background-image: url(http://ilab.by/tmp/images/background-image4.jpg)">
        <h1>Лучший способ покупать</h1>
        <div class="sign-up" >
            <!--
            <div class="facebook">
                <img src="ilab.by/tmp/images/facebook_button_left.png" />
                <div>начать</div>
            </div>
            -->
            <div class="facebook">
                <form action="<c:url value="/signin/facebook" />" method="POST" name="thisForm">
                    <img src="http://ilab.by/tmp/images/facebook_button_left.png" />
                    <div onclick="document.thisForm.submit()">начать</div>
                    <input type="hidden" name="scope" value="email,publish_stream,offline_access" />
                </form>
            </div>

            <div class="or">
                или
            </div>
            <div class="email">
                <form action="#sign_up">
                    <input type="email" placeholder="Ваш e-mail" />
                    <input type="text" placeholder="Логин" />
                    <input type="password" placeholder="Пароль" />
                    <input class="button" type="submit" value="Начать покупать" />
                </form>
            </div>
        </div>
    </div>
</header>
<article>
    <h2>В тренде прямо сейчас</h2>
    <!--
    <div class="products">
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-1.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-2.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-3.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-4.jpg" />
        </a>
        <a href="#product">
            <img src="images/product-5.jpg" />
        </a>
    </div>
    -->
    <div class="bottom-sign-in">
        <a class="button" href="#sign_in">Зарегистрироваться</a> и увидеть больше
    </div>
</article>
<footer>
    <img class="squared-logo" src="http://ilab.by/tmp/images/squared-logo.jpg" />
    <div class="top">
        <a href="#about">О нас</a> ·
        <a href="#press">Пресса</a>
    </div>
    <div class="bottom">
        <a href="#terms">Условия</a> ·
        <a href="#privacy">Конфиденциальность</a> ·
        <a href="#help">Помощь</a>
    </div>
</footer>

<div class="sign-in-container">
    <h1>Авторизация</h1>
    <div class="sign-in">
        <div class="facebook">
            <img src="http://ilab.by/tmp/images/facebook_button_left.png" />
            <div>начать</div>
        </div>
        <div class="or">
            или
        </div>
        <form action="#sign_in">
            <input type="text" placeholder="E-mail или логин" />
            <input type="password" placeholder="Пароль" />
            <div class="stay_signed">
                <input type="checkbox" id="stay_signed"/>
                <label for="stay_signed">Запомнить меня</label>
            </div>
            <input class="button" type="submit" value="Начать покупать" />
            <div class="links">
                <a href="#forgot">Забыли пароль?</a>
                <a href="#forgot">Регистрация</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
