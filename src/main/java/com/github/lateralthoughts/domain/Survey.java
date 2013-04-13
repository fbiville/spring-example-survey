package com.github.lateralthoughts.domain;

import com.github.lateralthoughts.validation.FirstScreenGroup;
import com.github.lateralthoughts.validation.SecondScreenGroup;
import com.github.lateralthoughts.validation.ThirdScreenGroup;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;
import static javax.persistence.TemporalType.TIMESTAMP;

@Entity
@Table(name = "questions")
public class Survey {
    private Long id;
    @NotNull(groups = {FirstScreenGroup.class})
    @Min(value = 10, groups = {FirstScreenGroup.class})
    private Integer question1;
    @NotBlank(groups = {FirstScreenGroup.class})
    private String question2;
    @NotBlank(groups = {FirstScreenGroup.class})
    private String question3;
    @NotBlank(groups = {FirstScreenGroup.class})
    private String question4;
    @NotBlank(groups = {FirstScreenGroup.class})
    private String question5;
    @NotNull(groups = {FirstScreenGroup.class})
    @Past(groups = {FirstScreenGroup.class})
    @Temporal(TIMESTAMP)
    private Date question6;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question7;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question8;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question9;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question10;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question11;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question12;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question13;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question14;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question15;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question16;
    @NotBlank(groups = {SecondScreenGroup.class})
    private String question17;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question18;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question19;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question20_1;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question20_2;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question21_1;
    @NotBlank(groups = {ThirdScreenGroup.class})
    private String question21_2;

    @Id
    @GeneratedValue(strategy = IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getQuestion1() {
        return question1;
    }

    public void setQuestion1(Integer question1) {
        this.question1 = question1;
    }

    public String getQuestion2() {
        return question2;
    }

    public void setQuestion2(String question2) {
        this.question2 = question2;
    }

    public String getQuestion3() {
        return question3;
    }

    public void setQuestion3(String question3) {
        this.question3 = question3;
    }

    public String getQuestion4() {
        return question4;
    }

    public void setQuestion4(String question4) {
        this.question4 = question4;
    }

    public String getQuestion5() {
        return question5;
    }

    public void setQuestion5(String question5) {
        this.question5 = question5;
    }

    public Date getQuestion6() {
        return question6;
    }

    public void setQuestion6(Date question6) {
        this.question6 = question6;
    }

    public String getQuestion7() {
        return question7;
    }

    public void setQuestion7(String question7) {
        this.question7 = question7;
    }

    public String getQuestion8() {
        return question8;
    }

    public void setQuestion8(String question8) {
        this.question8 = question8;
    }

    public String getQuestion9() {
        return question9;
    }

    public void setQuestion9(String question9) {
        this.question9 = question9;
    }

    public String getQuestion10() {
        return question10;
    }

    public void setQuestion10(String question10) {
        this.question10 = question10;
    }

    public String getQuestion11() {
        return question11;
    }

    public void setQuestion11(String question11) {
        this.question11 = question11;
    }

    public String getQuestion12() {
        return question12;
    }

    public void setQuestion12(String question12) {
        this.question12 = question12;
    }

    public String getQuestion13() {
        return question13;
    }

    public void setQuestion13(String question13) {
        this.question13 = question13;
    }

    public String getQuestion14() {
        return question14;
    }

    public void setQuestion14(String question14) {
        this.question14 = question14;
    }

    public String getQuestion15() {
        return question15;
    }

    public void setQuestion15(String question15) {
        this.question15 = question15;
    }

    public String getQuestion16() {
        return question16;
    }

    public void setQuestion16(String question16) {
        this.question16 = question16;
    }

    public String getQuestion17() {
        return question17;
    }

    public void setQuestion17(String question17) {
        this.question17 = question17;
    }

    public String getQuestion18() {
        return question18;
    }

    public void setQuestion18(String question18) {
        this.question18 = question18;
    }

    public String getQuestion19() {
        return question19;
    }

    public void setQuestion19(String question19) {
        this.question19 = question19;
    }

    public String getQuestion20_1() {
        return question20_1;
    }

    public void setQuestion20_1(String question20_1) {
        this.question20_1 = question20_1;
    }

    public String getQuestion20_2() {
        return question20_2;
    }

    public void setQuestion20_2(String question20_2) {
        this.question20_2 = question20_2;
    }

    public String getQuestion21_1() {
        return question21_1;
    }

    public void setQuestion21_1(String question21_1) {
        this.question21_1 = question21_1;
    }

    public String getQuestion21_2() {
        return question21_2;
    }

    public void setQuestion21_2(String question21_2) {
        this.question21_2 = question21_2;
    }
}
