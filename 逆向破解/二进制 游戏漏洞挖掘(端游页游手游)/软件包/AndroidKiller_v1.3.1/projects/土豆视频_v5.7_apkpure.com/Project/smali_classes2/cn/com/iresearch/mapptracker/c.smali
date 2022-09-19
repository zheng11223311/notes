.class final Lcn/com/iresearch/mapptracker/c;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    :try_start_0
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V

    const-wide/16 v6, 0x0

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->c(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "open_count"

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v4, 0x1

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "open_count"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "MAT_SESSION"

    const-string v3, "\u7f51\u7edc\u672a\u6253\u5f00\uff01"

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MAT_SESSION"

    const-string v4, "\u6570\u636e\u53d1\u9001\u5931\u8d25\uff0c\u53d1\u751f\u5f02\u5e38"

    invoke-static {v3, v4}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v2

    const-class v3, Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/a;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v14, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v14

    if-nez v2, :cond_3

    const-string v2, "MAT_SESSION"

    const-string v3, "Session\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    :goto_2
    int-to-long v2, v8

    cmp-long v2, v2, v14

    if-ltz v2, :cond_4

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v2

    const-class v3, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/a;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_7

    const-string v2, "event_list"

    invoke-virtual {v9, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/util/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "open_count"

    invoke-virtual {v9, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "page_count"

    invoke-virtual {v9, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "run_time"

    invoke-virtual {v9, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "page_list"

    invoke-virtual {v9, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lat"

    const-string v3, ""

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lng"

    invoke-static {}, Lcn/com/iresearch/mapptracker/util/a;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "1"

    :goto_4
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mapptracker/dao/b;->f()I

    move-result v4

    if-ne v3, v4, :cond_b

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v2, "MAT_SESSION"

    const-string v3, "\u5f53\u524d\u53d1\u9001\u6a21\u5f0f\u4e3a\u53ea\u5728wifi\u4e0b\u53d1\u9001\uff0c\u5f53\u524d\u7f51\u7edcwifi\u4e0d\u53ef\u7528\uff0c\u6545\u53d1\u9001\u53d6\u6d88\uff01"

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v10

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "open_count"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->getDuration()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v3, v18, v16

    if-eqz v3, :cond_6

    add-long v6, v6, v16

    const-wide/16 v16, 0x0

    iget-wide v0, v2, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->inapp:J

    move-wide/from16 v18, v0

    cmp-long v3, v16, v18

    if-nez v3, :cond_5

    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    :cond_5
    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/dao/SessionInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v13, v8, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    move-wide v2, v4

    move-wide v4, v6

    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-wide v6, v4

    move-wide v4, v2

    goto/16 :goto_2

    :cond_7
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    iget-boolean v14, v2, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    if-nez v14, :cond_9

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/dao/EventInfo;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEvent_params()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz v15, :cond_8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_8
    const-string v15, "event_params"

    invoke-virtual {v14, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v3, v14}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_a
    const-string v2, "0"

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->b(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/iresearch/mapptracker/dao/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcn/com/iresearch/mapptracker/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/dao/MATMessage;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "send all data"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/MATMessage;->isFlag()Z

    move-result v3

    if-eqz v3, :cond_e

    sget v2, Lcn/com/iresearch/mapptracker/IRMonitor;->d:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcn/com/iresearch/mapptracker/IRMonitor;->d:I

    const-string v2, "MAT_SESSION"

    const-string v3, "send data success!"

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MAT_SESSION"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send data num:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcn/com/iresearch/mapptracker/IRMonitor;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->g(Lcn/com/iresearch/mapptracker/IRMonitor;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sPage_Count"

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->h(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->a(Lcn/com/iresearch/mapptracker/IRMonitor;I)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "event_Count"

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v4

    invoke-static {v4}, Lcn/com/iresearch/mapptracker/IRMonitor;->i(Lcn/com/iresearch/mapptracker/IRMonitor;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "open_count"

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v2

    const-class v3, Lcn/com/iresearch/mapptracker/dao/SessionInfo;

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->f(Lcn/com/iresearch/mapptracker/IRMonitor;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v2

    const-class v3, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/Class;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->j(Lcn/com/iresearch/mapptracker/IRMonitor;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->j(Lcn/com/iresearch/mapptracker/IRMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->j(Lcn/com/iresearch/mapptracker/IRMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v2

    invoke-static {v2}, Lcn/com/iresearch/mapptracker/IRMonitor;->j(Lcn/com/iresearch/mapptracker/IRMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_1

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mapptracker/dao/EventInfo;

    iget-boolean v5, v2, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    if-eqz v5, :cond_c

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEvent_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MAT_EVENT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u672a\u7ed3\u675f\u7684\u4e8b\u4ef6:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/com/iresearch/mapptracker/dao/EventInfo;->getEvent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/com/iresearch/mapptracker/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    invoke-static {}, Lcn/com/iresearch/mapptracker/IRMonitor;->a()Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v3

    invoke-static {v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->e(Lcn/com/iresearch/mapptracker/IRMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "open_count"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "MAT_SESSION"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u53d1\u9001\u5931\u8d25\uff0copen_count++ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcn/com/iresearch/mapptracker/dao/MATMessage;->msg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/com/iresearch/mapptracker/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
