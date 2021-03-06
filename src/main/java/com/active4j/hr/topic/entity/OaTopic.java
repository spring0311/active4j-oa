package com.active4j.hr.topic.entity;

import com.active4j.hr.common.entity.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;


import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * <p>
 * 提议实体类
 * </p>
 *
 * @author weizihao
 * @since 2020-12-28
 */
@Data
@TableName("oa_topic")
public class OaTopic {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "议题ID")
    @TableId(value = "ID", type = IdType.INPUT)
    private String id;

    @ApiModelProperty(value = "0提交审核 1一级pass 2二级pass 3综合办pass 4全部pass 5驳回 ")
    @TableField("STATE_ID")
    private Integer stateId;

    @ApiModelProperty(value = "议题名称")
    @TableField("TOPIC_NAME")
    private String topicName;

    @ApiModelProperty(value = "议题摘要")
    @TableField("TOPIC_CONTENT")
    private String topicContent;

    @ApiModelProperty(value = "备注")
    @TableField("TOPIC_REMARK")
    private String topicRemark;

    @ApiModelProperty(value = "议题创建人")
    @TableField("CREATE_USER_ID")
    private String createUserId;

    @ApiModelProperty(value = "科室ID")
    @TableField("DEPT_ID")
    private String deptId;

    @ApiModelProperty(value = "科室负责人 提议领导")
    @TableField("DEPT_LEADER_ID")
    private String deptLeaderId;

    @ApiModelProperty(value = "汇报人ID")
    @TableField("REPORT_ID")
    private String reportId;

    @TableField("DEPT_LEADER")
    private String deptLeader;

    @ApiModelProperty(value = "主管领导ID")
    @TableField("LEADER_ID")
    private String leaderId;

    @ApiModelProperty(value = "综合办ID")
    @TableField("GENERAL_OFFICE")
    private String generalOffice;

    @ApiModelProperty(value = "财务科")
    @TableField("FINANCE_OFFICE")
    private String financeOffice;

    @ApiModelProperty(value = "纪委")
    @TableField("DISCIPLINE_OFFICE")
    private String disciplineOffice;

    //书记会
    @TableField(exist = false)
    private Integer isSecretary = 1;

    @ApiModelProperty(value = "是否工委会  0不上 1上")
    @TableField("IS_WORKING_COMMITTEE")
    private Integer isWorkingCommittee;

    @ApiModelProperty(value = "是否主任会 0否1是")
    @TableField("IS_DIRECTOR")
    private Integer isDirector;

    @ApiModelProperty(value = "科室负责人意见")
    @TableField("OPINION_DEPT_LEADER")
    private String opinionDeptLeader;

    @ApiModelProperty(value = "主管领导意见")
    @TableField("OPINION_LEADER")
    private String opinionLeader;

    @ApiModelProperty(value = "综合办意见")
    @TableField("OPINION_GENERAL_OFFICE")
    private String opinionGeneralOffice;

    @ApiModelProperty(value = "财务科意见")
    @TableField("OPINION_FINANCE_OFFICE")
    private String opinionFinanceOffice;

    @ApiModelProperty(value = "纪委意见")
    @TableField("OPINION_DISCIPLINE_OFFICE")
    private String opinionDisciplineOffice;

    @ApiModelProperty(value = "0未审核 1通过 2不通过 科室负责人")
    @TableField("IS_PASS_ONE")
    private Integer isPassOne;

    @ApiModelProperty(value = "0未审核 1通过 2不通过 主管领导")
    @TableField("IS_PASS_TWO")
    private Integer isPassTwo;

    @ApiModelProperty(value = "0未审核 1通过 2不通过 综合办")
    @TableField("IS_PASS_THREE")
    private Integer isPassThree;

    @ApiModelProperty(value = "0未审核 1通过 2不通过 财务")
    @TableField("IS_PASS_FOUR")
    private Integer isPassFour;

    @ApiModelProperty(value = "0未审核 1通过 2不通过 纪委")
    @TableField("IS_PASS_FIVE")
    private Integer isPassFive;

    @TableField("CREAT_TIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy年MM月dd日HH:mm", timezone = "GMT+8")
    private Date creatTime;


}
