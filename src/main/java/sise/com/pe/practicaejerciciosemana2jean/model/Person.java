/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sise.com.pe.practicaejerciciosemana2jean.model;

/**
 *
 * @author Jeanc
 */
public class Person {
    private String firstName;
    private String lastName;
    private String middleName;
    private String dateOfBirth;
    private String residence;
    private String phone;
    private String email;
    private int age;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getResidence() {
        return residence;
    }

    public void setResidence(String residence) {
        this.residence = residence;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Nombre: " + firstName + ", Apellido Paterno: " + lastName + 
               ", Apellido Materno: " + middleName + ", Fecha de Nacimiento: " + dateOfBirth +
               ", Lugar de Residencia: " + residence + ", Teléfono: " + phone +
               ", Correo Electrónico: " + email + ", Edad: " + age;
    }
}