/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sise.com.pe.practicaejerciciosemana2jean.action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import sise.com.pe.practicaejerciciosemana2jean.model.Person;

/**
 *
 * @author Jeanc
 */
public class Register extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private Person personBean;

    public Register() {
        this.personBean = new Person(); // Inicializa personBean
    }

    public String execute() {
        return SUCCESS;
    }

    public Person getPersonBean() {
        return personBean;
    }

    public void setPersonBean(Person person) {
        this.personBean = person;
    }

    public void validate() {
        if (personBean.getFirstName() == null || personBean.getFirstName().isEmpty()) {
            addFieldError("personBean.firstName", "El nombre es obligatorio.");
        }
        if (personBean.getLastName() == null || personBean.getLastName().isEmpty()) {
            addFieldError("personBean.lastName", "El apellido paterno es obligatorio.");
        }
        if (personBean.getMiddleName() == null || personBean.getMiddleName().isEmpty()) {
            addFieldError("personBean.middleName", "El apellido materno es obligatorio.");
        }
        if (personBean.getDateOfBirth() == null || personBean.getDateOfBirth().isEmpty()) {
            addFieldError("personBean.dateOfBirth", "La fecha de nacimiento es obligatoria.");
        }
        if (personBean.getResidence() == null || personBean.getResidence().isEmpty()) {
            addFieldError("personBean.residence", "El lugar de residencia es obligatorio.");
        }
        if (personBean.getPhone() == null || !personBean.getPhone().matches("\\d{9}")) {
            addFieldError("personBean.phone", "El teléfono debe tener 9 dígitos numéricos.");
        }
        if (personBean.getEmail() == null || personBean.getEmail().isEmpty()) {
            addFieldError("personBean.email", "El correo electrónico es obligatorio.");
        }
        if (personBean.getAge() <= 0 || personBean.getAge() < 18 || !String.valueOf(personBean.getAge()).matches("\\d+")) {
            addFieldError("personBean.age", "La edad debe ser un número mayor o igual a 18.");
        }
    }
}
