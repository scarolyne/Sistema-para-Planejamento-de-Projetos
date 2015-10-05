<%-- 
    Document   : index
    Created on : 10/11/2014, 15:57:11
    Author     : Asus PC
--%>
<%@ include file="/includes/headerProjeto.jsp" %>

<div class="tutorial-content">
    <h5 class="title">Tutorial</h5>
    <div class="row-fluid add-top">
        <div class="span12">
            <p style="word-wrap: break-word;">
                A an�lise de Pontos por Caso de Uso (PCU) � feita mediante a avalia��o e classifica��o de cada caso de uso e ator identificado para o sistema;
                Etapas da an�lise:<br>
                <strong>1.</strong>Cadastrar atores e classific�-los de acordo com seu n�vel de complexidade;<br>
                <strong>2.</strong>Cadastrar casos de uso e classific�-los de acordo com seu n�vel de complexidade;<br>
                <strong>3.</strong>Calcular PCUs n�o ajustados;<br>
                <strong>4.</strong>Classificar fator de complexidade t�cnica;<br>
                <strong>5.</strong>Classificar fator de complexidade ambiental;<br>
                <strong>6.</strong>Calcular PCUs ajustados;<br>
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
            <h5 class="title">Estimativa por Pontos de Caso de Uso</h5>
            <div class="row-fluid add-top">

                <div class="span12">
                    <h6>Calculo de Pontos por caso de uso : <fmt:formatNumber maxFractionDigits="2" value="${pontoUC }"/></h6>
                    <c:if test="${mensagem == 1}">
                        <p>
                            Para Calcular a estimativa � necess�rio passar pelas etapas da an�lise:<br>
                        <p>  
                        <ol>

                            <li style="padding: 3px 4px 1px 10px;">
                                <div class="row-fluid">
                                    <div class="span9 text-overflow">
                                        Cadastrar atores e casos de uso e classific�-los de acordo com seu n�vel de complexidade;
                                    </div>
                                </div>
                            </li>
                            <li style="padding: 3px 4px 1px 10px;">
                                <div class="row-fluid">
                                    <div class="span9 text-overflow">
                                        Classificar fator de complexidade t�cnica;
                                    </div>
                                </div>
                            </li>
                            <li style="padding: 3px 4px 1px 10px;">
                                <div class="row-fluid">
                                    <div class="span9 text-overflow">
                                        Classificar fator de complexidade ambiental;
                                    </div>
                                </div>
                            </li>

                        </ol>

                    </c:if>
                    <p>
                        Karner sugere que para cada ponto de caso de uso seja utilizado 20hh. Logo A estimativa � de <fmt:formatNumber maxFractionDigits="2" value="${pontoUC *20}"/> horas. 
                    </p>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="/includes/footerProjeto.jsp" %>

<script src="${pageContext.request.contextPath}/resources/js/casoUso/casoUso.js"></script>