package demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by jijiayue on 2017/11/6.
 * 通过@Configuration注解，让Spring来加载该类配置。再通过@EnableSwagger2注解来启用Swagger2。
 *
 */
@Configuration
@EnableSwagger2
public class Swagger2 extends WebMvcConfigurerAdapter {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.didispace.web"))
                .paths(PathSelectors.any())
                .build();
    }

    //可以注入多个doket，也就是多个版本的api，可以在看到有三个版本groupName不能是重复的，v1和v2是ant风格匹配，配置文件
//    @Bean
//    public Docket api() {
//        //可以添加多个header或参数
//        ParameterBuilder aParameterBuilder = new ParameterBuilder();
//        aParameterBuilder
//                .parameterType("header") //参数类型支持header, cookie, body, query etc
//                .name("token") //参数名
//                .defaultValue("token") //默认值
//                .description("header中token字段测试")
//                .modelRef(new ModelRef("string"))//指定参数值的类型
//                .required(false).build(); //非必需，这里是全局配置，然而在登陆的时候是不用验证的
//        List<Parameter> aParameters = new ArrayList<Parameter>();
//        aParameters.add(aParameterBuilder.build());
//        return new Docket(DocumentationType.SWAGGER_2).groupName("v1").select().apis(RequestHandlerSelectors.any())
//                .paths(PathSelectors.ant("/api/v1/**")).build().apiInfo(apiInfo1()).globalOperationParameters(aParameters);
//    }


    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Spring Boot中使用Swagger2构建RESTful APIs")
                .description("更多Spring Boot相关文章请关注：http://blog.didispace.com/")
                .termsOfServiceUrl("http://blog.didispace.com/")
                .contact("程序猿DD")
                .version("1.0")
                .build();
    }

}
