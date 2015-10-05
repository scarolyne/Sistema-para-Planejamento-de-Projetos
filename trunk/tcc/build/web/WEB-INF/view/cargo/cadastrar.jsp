<%@ include file="/includes/headerProjeto.jsp" %>

                <div class="tutorial-content">
                    <h5 class="title">Tutorial</h5>
                    <div class="row-fluid add-top">
                        <div class="span12">
                            <p style="word-wrap: break-word;">
                                Cadastrar as fun��es que ser�o executadas pelos profissionais do projeto, bem como o valor da hora;
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="span8">
        <div class="display-dev">
            <div class="display-dev-content">
                <h5 class="title">Cadastrar Fun��o</h5>
                <div class="row-fluid add-top">

                    <%@ include file="/includes/mensagens.jsp" %>

                    <div class="span12">
                        <form class="contact_form" action="${pageContext.request.contextPath}/Bootstrap/cargo/salvar" method="post" name="contact_form">
                            <ul id="ulForm">
                                <input type="hidden" name="id" value="${cargo.id}"/>

                                <li>
                                <label for="name">Fun��o: </label>
                                <input type="text" value="${cargo.nome}" name="cargo" placeholder="Cargo" required />                                </li>
                                <li>
                                <label for="email">Pre�o por Hora: </label>
                                <input type="text" value="${cargo.preco}" name="preco" class="money" placeholder="Pre�o por Hora" required />                                </li>
                                </li>
                                <li>
                                <button class="submit" name ="botao" type="submit">Salvar</button>
                                <a href="${pageContext.request.contextPath}/Bootstrap/cargo">
                                    <button class="submit" type="button">Voltar</button>
                                </a>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/includes/footerProjeto.jsp" %>

<script src="${pageContext.request.contextPath}/resources/js/cargo/cargo.js"></script>