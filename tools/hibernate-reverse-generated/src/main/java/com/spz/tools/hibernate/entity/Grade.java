package com.spz.tools.hibernate.entity;
// Generated 2019-1-17 14:55:37 by Hibernate Tools 3.2.2.GA


import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Grade generated by hbm2java
 */
@Entity
@Table(name="grade"
    ,catalog="myschool"
)
public class Grade  implements java.io.Serializable {


     private Integer gradeId;
     private String gradeName;
     private Set students = new HashSet(0);
     private Set students_1 = new HashSet(0);
     private Set subjects = new HashSet(0);
     private Set subjects_1 = new HashSet(0);

    public Grade() {
    }

	
    public Grade(String gradeName) {
        this.gradeName = gradeName;
    }
    public Grade(String gradeName, Set students, Set students_1, Set subjects, Set subjects_1) {
       this.gradeName = gradeName;
       this.students = students;
       this.students_1 = students_1;
       this.subjects = subjects;
       this.subjects_1 = subjects_1;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="gradeId", unique=true, nullable=false)
    public Integer getGradeId() {
        return this.gradeId;
    }
    
    public void setGradeId(Integer gradeId) {
        this.gradeId = gradeId;
    }
    
    @Column(name="gradeName", nullable=false, length=50)
    public String getGradeName() {
        return this.gradeName;
    }
    
    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="grade")
    public Set getStudents() {
        return this.students;
    }
    
    public void setStudents(Set students) {
        this.students = students;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="grade")
    public Set getStudents_1() {
        return this.students_1;
    }
    
    public void setStudents_1(Set students_1) {
        this.students_1 = students_1;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="grade")
    public Set getSubjects() {
        return this.subjects;
    }
    
    public void setSubjects(Set subjects) {
        this.subjects = subjects;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="grade")
    public Set getSubjects_1() {
        return this.subjects_1;
    }
    
    public void setSubjects_1(Set subjects_1) {
        this.subjects_1 = subjects_1;
    }




}

