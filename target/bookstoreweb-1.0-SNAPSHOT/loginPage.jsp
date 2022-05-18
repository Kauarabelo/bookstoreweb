<%-- 
    Document   : loginPage.jsp
    Created on : 9 de mai de 2022, 14:58:06
    Author     : devsys-b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Bookstore Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>

        <div class="container-fluid" align="center">

            <jsp:include page="contents/cabecalhoLogin.jsp"/>


                <!--Campo Email-->
                <div class="form-outline mb-4">

                    <input class="form-control" name="email" placeholder="Digite seu email" size="30" />
                    <br>
                    <label class="form-label" for="email">Email</label>

                </div>

                <!--Campo Senha-->
                <div class="form-outline mb-4">

                    <input class="form-control" type="password" name="password" placeholder="Digite sua senha" size="30" />
                    <br>
                    <label class="form-label" for="password">Password</label>

                </div>

                <!--
                Esse atributo MESSAGE será utilizado como retorno de
               mensagem ao usuário caso
                login inválido.
                -->
                ${message}<br><br>
                <!--Bottom-->
                <button class="btn btn-primary btn-lg" type="submit"
                        style="padding-left: 2.5rem; padding-right: 2.5rem;">
                    Login
                </button>

                <!--Registro-->
                <p class="small fw-bold mt-2 pt-1 mb-0">Não tem uma conta? <a href="/bookstoreweb/bsuser/new"
                                                                              class="link-danger">Registre-se</a></p>
            </form>
        </div>
    </div>


</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

