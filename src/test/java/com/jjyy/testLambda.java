package com.jjyy;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Arrays;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * Created by sunwei0427 on 2018/2/1.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class testLambda {

    /**
     * 循环  聚合函数？ reduce  SQL中类似 sum()、avg() 或者 count() 的聚集函数
     */
    @Test
    public void testLambdaA(){
//        List<Integer> costBeforeTax = Arrays.asList(100, 200, 300, 400, 500);
//        for (Integer cost : costBeforeTax) {
//            double price = cost + .12*cost;
//            System.out.println(price);
//        }

// 使用lambda表达式
        List<Integer> costBeforeTax = Arrays.asList(100, 200, 300, 400, 500);
        costBeforeTax.stream().map((cost) -> cost + .12 * cost).forEach(System.out::println);


        double bill = costBeforeTax.stream().map((cost) -> cost + .12*cost).reduce((sum, cost) -> sum + cost).get();
        System.out.println("Total : " + bill);

    }

    /**
     * 过滤
     */
    @Test
    public void testLambdaB(){
        List<String> languages = Arrays.asList("Java", "Scala", "C++", "Haskell", "Lisp");
    // 甚至可以用and()、or()和xor()逻辑函数来合并Predicate，
    // 例如要找到所有以J开始，长度为四个字母的名字，你可以合并两个Predicate并传入
            Predicate<String> startsWithJ = (n) -> n.startsWith("J");
            Predicate<String> fourLetterLong = (n) -> n.length() == 4;
            languages.stream().filter(startsWithJ.and(fourLetterLong)).forEach((n) -> System.out.println("nName, which starts with 'J' and four letter long is : " + n));

        // 创建一个字符串列表，每个字符串长度大于3
        List<String> filtered = languages.stream().filter(x -> x.length()> 3).collect(Collectors.toList());
        System.out.printf("Original List : %s, filtered list : %s %n", languages, filtered);
    }

    /**
     * 操作元素
     */
    @Test
    public void testLambdaC(){
// 将字符串换成大写并用逗号链接起来
        List<String> G7 = Arrays.asList("USA", "Japan", "France", "Germany", "Italy", "U.K.","Canada");
        String G7Countries = G7.stream().map(x -> x.toUpperCase()).collect(Collectors.joining(", "));
        System.out.println(G7Countries);
    }

    /**
     * 去重
     */
    @Test
    public void testLambdaD(){
// 用所有不同的数字创建一个正方形列表
        List<Integer> numbers = Arrays.asList(9, 10, 3, 4, 7, 3, 4);
        List<Integer> distinct = numbers.stream().map( i -> i*i).distinct().collect(Collectors.toList());
        System.out.printf("Original List : %s,  Square Without duplicates : %s %n", numbers, distinct);
    }

    /**
     * 计算
     * IntStream、LongStream 和 DoubleStream 等流的类中，有个非常有用的方法叫做 summaryStatistics() 。
     * 可以返回 IntSummaryStatistics、LongSummaryStatistics 或者 DoubleSummaryStatistic s，
     * 描述流中元素的各种摘要数据。在本例中，我们用这个方法来计算列表的最大值和最小值。
     * 它也有 getSum() 和 getAverage() 方法来获得列表的所有元素的总和及平均
     */
    @Test
    public void testLambdaE(){//获取数字的个数、最小值、最大值、总和以及平均值
        List<Integer> primes = Arrays.asList(2, 3, 5, 7, 11, 13, 17, 19, 23, 29);
        IntSummaryStatistics stats = primes.stream().mapToInt((x) -> x).summaryStatistics();
        System.out.println("Highest prime number in List : " + stats.getMax());
        System.out.println("Lowest prime number in List : " + stats.getMin());
        System.out.println("Sum of all prime numbers : " + stats.getSum());
        System.out.println("Average of all prime numbers : " + stats.getAverage());
    }

    /**
     * 线程
     */
    @Test
    public void testLambdaF(){
/// Java 8之前：
        new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("Before Java8, too much code for too little to do");
            }
        }).start();

//Java 8方式：
        new Thread( () -> System.out.println("In Java8, Lambda expression rocks !!") ).start();
        // 例如，如果你的方法不对参数进行修改、重写，只是在控制台打印点东西的话，那么可以这样写
        // () -> System.out.println("Hello Lambda Expressions");
    }
    /**
     * 线程
     */
    @Test
    public void testLambdaG(){
// Java 8之前：
        JButton show =  new JButton("Show");
        show.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println("Event handling without lambda expression is boring");
            }
        });

// Java 8方式：
        show.addActionListener((e) -> {
            System.out.println("Light, Camera, Action !! Lambda expressions Rocks");
        });
    }
}
