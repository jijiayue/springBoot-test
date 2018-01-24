package com.jjyy;

import com.alibaba.fastjson.JSON;
import org.activiti.engine.*;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.TaskFormData;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.beans.IntrospectionException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by sunwei0427 on 2018/1/24.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@SpringBootApplication
public class activitiTest {

    @Autowired
    RuntimeService runtimeService;
    @Autowired
    RepositoryService repositoryService;
    @Autowired
    TaskService taskService;
    @Autowired
    ProcessEngine processEngine;
    @Autowired
    FormService formService;


    @Test
    public void contextLoads() throws Exception {
        // System.out.print("1111111111");
          createDeployment();//1发布流程
//        startProcessInstanceByKey();//2发起一个流程实例
//        createTaskQueryManagement();//3 Management查询待办任务
//        completeTaskManagement();//4 Management处理某个任务
//        createTaskQueryKermit();// 5 Kermit 查询待办任务
//        completeTaskKermit(); //6 Kermit处理任务
    }
    /**
     * 1发布流程.
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     */
    public void createDeployment(){
        RepositoryService repositoryService = processEngine.getRepositoryService();
        repositoryService.createDeployment()
                .addClasspathResource("processes/SubProcessTwoMethod.bpmn")
                .deploy();

        System.out.println("Number of process definitions==========" + repositoryService.createProcessDefinitionQuery().count());
    }


    /**
     * 2 Kermit发起一个流程实例
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     */
    public void startProcessInstanceByKey(){
        Map<String, Object> variables = new HashMap<String, Object>();
        variables.put("employeeName", "Kermit");
        variables.put("numberOfDays", new Integer(4));
        variables.put("vacationMotivation", "I'm really tired!");

        RuntimeService runtimeService = processEngine.getRuntimeService();
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("vacationRequest", variables);

//        System.out.println("processInstance======="+JSONObject.toJSONString(processInstance));
        // Verify that we started a new process instance
        System.out.println("Number of process instances: " + runtimeService.createProcessInstanceQuery().count());
    }

    /**
     * 3 management 查询待办任务
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     * @throws IntrospectionException
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    public void  createTaskQueryManagement() throws Exception{
        //management为handleRequest节点配置的“activiti:candidateGroups”
        List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("management").list();
        for (Task task : tasks) {
            System.out.println("Task available:===== " + task.getId()+","+task.getName()+","+task.getDescription()+","+task.getOwner());
        }
    }

    /**
     * 4 management处理任务.
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     */
    public void completeTaskManagement(){
        List<Task> tasks = taskService.createTaskQuery().taskCandidateGroup("management").list();
        for (Task task : tasks) {
            System.out.println("Task available:===== " + task.getId()+","+task.getName()+","+task.getDescription());
            Map<String, Object> taskVariables = new HashMap<String, Object>();
            taskVariables.put("vacationApproved", "false");
            taskVariables.put("managerMotivation", "We have a tight deadline!");
            taskService.complete(task.getId(), taskVariables);
        }
    }

    /**
     * 5 Kermit 查询待办任务
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     * @throws IntrospectionException
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    public void  createTaskQueryKermit() throws Exception{
        List<Task> tasks = taskService.createTaskQuery().taskCandidateOrAssigned("Kermit").list();
        for (Task task : tasks) {
            System.out.println("Task available:===== " + task.getId()+","+task.getName()+","+task.getDescription()+","+task.getOwner());

            TaskFormData taskFormdata = formService.getTaskFormData(task.getId());
            List<FormProperty> formPropertys = taskFormdata.getFormProperties();
            for (FormProperty formProperty : formPropertys) {
                System.out.println("formProperty=========="+ JSON.toJSONString(formProperty));
            }
        }
    }

    /**
     * 6 Kermit 处理任务.
     *
     *
     * Created by Bryce Yao<sysyaoyulong@gmail.com> on Jun 8, 2017.
     */
    public void completeTaskKermit(){
        List<Task> tasks = taskService.createTaskQuery().taskCandidateOrAssigned("Kermit").list();

        for (Task task : tasks) {
            System.out.println("Task available:===== " + task.getId()+","+task.getName()+","+task.getDescription());
            Map<String, Object> taskVariables = new HashMap<String, Object>();
            taskVariables.put("vacationApproved", "false");
            taskVariables.put("managerMotivation", "We have a tight deadline!");
            taskService.complete(task.getId(), taskVariables);
        }
    }

}
