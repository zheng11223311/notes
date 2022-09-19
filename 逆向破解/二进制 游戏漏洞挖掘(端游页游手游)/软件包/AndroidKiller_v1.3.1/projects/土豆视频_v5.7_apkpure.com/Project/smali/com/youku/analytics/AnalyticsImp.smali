.class public Lcom/youku/analytics/AnalyticsImp;
.super Lcom/youku/analytics/AnalyticsBase;
.source "AnalyticsImp.java"

# interfaces
.implements Lcom/youku/analytics/common/IThrowableHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;,
        Lcom/youku/analytics/AnalyticsImp$AddThread;,
        Lcom/youku/analytics/AnalyticsImp$HandleThread;,
        Lcom/youku/analytics/AnalyticsImp$PauseHandler;,
        Lcom/youku/analytics/AnalyticsImp$TimingThread;
    }
.end annotation


# static fields
.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field private static final FLAG_APPSTART:I = 0x0

.field private static final FLAG_RESUME:I = 0x1

.field public static final LAST_INTERTVAL_REPORT_TIME:Ljava/lang/String; = "last_interval_report_time"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final START_TIME:Ljava/lang/String; = "start_time"


# instance fields
.field private isEndSession:Z

.field private isFirstLanch:Z

.field private mActionHandler:Landroid/os/Handler;

.field private mClassName:Ljava/lang/String;

.field mCurrentPlaySource:Ljava/lang/String;

.field private mExceptionHandler:Lcom/youku/analytics/AnalyticsExceptionHandler;

