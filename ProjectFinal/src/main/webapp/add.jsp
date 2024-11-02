<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/includes/header.jsp" />

<div class="container">
    <h2> Add New Client</h2>
    
    <form action="${pageContext.request.contextPath}/clients/add" method="post">
        <!-- Client Details Section -->
        <fieldset>
            <legend>Client Details</legend>
            <div class="form-group">
                <label>Client Name:</label>
                <input type="text" name="clientName" required>
            </div>
            <div class="form-group">
                <label>Observations:</label>
                <textarea name="observations"></textarea>
            </div>
            <div class="form-group">
                <label>Page Number:</label>
                <input type="number" name="pageNumber">
            </div>
        </fieldset>

        <!-- Affiliation Details Section -->
        <fieldset>
            <legend>Affiliation Details</legend>
            <div class="form-group">
                <label>Social Name:</label>
                <input type="text" name="socialName">
            </div>
            <div class="form-group">
                <label>Responsible Person:</label>
                <input type="text" name="responsiblePerson">
            </div>
            <div class="form-group">
                <label>Commercial Contact:</label>
                <input type="text" name="commercialContact">
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email">
            </div>
            <div class="form-group">
                <label>Phone:</label>
                <input type="text" name="phone">
            </div>
        </fieldset>

        <!-- Fiscal and Shipping Address Section -->
        <fieldset>
            <legend>Address Information</legend>
            <div class="form-group">
                <label>Fiscal Address:</label>
                <input type="text" name="fiscalAddress">
            </div>
            <div class="form-group">
                <label>Shipping Address:</label>
                <input type="text" name="shippingAddress">
            </div>
        </fieldset>

        <!-- Accounting and Invoicing Section -->
        <fieldset>
            <legend>Accounting and Invoicing</legend>
            <div class="form-group">
                <label>Accounting Link:</label>
                <input type="text" name="accountingLink">
            </div>
            <div class="form-group">
                <label>Invoice Format:</label>
                <input type="text" name="invoiceFormat">
            </div>
            <div class="form-group">
                <label>Payment Method:</label>
                <input type="text" name="paymentMethod">
            </div>
            <div class="form-group">
                <label>Risk Level:</label>
                <input type="text" name="riskLevel">
            </div>
            <div class="form-group">
                <label>Max Credit:</label>
                <input type="number" step="0.01" name="maxCredit">
            </div>
        </fieldset>

        <!-- Submit and Close Buttons -->
        <div class="form-group buttons">
            <input type="submit" value="Add Client" class="button add-client">
            <a href="${pageContext.request.contextPath}/clients/list" class="button close">Close</a>
        </div>
    </form>
</div>

<jsp:include page="/includes/footer.jsp" />
