.class public Lcom/alipay/mobile/command/engine/TaskTriggerService;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/manager/CommandManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    invoke-static {v0, v2, v2}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->isHasTask()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    const-class v5, Lcom/alipay/mobile/command/engine/TaskTriggerService;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    if-eq v2, p0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchConnectedNetType()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->e()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f53\u524d\u4efb\u52a1\u7c7b\u578b\u7cfb\u7edf\u4e2d\u6ca1\u6709\u914d\u7f6e\u5bf9\u5e94\u7684\u5904\u7406\u5668!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v5

    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "system_time_key"

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getSysSynInterval()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/alipay/mobile/command/util/CommandUtil;->isNeedDoDurTimeTask(Landroid/content/SharedPreferences;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "trigger:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string v4, ",syn System resource(command\task)!"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isSysInitial()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "trigger:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string v4, ",no tasks to be done"

    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_4
    :try_start_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getIntevalTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_6

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getIntevalTime()J

    move-result-wide v10

    rem-long v10, v8, v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_6

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "startTime:"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, ",spendTime:"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, ",i each:"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    aput-object v2, v4, v10

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, v4, v10, v11, v0}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getMinuteTiming()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getMinuteTiming()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-ltz v4, :cond_5

    const-wide/16 v12, 0xa

    cmp-long v4, v10, v12

    if-gtz v4, :cond_5

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "startTime:"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, ",spendTime:"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, ", p each:"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    aput-object v2, v4, v10

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, v4, v10, v11, v0}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isSysInitial()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->c()V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->d()V

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isSysInitial()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "start task(Recovery)"

    aput-object v4, v2, v3

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "system_time_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->c()V

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isSysInitial()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :pswitch_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    if-lez v2, :cond_1

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_1

    aget-object v6, v3, v2

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v6, v9, v10}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    :try_start_4
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "exe Triger_biz error."

    aput-object v4, v2, v3

    goto/16 :goto_0

    :cond_b
    const-string v2, "manager"

    const-string v3, "do push failed,there is no push data\u3002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isSysInitial()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    move v3, v2

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u672a\u627e\u5230\u4efb\u52a1\u5217\u8868"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :cond_e
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getNotifyEventFlag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "notify trigger,flag:"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getNotifyEventFlag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, v4, v7, v8, v0}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    const/4 v2, 0x1

    move v4, v2

    goto :goto_4

    :cond_10
    const-string v2, "manager"

    const-string v3, "do notify failed,there is no notifyFlag\u3002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->d()V

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isCloseCmdCenter()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_13

    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_12

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/command/model/TaskMetaWrap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, v3, v4, v6, v0}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_6
    const-string/jumbo v3, "util"

    const-string v4, "api\u6267\u884c\u5f02\u5e38"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_12
    :try_start_7
    new-instance v6, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v6}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/command/trigger/PublicApiInvoke;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/alipay/mobile/command/util/JsonUtil;->fill(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    :try_start_8
    const-string v2, "manager"

    const-string/jumbo v3, "\u6267\u884cAPI\u670d\u52a1\u672a\u627e\u5230\u5bf9\u5e94\u7684\u4e1a\u52a1\u6570\u636e."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u7cfb\u7edf\u5f00\u5173\u5173\u95ed\uff0c\u4efb\u52a1\u6267\u884c\u7ee7\u7eed\u6253\u70b9"

    aput-object v4, v2, v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "\u672a\u627e\u5230\u4efb\u52a1\u5217\u8868"

    aput-object v1, v0, v4

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getCronExpress()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4, v4, p1}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->isNetMatchSyn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "start syn Command!"

    aput-object v1, v0, v2

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "start syn Task!"

    aput-object v1, v0, v2

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->c()V

    :cond_0
    return-void
.end method

.method private static c()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "start recovery Task!"

    aput-object v1, v0, v5

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->RUNTIME_TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Recovery Task Op finish"

    aput-object v1, v0, v5

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "recovery Task-"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const/4 v3, 0x2

    const-string v4, "!"

    aput-object v4, v2, v3

    sget-object v2, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->R:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, v2, v5}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static d()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchConnectedNetType()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    :try_start_1
    sput-object v3, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u7f51\u7edc\u53d8\u5316\u7684\u4fa6\u542c\u5668\u5ffd\u7565\u672c\u6b21\u7684\u4efb\u52a1\u6062\u590d,\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528."

    aput-object v5, v0, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "do NetChange triger  Error!"

    aput-object v5, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    throw v0

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->values()[Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ACTION_POWER_CONNECTED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->API:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_ADDED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_REMOVED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PUSH:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->USER_PRESENT:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method
