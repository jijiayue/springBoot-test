package demo.config.activiti;

import org.activiti.engine.ProcessEngineConfiguration;
import org.junit.Test;

/**
 * Created by sunwei0427 on 2018/1/23.
 */
public class CreateActivitiTableUtil {
    /**
     * 生成Activiti需要的25表
     */
    @Test
    public void testCreateTable(){
        ProcessEngineConfiguration pec=ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration(); // 获取流程引擎配置
        pec.setJdbcDriver("com.mysql.jdbc.Driver"); // 配置驱动
        pec.setJdbcUrl("jdbc:mysql://localhost:3306/test"); // 配置连接地址
        pec.setJdbcUsername("root"); // 用户名
        pec.setJdbcPassword("123456"); // 密码

        /**
         * 配置模式  true 自动创建和更新表
         */
        pec.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);

        // 获取流程引擎对象
        pec.buildProcessEngine();
    }
}
