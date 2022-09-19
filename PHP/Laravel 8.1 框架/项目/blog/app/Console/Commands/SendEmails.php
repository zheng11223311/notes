<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class SendEmails extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'send:email{user} {--a}';    //相当 route:list, {user} 中user 为参数

    /**
     * The console command description.
     *
     * @var string
     */

    protected $description = '发送一个邮件';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // $userId=$this->argument('user');	//获取传递过来的参数
        $option = $this->options('a');    //获取选项参数
        // dd($userId);
        // dd($option);

        // 询问用户
        // $name = $this->ask('你叫什么?');
        // dd($name);

        // $secr=$this->secret('隐藏用户的输入内容,更加安全');
        // dd($secr);

        // $re=$this->confirm('Do you wish to continue?');
        // dd($re);

        // $name = $this->info('不同的输入类型');
        // $name = $this->error('不同的输入类型');
        // $name = $this->line('不同的输入类型');

        // $headers = ['Name', 'Email'];

        // $users = [
        //     ['ll', 'aa@qq.com'],
        //     ['aa', 'ss@qq.com'],
        // ];

        // $this->table($headers, $users);


        $users = range(1,100);

        $bar = $this->output->createProgressBar(count($users));

        $bar->start();

        foreach ($users as $user) {
            sleep(1); //1s
            $bar->advance();
        }

        $bar->finish();

        return 0;
    }
}
