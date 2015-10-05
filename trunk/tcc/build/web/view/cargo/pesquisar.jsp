
<%@ include file="/includes/headerProjeto.jsp" %>

                <div class="tutorial-content">
                    <h5 class="title">Tutorial</h5>
                    <div class="row-fluid add-top">
                        <div class="span12">
                            <p style="word-wrap: break-word;">
                                As fun��es que ser�o exercidas no projeto s�o importantes para que no diagrama de gantt e plano de custo seja especificado qual profissional/fun��o � necess�rio nas atividades.
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
                <h5 class="title">Pesquisa de Fun��es</h5>
                <div class="row-fluid add-top">

                    <%@ include file="/includes/mensagens.jsp" %>

                    <div class="span12">
                        <form class="contact_form" action="${pageContext.request.contextPath}/Bootstrap/cargo/buscar" method="POST">
                            <ul id="ulForm">

                                <li>
                                    <label for="name">Fun��o: </label>
                                    <input type="text"  name="cargo" id="cargo" placeholder="Cargo" value="${nome}"  />
                                </li>

                                <li>
                                    <label for="email">Pre�o por Hora: </label>
                                    <input type="text" class="money" name="preco" id="preco" placeholder="Pre�o por Hora" value="${preco}" />
                                </li>

                                <li>
                                    <button class="submit" type="submit">Pesquisar</button>
                                    <a href="${pageContext.request.contextPath}/Bootstrap/cargo/cadastrar">
                                        <button class="submit" type="button">Novo</button>
                                    </a>
                                    <button class="submit" type="button" id="limpar">Limpar</button>
                                </li>
                            </ul>
                        </form>
                    </div>

                    <c:if test="${cargos.size() > 0}">

                        <div class="span11">
                            <table class="table table-bordered table-striped responsive-utilities">
                                <thead>
                                    <tr>
                                        <th>Fun��o</th>
                                        <th>Valor Hora</th>
                                        <th>#</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cargo" items="${cargos}">
                                        <tr>
                                            <td class="is-visible">${cargo.nome}</td>
                                            <td class="is-hidden">${cargo.preco}</td>
                                            <td class="is-hidden">
                                                <a href='${pageContext.request.contextPath}/Bootstrap/cargo/editar/id/${cargo.id}'>
                                                    <span class="icon-edit"></span>
                                                </a>
                                                <a href='#'>
                                                    <span class="icon-remove excluir" url="/tcc/Bootstrap/cargo/excluir/id/${cargo.id}"></span>
                                                </a>
                                            </td>
                                        </tr>

                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>

                    </c:if>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="/includes/footerProjeto.jsp" %>

<script src="${pageContext.request.contextPath}/resources/js/cargo/cargo.js"></script>