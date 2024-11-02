<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/includes/header.jsp" />

<div class="container">
    <h2>Client Record</h2>

    <c:forEach var="client" items="${clients}">
        <fieldset class="client-details">
            <legend>Client Information</legend>
            <table>
                <tr>
                    <td><strong>ID:</strong></td>
                    <td>${client.id}</td>
                </tr>
                <tr>
                    <td><strong>Client Name:</strong></td>
                    <td>${client.clientName}</td>
                </tr>
                <tr>
                    <td><strong>Observations:</strong></td>
                    <td>${client.observations}</td>
                </tr>
                <tr>
                    <td><strong>Page Number:</strong></td>
                    <td>${client.pageNumber}</td>
                </tr>
            </table>
        </fieldset>

        <fieldset class="affiliation-details">
            <legend>Affiliation Details</legend>
            <table>
                <tr>
                    <td><strong>Social Name:</strong></td>
                    <td>${client.socialName}</td>
                </tr>
                <tr>
                    <td><strong>Responsible Person:</strong></td>
                    <td>${client.responsiblePerson}</td>
                </tr>
                <tr>
                    <td><strong>Commercial Contact:</strong></td>
                    <td>${client.commercialContact}</td>
                </tr>
                <tr>
                    <td><strong>Email:</strong></td>
                    <td>${client.email}</td>
                </tr>
                <tr>
                    <td><strong>Phone:</strong></td>
                    <td>${client.phone}</td>
                </tr>
            </table>
        </fieldset>

        <fieldset class="address-details">
            <legend>Address Information</legend>
            <table>
                <tr>
                    <td><strong>Fiscal Address:</strong></td>
                    <td>${client.fiscalAddress}</td>
                </tr>
                <tr>
                    <td><strong>Shipping Address:</strong></td>
                    <td>${client.shippingAddress}</td>
                </tr>
            </table>
        </fieldset>

        <fieldset class="accounting-details">
            <legend>Accounting and Invoicing</legend>
            <table>
                <tr>
                    <td><strong>Accounting Link:</strong></td>
                    <td>${client.accountingLink}</td>
                </tr>
                <tr>
                    <td><strong>Invoice Format:</strong></td>
                    <td>${client.invoiceFormat}</td>
                </tr>
                <tr>
                    <td><strong>Payment Method:</strong></td>
                    <td>${client.paymentMethod}</td>
                </tr>
                <tr>
                    <td><strong>Risk Level:</strong></td>
                    <td>${client.riskLevel}</td>
                </tr>
                <tr>
                    <td><strong>Max Credit:</strong></td>
                    <td>${client.maxCredit}</td>
                </tr>
            </table>
        </fieldset>

        <!-- Actions Buttons -->
        <div class="actions">
            <a href="${pageContext.request.contextPath}/clients/edit?id=${client.id}" class="button edit">Edit</a>
            <a href="${pageContext.request.contextPath}/clients/delete?id=${client.id}" class="button delete" onclick="return confirm('Are you sure you want to delete this client?');">Delete</a>
        </div>

    </c:forEach>
</div>

<jsp:include page="/includes/footer.jsp" />
