.class final Lcom/youku/laifeng/libcuteroom/utils/LaifengReport$1;
.super Ljava/lang/Object;
.source "LaifengReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;->reportActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 22
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/LaifengReport;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 23
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->getTodayUpdateCount()I

    move-result v0

    .line 24
    .local v0, "count":I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 25
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LaifengReport"

    const-string/jumbo v4, "reportActivityResume start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->REPORT_ACTIVITY_RESUME:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v2, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v1

    .line 27
    .local v1, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SUCCESS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/utils/CommonSettingRecode;->addTodayUpdateCount()V

    .line 29
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LaifengReport"

    const-string/jumbo v4, "reportActivityResume success"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_1
    :goto_0
    monitor-exit v3

    .line 35
    return-void

    .line 31
    .restart local v1    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_2
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LaifengReport"

    const-string/jumbo v4, "reportActivityResume failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    .end local v0    # "count":I
    .end local v1    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
