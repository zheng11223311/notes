.class public final Lcom/alibaba/sdk/android/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

.field private b:Ljava/lang/Integer;

.field private c:Z

.field private d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/callback/InitResultCallback;Ljava/lang/Integer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    const/4 v1, 0x3

    const-string v2, "init_sdk"

    const-string v3, "initTask"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->action(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->begin()Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/task/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/sdk/android/task/b;-><init>(Lcom/alibaba/sdk/android/task/a;Lcom/alibaba/sdk/android/trace/ActionTraceLogger;Lcom/alibaba/sdk/android/callback/InitResultCallback;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    iput-object p2, p0, Lcom/alibaba/sdk/android/task/a;->b:Ljava/lang/Integer;

    invoke-static {}, Lcom/alibaba/sdk/android/task/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/task/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/task/a;)Lcom/alibaba/sdk/android/callback/InitResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    return-object v0
.end method

.method static synthetic a(J)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/alibaba/sdk/android/task/a;->a(ZJLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(JLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/task/a;->a(ZJLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    const/16 v1, 0x271a

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/util/CommonUtils;->onFailure(Lcom/alibaba/sdk/android/callback/FailureCallback;ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/b/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(ZJLjava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_2

    const-string v4, "initSuccess"

    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string v0, "msg"

    invoke-interface {v5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const-class v1, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    if-eqz v0, :cond_1

    const-string v1, "sdk_init_result"

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/ut/UserTrackerService;->sendCustomHit(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "initFailed"

    goto :goto_0
.end method

.method private static c()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_2

    const-string v1, "hotpatch"

    const-string v2, "processName"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/AlibabaSDK;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "hotpatch"

    :cond_3
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private d()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alibaba/sdk/android/b/a;->b()V

    invoke-static {}, Lcom/alibaba/sdk/android/ConfigManager;->getInstance()Lcom/alibaba/sdk/android/ConfigManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/sdk/android/task/a;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/ConfigManager;->init(I)V

    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    invoke-static {}, Lcom/alibaba/sdk/android/util/CommonUtils;->isDebuggable()Z

    move-result v3

    sget-boolean v4, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->init(ZZ)V

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "securityGuardInit"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_0
    const-string v0, "security"

    const-string v3, "com.alibaba.sdk.android.security.SecurityGuardService"

    const-string v4, "com.alibaba.sdk.android.security.impl.SecurityGuardWrapper"

    invoke-static {v0, v3, v4, v9}, Lcom/alibaba/sdk/android/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/ResultCode;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    iget v3, v0, Lcom/alibaba/sdk/android/ResultCode;->code:I

    iget-object v0, v0, Lcom/alibaba/sdk/android/ResultCode;->message:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/alibaba/sdk/android/util/CommonUtils;->onFailure(Lcom/alibaba/sdk/android/callback/FailureCallback;ILjava/lang/String;)V

    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v0, "com.alibaba.app.appkey"

    invoke-static {v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v3, "com.alibaba.app.appkey"

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/util/CommonUtils;->getAndroidManifestMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "com.alibaba.app.appkey"

    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "com.alibaba.app.appsecret"

    invoke-static {v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v3, "com.alibaba.app.appsecret"

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/util/CommonUtils;->getAndroidManifestMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "com.alibaba.app.appsecret"

    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "hotpatch"

    const-string v3, "com.alibaba.sdk.android.hotpatch.HotPatchManager"

    const-string v4, "com.alibaba.sdk.android.hotpatch.impl.HotPatchManagerImpl"

    invoke-static {v0, v3, v4, v9}, Lcom/alibaba/sdk/android/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/ResultCode;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "com.alibaba.sdk.android.hotpatch.HotPatchManager"

    invoke-static {v0}, Lcom/alibaba/sdk/android/util/ReflectionUtils;->loadClassQuietly(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "com.alibaba.sdk.android.hotpatch.HotPatchManager"

    const-string v4, "apply"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "java.lang.String"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v0, v6}, Lcom/alibaba/sdk/android/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const-string v0, "ut"

    const-class v3, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alibaba.sdk.android.ut.impl.AlibabaUserTrackerService"

    const-string v5, "$isv_scope$"

    const-string v6, "true"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/alibaba/sdk/android/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/ResultCode;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const-class v3, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-interface {v0, v3, v9}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    :goto_2
    const-string v3, "appVersion"

    invoke-static {v3}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "app_version"

    invoke-static {v4, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alibaba/sdk/android/ut/UserTrackerService;->updateUserTrackerProperties(Ljava/util/Map;)V

    :cond_6
    sget-boolean v3, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "traceHelperInit"

    invoke-static {v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_7
    sget-object v3, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    const-string v4, "com.alibaba.app.appkey"

    invoke-static {v4}, Lcom/alibaba/sdk/android/AlibabaSDK;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/AlibabaSDK;->getVersion()Lcom/alibaba/sdk/android/Version;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/Version;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v9, v5}, Lcom/alibaba/sdk/android/util/TraceHelper;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "traceHelperInit"

    const-string v4, "kernel"

    const-string v5, "traceHelperInit"

    invoke-static {v5}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v6

    new-array v5, v1, [Ljava/lang/String;

    const-string v8, "success"

    aput-object v8, v5, v2

    invoke-static {v4, v6, v7, v5}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v3, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    sget-object v4, Lcom/alibaba/sdk/android/plugin/b;->a:Lcom/alibaba/sdk/android/plugin/b;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/plugin/b;->a()Lcom/alibaba/sdk/android/ResultCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/ResultCode;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    iget v1, v4, Lcom/alibaba/sdk/android/ResultCode;->code:I

    iget-object v3, v4, Lcom/alibaba/sdk/android/ResultCode;->message:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/alibaba/sdk/android/util/CommonUtils;->onFailure(Lcom/alibaba/sdk/android/callback/FailureCallback;ILjava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    const-string v0, "kernel"

    const-string v3, "Fail to initialize the UT user tracker service, will fallback to the default one"

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    aput-object v5, v4, v2

    new-instance v5, Lcom/alibaba/sdk/android/task/c;

    invoke-direct {v5, p0}, Lcom/alibaba/sdk/android/task/c;-><init>(Lcom/alibaba/sdk/android/task/a;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    aput-object v5, v4, v2

    const-string v5, "$isv_scope$"

    const-string v6, "true"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/alibaba/sdk/android/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    goto/16 :goto_2

    :cond_a
    const-string v4, "plugin.vendor"

    const-string v5, "kernel"

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    invoke-virtual {v5, v0}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->setUserTrackerService(Lcom/alibaba/sdk/android/ut/UserTrackerService;)V

    sget-object v0, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    invoke-static {}, Lcom/alibaba/sdk/android/util/CommonUtils;->isDebuggable()Z

    move-result v5

    sget-boolean v6, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->init(ZZ)V

    new-array v0, v1, [Ljava/lang/Class;

    const-class v5, Lcom/alibaba/sdk/android/trace/TraceLoggerService;

    aput-object v5, v0, v2

    sget-object v5, Lcom/alibaba/sdk/android/trace/TraceLoggerManager;->INSTANCE:Lcom/alibaba/sdk/android/trace/TraceLoggerManager;

    invoke-interface {v3, v0, v5, v4}, Lcom/alibaba/sdk/android/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v0, v1, [Ljava/lang/Class;

    const-class v5, Lcom/alibaba/sdk/android/executor/ExecutorService;

    aput-object v5, v0, v2

    sget-object v5, Lcom/alibaba/sdk/android/b/a;->f:Lcom/alibaba/sdk/android/executor/ExecutorService;

    invoke-interface {v3, v0, v5, v4}, Lcom/alibaba/sdk/android/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "syncRun"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/task/a;->c:Z

    if-eqz v0, :cond_d

    move v0, v1

    :cond_c
    sget-boolean v3, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "syncRun"

    const-string v4, "kernel"

    const-string v5, "syncRun"

    invoke-static {v5}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v6

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "success"

    aput-object v5, v1, v2

    invoke-static {v4, v6, v7, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/alibaba/sdk/android/plugin/b;->a:Lcom/alibaba/sdk/android/plugin/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    invoke-static {v0}, Lcom/alibaba/sdk/android/plugin/b;->a(Lcom/alibaba/sdk/android/callback/InitResultCallback;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private e()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "asyncRun"

    invoke-static {v2}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v2, "com.alibaba.sdk.android.hotpatch.HotPatchManager"

    invoke-static {v2}, Lcom/alibaba/sdk/android/util/ReflectionUtils;->loadClassQuietly(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "com.alibaba.sdk.android.hotpatch.HotPatchManager"

    const-string v4, "apply"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "java.lang.String"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v2, v6}, Lcom/alibaba/sdk/android/util/ReflectionUtils;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/sdk/android/task/a;->c:Z

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    sget-boolean v2, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "asyncRun"

    const-string v3, "kernel"

    const-string v4, "asyncRun"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "failure"

    aput-object v6, v1, v0

    invoke-static {v3, v4, v5, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v0

    :cond_2
    sget-object v2, Lcom/alibaba/sdk/android/plugin/b;->a:Lcom/alibaba/sdk/android/plugin/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/task/a;->a:Lcom/alibaba/sdk/android/callback/InitResultCallback;

    invoke-static {v2}, Lcom/alibaba/sdk/android/plugin/b;->b(Lcom/alibaba/sdk/android/callback/InitResultCallback;)Z

    move-result v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/alibaba/sdk/android/b/a;->f:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v3, Lcom/alibaba/sdk/android/task/d;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/android/task/d;-><init>(Lcom/alibaba/sdk/android/task/a;)V

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postUITask(Ljava/lang/Runnable;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alibaba/sdk/android/b/a;->b:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "asyncRun"

    const-string v3, "kernel"

    const-string v4, "asyncRun"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "success"

    aput-object v7, v6, v0

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/alibaba/sdk/android/b/a;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/task/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/sdk/android/b/a;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "kernel"

    const-string v2, "fail to sync start"

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/task/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "kernel"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/b/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/task/a;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "kernel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/task/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v0, Lcom/alibaba/sdk/android/b/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/task/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v1, Lcom/alibaba/sdk/android/b/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
