package com.flightmanagement.pheonixCRUD.dto;

public class UserDTO {


    private  int userId;

    private  String firstname;

    private String familyname;

    private String gender;

    private String nationality;

    private String dateofbirth;

    private String passportno;

    private String issuedate;

    private String expiredate;

    private String residence;

    private String phonenuber;

    private String email;

    private String mailaddress;

    private String town;

    private String city;

    private String country;

     private int zipcode;

    public UserDTO() {
    }

    public UserDTO(int userId, String firstname, String familyname, String gender, String nationality, String dateofbirth, String passportno, String issuedate, String expiredate, String residence, String phonenuber, String email, String mailaddress, String town, String city, String country, int zipcode) {
        this.userId = userId;
        this.firstname = firstname;
        this.familyname = familyname;
        this.gender = gender;
        this.nationality = nationality;
        this.dateofbirth = dateofbirth;
        this.passportno = passportno;
        this.issuedate = issuedate;
        this.expiredate = expiredate;
        this.residence = residence;
        this.phonenuber = phonenuber;
        this.email = email;
        this.mailaddress = mailaddress;
        this.town = town;
        this.city = city;
        this.country = country;
        this.zipcode = zipcode;
    }

    public int getUserId(){
       return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getFamilyname() {
        return familyname;
    }

    public void setFamilyname(String familyname) {
        this.familyname = familyname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getPassportno() {
        return passportno;
    }

    public void setPassportno(String passportno) {
        this.passportno = passportno;
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate;
    }

    public String getExpiredate() {
        return expiredate;
    }

    public void setExpiredate(String expiredate) {
        this.expiredate = expiredate;
    }

    public String getResidence() {
        return residence;
    }

    public void setResidence(String residence) {
        this.residence = residence;
    }

    public String getPhonenuber() {
        return phonenuber;
    }

    public void setPhonenuber(String phonenuber) {
        this.phonenuber = phonenuber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMailaddress() {
        return mailaddress;
    }

    public void setMailaddress(String mailaddress) {
        this.mailaddress = mailaddress;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }

    @Override
    public String toString() {
        return "userDTO{" +
                "userId=" + userId +
                ", firstname='" + firstname + '\'' +
                ", familyname='" + familyname + '\'' +
                ", gender='" + gender + '\'' +
                ", nationality='" + nationality + '\'' +
                ", dateofbirth='" + dateofbirth + '\'' +
                ", passportno='" + passportno + '\'' +
                ", issuedate='" + issuedate + '\'' +
                ", expiredate='" + expiredate + '\'' +
                ", residence='" + residence + '\'' +
                ", phonenuber='" + phonenuber + '\'' +
                ", email='" + email + '\'' +
                ", mailaddress='" + mailaddress + '\'' +
                ", town='" + town + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", zipcode=" + zipcode +
                '}';
    }
}
