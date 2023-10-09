<%@ Page Title="Instrucciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Indicaciones.aspx.cs" Inherits="Tarea1_P.A.W_03101.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>

        <br />

        <p>Objetivo: Aprender sobre la programación de aplicaciones usando las tecnologías de Web Form con .Net Framework.</p>

        <p>Temas y tecnologías que se deben utilizar.</p>

        <p>Tecnologías vistas en el capítulo 3: Web Forms, .Net Framework, JavaScript, JQuery y Ajax</p>

        <p>Instrucciones: Se solicita una aplicación que cumpla con lo siguiente:</p>

        <p>1. Mostrar un menú para ingresar en las opciones siguientes:</p>

        <p>1.1. Registro de propuestas legislativas.</p>

        <p>1.2. Al oprimir el enlace antes citado, se debe ingresar a una pantalla que muestre los campos necesarios para realizar lo que se solicita a continuación:</p>

        <p>1.2.1. Debe solicitar que tipo de identificación utiliza el usuario: cédula nacional o de residencia.</p>

        <p>1.2.2. Debe capturar el número de cédula o de residencia con el formato costarricense que se utiliza (debe investigar). Debe validar que el valor cumpla con el formato. Es un valor obligatorio.</p>

        <p>1.2.3. Debe capturar el nombre y los apellidos (campos separados). Es obligatorio.</p>

        <p>1.2.4. Debe ingresar un número de teléfono en formato nacional (Costa Rica). Es obligatorio.</p>

        <p>1.2.5. Debe ingresar un correo electrónico en su formato. Debe validar el formato. Es obligatorio.</p>

        <p>1.2.6. Debe capturar la provincia a la que pertenece. Es obligatorio.</p>

        <p>1.2.7. Debe capturar el cantón al que pertenece la persona. Es obligatorio. Cuando se selecciona una provincia, debe filtrar la lista de cantones para esa provincia. Debe buscar la lista de cantones por provincia.</p>

        <p>1.2.8. Debe capturar la propuesta del usuario. Toda propuesta debe tener no menos de 50 caracteres y un máximo de 200.</p>

        <p>1.2.9. Debe existir un botón “Limpiar”, al oprimirlo.</p>

        <p>1.2.10. Debe existir un botón “Guardar”, con este debe guardar en un archivo XML:</p>

        <p>1.2.11. Si el archivo no existe, debe ser creado y agregar el registro.</p>

        <p>1.2.12. Si el archivo existe, debe agregar el registro nuevo.</p>

        <p>1.2.13. Deberá redirigir a una pantalla que muestre un mensaje indicando que el registro se guardó satisfactoriamente.</p>

    </main>
</asp:Content>