.field mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field private mLock:[B

.field private mPage:Ljava/lang/String;

.field mPageSource:Ljava/lang/String;

.field private mPlaySession:Ljava/lang/String;

.field private mSession:Ljava/lang/String;

.field private mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/youku/analytics/AnalyticsBase;-><init>()V

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mCurrentPlaySource:Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/youku/analytics/AnalyticsExceptionHandler;

    invoke-direct {v1}, Lcom/youku/analytics/AnalyticsExceptionHandler;-><init>()V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mExceptionHandler:Lcom/youku/analytics/AnalyticsExceptionHandler;

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/analytics/AnalyticsImp;->isEndSession:Z

    .line 48
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    .line 493
    new-instance v1, Lcom/youku/analytics/AnalyticsImp$1;

    invoke-direct {v1, p0}, Lcom/youku/analytics/AnalyticsImp$1;-><init>(Lcom/youku/analytics/AnalyticsImp;)V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnalyticsAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "localHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/youku/analytics/AnalyticsImp;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/youku/analytics/AnalyticsImp;->isFirstLanch:Z

    return v0
.end method

.method static synthetic access$1(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/youku/analytics/AnalyticsImp;->setUncaughtHandler(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/youku/analytics/AnalyticsImp;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/youku/analytics/AnalyticsImp;->isFirstLanch:Z

    return-void
.end method

.method static synthetic access$3(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 245
    invoke-direct/range {p0 .. p5}, Lcom/youku/analytics/AnalyticsImp;->processAppStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$4(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 188
    invoke-direct/range {p0 .. p5}, Lcom/youku/analytics/AnalyticsImp;->processResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$5(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .prologue
    .line 262
    invoke-direct/range {p0 .. p6}, Lcom/youku/analytics/AnalyticsImp;->processPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/youku/analytics/AnalyticsImp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/youku/analytics/AnalyticsImp;)Lcom/youku/analytics/AnalyticsImp$TimingThread;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    return-object v0
.end method

.method private extendSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;J)Ljava/lang/String;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "preferences"    # Landroid/content/SharedPreferences;
    .param p5, "time"    # J

    .prologue
    .line 214
    const-string v4, "end_time"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 215
    .local v10, "endtime":J
    const-string/jumbo v4, "session_id"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "session":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v4, v6, v10, v11}, Lcom/youku/analytics/DataCollection;->setSession(Ljava/lang/String;J)V

    .line 217
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 218
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "start_time"

    move-wide/from16 v0, p5

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    const-string v4, "end_time"

    const-wide/16 v8, -0x1

    invoke-interface {v2, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    new-instance v3, Lcom/youku/analytics/data/ActionBaseData;

    .line 222
    const-string v5, "A1005"

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p5

    .line 221
    invoke-direct/range {v3 .. v9}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 223
    .local v3, "action":Lcom/youku/analytics/data/ActionBaseData;
    new-instance v14, Lcom/youku/analytics/data/PageActionData;

    move-object/from16 v0, p3

    invoke-direct {v14, v3, v0}, Lcom/youku/analytics/data/PageActionData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;)V

    .line 224
    .local v14, "pageData":Lcom/youku/analytics/data/PageActionData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    invoke-virtual {v14, v4}, Lcom/youku/analytics/data/PageActionData;->setPageSource(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v4, v14}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    if-nez v4, :cond_0

    .line 227
    new-instance v4, Lcom/youku/analytics/AnalyticsImp$TimingThread;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/youku/analytics/AnalyticsImp$TimingThread;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    .line 229
    const-string v4, "last_interval_report_time"

    const-wide/16 v8, 0x0

    .line 228
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 230
    .local v12, "lastReportTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v16, v4, v12

    .line 231
    .local v16, "passedTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postDelayed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v8, Lcom/youku/analytics/Constants;->reportInterval:J

    sub-long v8, v8, v16

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    sget-wide v8, Lcom/youku/analytics/Constants;->reportInterval:J

    .line 233
    sub-long v8, v8, v16

    .line 232
    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    .end local v12    # "lastReportTime":J
    .end local v16    # "passedTime":J
    :cond_0
    return-object v6
.end method

.method public static getInstance()Lcom/youku/analytics/AnalyticsBase;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->getAnalyticsBase()Lcom/youku/analytics/AnalyticsBase;

    move-result-object v0

    return-object v0
.end method

.method private isNewSession(Landroid/content/SharedPreferences;J)Z
    .locals 6
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "time"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 172
    const-string v2, "end_time"

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 173
    .local v0, "endTime":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 174
    const-string v2, "APP install(\u53ea\u8c03\u7528\u4e00\u6b21\uff0c\u591a\u6b21\u8c03\u7528\u53ef\u80fd\u662fonPause\u65f6\u6ca1\u6709\u8c03\u7528endSession)"

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 176
    :cond_0
    sub-long v2, p2, v0

    sget-wide v4, Lcom/youku/analytics/Constants;->sessionInternal:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 177
    const/4 v2, 0x1

    .line 178
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processAppStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "time"    # J

    .prologue
    .line 247
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->getAgentState(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 248
    .local v4, "preferences":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 249
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsImp;->createNewSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;ZJ)Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APP Start.Start new session :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 252
    :cond_0
    return-void
.end method

.method private declared-synchronized processPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "isExit"    # Z

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->getAgentState(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 265
    .local v11, "preferences":Landroid/content/SharedPreferences;
    if-eqz v11, :cond_0

    .line 266
    const-string/jumbo v4, "start_time"

    const-wide/16 v6, -0x1

    invoke-interface {v11, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 267
    .local v12, "startTime":J
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    if-nez v4, :cond_1

    .line 268
    const-string v4, "onEndSession called before onStartSession"

    invoke-static {v4}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 269
    if-eqz p6, :cond_0

    .line 270
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0}, Lcom/youku/analytics/AnalyticsImp;->saveData(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v12    # "startTime":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    .restart local v12    # "startTime":J
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 274
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "end_time"

    move-wide/from16 v0, p4

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string/jumbo v4, "start_time"

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    new-instance v3, Lcom/youku/analytics/data/ActionBaseData;

    .line 278
    const-string v5, "A1006"

    iget-object v6, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    .line 277
    invoke-direct/range {v3 .. v9}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 279
    .local v3, "action":Lcom/youku/analytics/data/ActionBaseData;
    new-instance v10, Lcom/youku/analytics/data/PageActionData;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-direct {v10, v3, v0, v4}, Lcom/youku/analytics/data/PageActionData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v10, "pageData":Lcom/youku/analytics/data/PageActionData;
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v4, v10}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 281
    move/from16 v0, p6

    invoke-virtual {p0, p1, v0}, Lcom/youku/analytics/AnalyticsImp;->saveData(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "action":Lcom/youku/analytics/data/ActionBaseData;
    .end local v10    # "pageData":Lcom/youku/analytics/data/PageActionData;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "startTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private processResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "time"    # J

    .prologue
    .line 190
    invoke-static {p1}, Lcom/youku/analytics/utils/StorageTools;->getAgentState(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 191
    .local v4, "preferences":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 192
    invoke-direct {p0, v4, p4, p5}, Lcom/youku/analytics/AnalyticsImp;->isNewSession(Landroid/content/SharedPreferences;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsImp;->createNewSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;ZJ)Ljava/lang/String;

    .line 201
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsImp;->extendSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extend current session :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUncaughtHandler(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mExceptionHandler:Lcom/youku/analytics/AnalyticsExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/youku/analytics/AnalyticsExceptionHandler;->init(Landroid/content/Context;)V

    .line 409
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mExceptionHandler:Lcom/youku/analytics/AnalyticsExceptionHandler;

    invoke-virtual {v0, p0}, Lcom/youku/analytics/AnalyticsExceptionHandler;->setThrowableHandler(Lcom/youku/analytics/common/IThrowableHandler;)V

    .line 410
    return-void
.end method


# virtual methods
.method public createNewSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;ZJ)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "preferences"    # Landroid/content/SharedPreferences;
    .param p5, "isLaunch"    # Z
    .param p6, "time"    # J

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/youku/analytics/AnalyticsImp;->getInitInfo(Landroid/content/Context;)V

    .line 86
    invoke-static/range {p6 .. p7}, Lcom/youku/analytics/utils/Tools;->createSession(J)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "sessionID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start new session :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 88
    const-string v4, "end_time"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 89
    .local v10, "endtime":J
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v4, v6, v10, v11}, Lcom/youku/analytics/DataCollection;->setSession(Ljava/lang/String;J)V

    .line 90
    new-instance v3, Lcom/youku/analytics/data/ActionBaseData;

    .line 91
    const-string v5, "A1005"

    move-object v4, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p6

    .line 90
    invoke-direct/range {v3 .. v9}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    .local v3, "data":Lcom/youku/analytics/data/ActionBaseData;
    iput-object v6, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    .line 93
    new-instance v12, Lcom/youku/analytics/data/PageActionData;

    move-object/from16 v0, p3

    invoke-direct {v12, v3, v0}, Lcom/youku/analytics/data/PageActionData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;)V

    .line 94
    .local v12, "pageData":Lcom/youku/analytics/data/PageActionData;
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/youku/analytics/data/PageActionData;->setPageSource(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v4, v12}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 96
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 97
    .local v2, "agentEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "session_id"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string/jumbo v4, "start_time"

    move-wide/from16 v0, p6

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v7, "end_time"

    if-eqz p5, :cond_1

    move-wide/from16 v4, p6

    :goto_0
    invoke-interface {v2, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v4, "last_interval_report_time"

    move-wide/from16 v0, p6

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/youku/analytics/AnalyticsImp;->sendAppReport(Landroid/content/Context;)V

    .line 106
    new-instance v4, Lcom/youku/analytics/AnalyticsImp$TimingThread;

    invoke-direct {v4, p0, p1}, Lcom/youku/analytics/AnalyticsImp$TimingThread;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    .line 107
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsImp;->mTimingThread:Lcom/youku/analytics/AnalyticsImp$TimingThread;

    sget-wide v8, Lcom/youku/analytics/Constants;->reportInterval:J

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-object v6

    .line 99
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public endSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endSession:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 147
    if-nez p1, :cond_0

    .line 148
    const-string/jumbo v0, "unexpected null context in onPause"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-string v0, "endSession() called without context from corresponding startSession()"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/analytics/AnalyticsImp;->isEndSession:Z

    .line 156
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp;->mUserID:Ljava/lang/String;

    .line 157
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    monitor-enter v8

    .line 158
    :try_start_0
    iget-object v9, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mPage:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsImp$PauseHandler;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 158
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastPageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mPlaySession:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public handleThrowable(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v1, Lcom/youku/analytics/data/ActionBaseData;

    .line 369
    const-string v3, "A02"

    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mSession:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsImp;->mUserID:Ljava/lang/String;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, p1

    .line 368
    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 371
    .local v1, "baseData":Lcom/youku/analytics/data/ActionBaseData;
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    .line 372
    new-instance v2, Lcom/youku/analytics/data/ErrorData;

    invoke-direct {v2, v1, p2, p1}, Lcom/youku/analytics/data/ErrorData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/Throwable;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 373
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsImp;->mUserID:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsImp;->mPage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/youku/analytics/AnalyticsImp;->processPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public onAppStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string/jumbo v0, "unexpected null context in onAppStart"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    monitor-enter v8

    .line 66
    :try_start_0
    iget-object v9, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/youku/analytics/AnalyticsImp$HandleThread;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsImp$HandleThread;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V

    .line 66
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKillProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp;->mPage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsImp;->processPause(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 462
    return-void
.end method

.method public requestLocation(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    .line 514
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 513
    invoke-static {p1, v0}, Lcom/youku/analytics/utils/Tools;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 514
    if-nez v0, :cond_1

    .line 516
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 515
    invoke-static {p1, v0}, Lcom/youku/analytics/utils/Tools;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 516
    if-nez v0, :cond_1

    .line 517
    const-string v0, "no location permission"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 520
    iput-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mLocationManager:Landroid/location/LocationManager;

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mLocationManager:Landroid/location/LocationManager;

    .line 525
    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 526
    iget-object v5, p0, Lcom/youku/analytics/AnalyticsImp;->mLocationListener:Landroid/location/LocationListener;

    .line 524
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v6

    .line 528
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp;->mAppName:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setPid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/analytics/AnalyticsImp$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/analytics/AnalyticsImp$2;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_0
    return-void
.end method

.method public setPlaySession(Ljava/lang/String;)V
    .locals 0
    .param p1, "playsid"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp;->mPlaySession:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp;->mUserAgent:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSession:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->d(Ljava/lang/String;)I

    .line 120
    if-nez p1, :cond_0

    .line 121
    const-string/jumbo v0, "unexpected null context in onResume"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/youku/analytics/AnalyticsImp;->isEndSession:Z

    if-nez v0, :cond_1

    .line 125
    const-string/jumbo v0, "startSession() called without context from corresponding endSession()"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mClassName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp;->mPage:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/youku/analytics/AnalyticsImp;->mUserID:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/analytics/AnalyticsImp;->isEndSession:Z

    .line 132
    iget-object v8, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    monitor-enter v8

    .line 133
    :try_start_0
    iget-object v9, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/youku/analytics/AnalyticsImp$HandleThread;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsImp$HandleThread;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V

    .line 133
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trackEvent(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creator"    # Lcom/youku/analytics/IActionCreator;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/analytics/AnalyticsImp$AddThread;

    invoke-direct {v2, p0, p1, p2}, Lcom/youku/analytics/AnalyticsImp$AddThread;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    monitor-exit v1

    .line 356
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trackEventAndSend(Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creator"    # Lcom/youku/analytics/IActionCreator;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp;->mLock:[B

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp;->mActionHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;

    invoke-direct {v2, p0, p1, p2}, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;-><init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    monitor-exit v1

    .line 362
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
