<%--
    Document   : cadastrarUC
    Created on : 02/11/2014, 18:57:53
    Author     : Asus PC
--%>
<%@ include file="/includes/headerProjeto.jsp" %>

                <div class="tutorial-content">
                    <h5 class="title">Tutorial</h5>
                    <div class="row-fluid add-top">
                        <div class="span12">
                            <p style="word-wrap: break-word;">
                                Os <strong>atores e casos de uso</strong> identificados devem ser classificados de acordo com seu n�vel de complexidade.<br>
                                <strong>Classifica��o de atores</strong><br>
                                1. <strong>Simples</strong> - Pouquiss�mas entidades de Banco de Dados envolvidas e sem regras de neg�cio complexas; Outro sistema acessado atrav�s de API de programa��o;<br>
                                2. <strong>M�dio</strong> - Poucas entidades de Banco de Dados envolvidas e com algumas regras de neg�cio complexas; Outro sistema interagindo atrav�s de protocolo de comunica��o;<br>
                                3. <strong>Complexo</strong> - Regras de neg�cio complexas e muitas entidades de Bancos de Dados presentes; Usu�rio interagindo por interface gr�fica.<br>
                                <br><strong>Classifica��o de Caso de Uso</strong><br>
                                 1. <strong>Simples</strong> - Considerar at� 3 transa��es com menos de 5 classes de an�lise; ;<br>
                                2. <strong>M�dio</strong> - Considerar de 4 a 7 transa��es com 5 a 10 classes de an�lise;;<br>
                                3. <strong>Complexo</strong> - Considerar a partir de 7 transa��es com pelo menos 10 classes de an�lise;
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
                <h5 class="title">Cadastrar Caso de Uso</h5>
                <div class="row-fluid add-top">
                        <img src="${pageContext.request.contextPath}/casos_de_uso/${nomeArquivo}" />

                    <div class="span12">
                        <form class="contact_form" action="${pageContext.request.contextPath}/Bootstrap/CasoDeUso/salvar" method="POST">
                            <input type="hidden" name="acao" value="alterar">
                            <ul id="ulForm">
                                <div class="control-group">
                                    <label class="control-label" for="interessado">Tipo</label>
                                    <div class="controls">
                                        <select id="tipo">
                                            <option value="">Selecione</option>
                                            <option value="Ator">Ator</option>
                                            <option value="Caso de uso">Caso de uso</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="metodo">Nome</label>
                                    <div class="controls">
                                        <input id="nome" name="nome" class="input-xlarge" type="text">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="Quando">Complexidade</label>
                                    <div class="controls">
                                        <select  id="complexidade">
                                            <option value="">Selecione</option>
                                            <option value="Simples">Simples</option>
                                            <option value="M�dio">M�dio</option>
                                            <option value="Complexo">Complexo</option>
                                        </select>

                                    </div>
                                </div>
                                <ul>
                                    <li>
                                        <button id ="adicionaUC"class="submit" type="button">Adicionar</button>

                                    </li>
                                </ul>
                                </div>
                                <div class="span11">
                                    <table class="table table-bordered table-striped responsive-utilities">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Tipo</th>
                                                <th>Nome</th>
                                                <th>Complexidade</th>
                                                <th>#</th>
                                            </tr>
                                        </thead>
                                        <tbody id = "tableUC">

                                            <!-- Tabela preenchida por Ajax -->

                                        </tbody>
                                    </table>

                                </div>

                                <ul>
                                    <li>
                                        <button class="submit" type="submit">Salvar</button>

                                    </li>
                                </ul>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <%@include file="/includes/footerProjeto.jsp" %>

    <script src="${pageContext.request.contextPath}/resources/js/casoUso/casoUso.js"></script>