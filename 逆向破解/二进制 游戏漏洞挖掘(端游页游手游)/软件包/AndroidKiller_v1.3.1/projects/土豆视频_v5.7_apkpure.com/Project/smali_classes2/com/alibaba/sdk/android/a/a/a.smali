.class public final Lcom/alibaba/sdk/android/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/ResultCode;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/ResultCode;"
        }
    .end annotation

    const/16 v10, 0x271a

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v1, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BeanLoader"

    invoke-static {p1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v2

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "success"

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_9

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :try_start_1
    const-string v0, "INSTANCE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_2
    sget-object v0, Lcom/alibaba/sdk/android/app/a;->a:Lcom/alibaba/sdk/android/app/a;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/app/a;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/app/AppContext;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    :try_start_3
    const-string v0, "init"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/alibaba/sdk/android/app/AppContext;

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ResultCode;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_5

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {v4, v0, v1, p3}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    :cond_3
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "BeanLoader"

    invoke-static {p1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "success"

    aput-object v5, v1, v4

    invoke-static {v0, v2, v3, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/ResultCode;->isSuccess()Z
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BeanLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available, the error message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/ResultCode;->SUCCESS:Lcom/alibaba/sdk/android/ResultCode;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v2, v8

    invoke-static {v10, v2}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v0

    const-string v2, "BeanLoader"

    invoke-static {v2, v0, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    sget-boolean v1, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "BeanLoader"

    invoke-static {p1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v2

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "failure"

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v1, v0, Lcom/alibaba/sdk/android/message/Message;->code:I

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_3
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v10, v1}, Lcom/alibaba/sdk/android/message/MessageUtils;->createMessage(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/message/Message;

    move-result-object v1

    const-string v2, "BeanLoader"

    invoke-static {v2, v1, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->log(Ljava/lang/String;Lcom/alibaba/sdk/android/message/Message;Ljava/lang/Throwable;)V

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "BeanLoader"

    invoke-static {p1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v2

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "failure"

    aput-object v5, v4, v8

    invoke-static {v0, v2, v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, v1, Lcom/alibaba/sdk/android/message/Message;->code:I

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/alibaba/sdk/android/message/Message;->message:Ljava/lang/String;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lcom/alibaba/sdk/android/ResultCode;->create(I[Ljava/lang/Object;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :cond_9
    move-object v2, v0

    goto/16 :goto_1
.end method
