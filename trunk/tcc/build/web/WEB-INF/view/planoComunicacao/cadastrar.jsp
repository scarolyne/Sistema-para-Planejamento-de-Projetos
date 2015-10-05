<%-- 
    Document   : cadastrar
    Created on : 01/11/2014, 03:34:32
    Author     : Asus PC
--%>
<%@ include file="/includes/headerProjeto.jsp" %>
                <div class="tutorial-content">
                    <h5 class="title">Tutorial</h5>
                    <div class="row-fluid add-top">
                        <div class="span12">
                            <p style="word-wrap: break-word;">
                                Para assegurar que o plano de comunica��o seja efetivo � necess�rio responder as perguntas: <br>
                                <strong>1.</strong> Quem precisa saber das informa��es?<br>
                                <strong>2.</strong> De que informa��es precisam?<br>
                                <strong>3.</strong> Quando e como v�o obter essa informa��o?
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
                <h5 class="title">Plano de Comunica��o</h5>
                <div class="row-fluid add-top">
                    <div class="span12">
                        <form class="contact_form" action="${pageContext.request.contextPath}/Bootstrap/comunicacao/salvar" method="post" name="contact_form" id="form">
                            <ul id="ulForm">
                                <input type="hidden" name="id" value="${plano.id == null ? '' : plano.id}"/>
                                <li>
                                    <label for="name">Grupo Interessado:</label>
                                    <textarea rows="3" style="width: 80%;" name="interessado" placeholder="Grupo Interessado" required>${plano.interessado}</textarea>
                                </li>
                                <li>
                                    <label for="email" class="cem">Foco</label>
                                    <textarea rows="3" style="width: 80%;" name="foco" placeholder="Foco" required>${plano.foco}</textarea>
                                </li>
                                <li>
                                    <label for="name" class="cem">O que este grupo precisa saber: </label>
                                    <textarea rows="3" style="width: 80%;" name="informacao"  placeholder="Informa��es" required>${plano.informacao}</textarea>
                                </li>
                                <li>
                                    <label for="name" class="cem">Metodo: </label>
                                    <textarea rows="3" style="width: 80%;" name="metodo"  placeholder="Como" required>${plano.metodo}</textarea>
                                </li>
                                <li>
                                    <label for="name" class="cem">Quando: </label>
                                    <textarea rows="3" style="width: 80%;" name="quando"  placeholder="Quando" required>${plano.quando}</textarea>
                                </li>
                            <ul>
                                <li>
                                    <button class="submit" type="submit">Salvar</button>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>

            <%@include file="/includes/footerProjeto.jsp" %>

