.class public final Lcom/mobisage/android/MobiSageManager;
.super Ljava/lang/Object;
.source "MobiSageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageManager$1;,
        Lcom/mobisage/android/MobiSageManager$HandlerListener;
    }
.end annotation


# static fields
.field private static ourInstance:Lcom/mobisage/android/MobiSageManager;


# instance fields
.field public final handler:Landroid/os/Handler;

.field private final handlerListener:Lcom/mobisage/android/MobiSageManager$HandlerListener;

.field private isInited:Z

.field private final sdkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/mobisage/android/MobiSageManager;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageManager;-><init>()V

    sput-object v0, Lcom/mobisage/android/MobiSageManager;->ourInstance:Lcom/mobisage/android/MobiSageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageManager;->isInited:Z

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageManager;->sdkThread:Landroid/os/HandlerThread;

    .line 31
    iget-object v0, p0, Lcom/mobisage/android/MobiSageManager;->sdkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Lcom/mobisage/android/MobiSageManager$HandlerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageManager$HandlerListener;-><init>(Lcom/mobisage/android/MobiSageManager;Lcom/mobisage/android/MobiSageManager$1;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageManager;->handlerListener:Lcom/mobisage/android/MobiSageManager$HandlerListener;

    .line 33
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageManager;->sdkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/mobisage/android/MobiSageManager;->handlerListener:Lcom/mobisage/android/MobiSageManager$HandlerListener;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageManager;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/mobisage/android/MobiSageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageManager;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageManager;->processMobiSageSDKrInit()V

    return-void
.end method

.method public static getInstance()Lcom/mobisage/android/MobiSageManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mobisage/android/MobiSageManager;->ourInstance:Lcom/mobisage/android/MobiSageManager;

    return-object v0
.end method

.method private processMobiSageSDKrInit()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x5

    .line 95
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    .line 96
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    .line 97
    invoke-static {}, Lcom/mobisage/android/MobiSageAdModule;->getInstance()Lcom/mobisage/android/MobiSageAdModule;

    .line 98
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    .line 99
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    .line 100
    invoke-static {}, Lcom/mobisage/android/MobiSageGPSModule;->getInstance()Lcom/mobisage/android/MobiSageGPSModule;

    .line 103
    new-instance v0, Lcom/mobisage/android/MobiSageDeviceInfoTask;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageDeviceInfoTask;-><init>()V

    .line 104
    .local v0, "task":Lcom/mobisage/android/MobiSageDeviceInfoTask;
    iput-wide v4, v0, Lcom/mobisage/android/MobiSageDeviceInfoTask;->delayTime:J

    .line 105
    const-wide/32 v2, 0x15180

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageDeviceInfoTask;->periodTime:J

    .line 106
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 109
    new-instance v0, Lcom/mobisage/android/MobiSageCleanCacheTask;

    .end local v0    # "task":Lcom/mobisage/android/MobiSageDeviceInfoTask;
    invoke-direct {v0}, Lcom/mobisage/android/MobiSageCleanCacheTask;-><init>()V

    .line 110
    .local v0, "task":Lcom/mobisage/android/MobiSageCleanCacheTask;
    iput-wide v4, v0, Lcom/mobisage/android/MobiSageCleanCacheTask;->delayTime:J

    .line 111
    const-wide/32 v2, 0x2255100

    iput-wide v2, v0, Lcom/mobisage/android/MobiSageCleanCacheTask;->periodTime:J

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobisage/android/MobiSageCleanCacheTask;->isRate:Z

    .line 113
    invoke-static {}, Lcom/mobisage/android/MobiSageTaskModule;->getInstance()Lcom/mobisage/android/MobiSageTaskModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobisage/android/MobiSageTaskModule;->registerMobiSageTask(Lcom/mobisage/android/MobiSageTask;)V

    .line 115
    return-void
.end method


# virtual methods
.method public cancelMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 206
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageNetModule;->cancelMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 207
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 40
    iget-object v0, p0, Lcom/mobisage/android/MobiSageManager;->sdkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 41
    return-void
.end method

.method public initMobiSageManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/mobisage/android/MobiSageManager;->isInited:Z

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/mobisage/android/MobiSageAppInfo;->initMobiSageInfo(Landroid/content/Context;)Z

    .line 78
    invoke-static {p1}, Lcom/mobisage/android/MobiSageDeviceInfo;->initMobiSageDeviceInfo(Landroid/content/Context;)V

    .line 79
    iget-object v2, p0, Lcom/mobisage/android/MobiSageManager;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    invoke-static {p1}, Lcom/mobisage/android/MobiSageAppInfo;->mobiSageReceiverNotFound(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    new-instance v3, Lcom/mobisage/android/MobiSageAdReceiver;

    invoke-direct {v3}, Lcom/mobisage/android/MobiSageAdReceiver;-><init>()V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobisage/android/MobiSageManager;->isInited:Z

    goto :goto_0
.end method

.method public pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/mobisage/android/MobiSageMessage;

    .prologue
    .line 202
    invoke-static {}, Lcom/mobisage/android/MobiSageNetModule;->getInstance()Lcom/mobisage/android/MobiSageNetModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageNetModule;->pushMobiSageMessage(Lcom/mobisage/android/MobiSageMessage;)V

    .line 203
    return-void
.end method

.method public setPublisherID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "publisherID":Ljava/lang/String;
    :cond_0
    sput-object p2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "MobiSage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pid"

    sget-object v2, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_1
    return-void
.end method

.method public trackCustomEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 172
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 173
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    invoke-static {p1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetWorkState(Landroid/content/Context;)I

    move-result v1

    .line 174
    .local v1, "networkstate":I
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Network"

    invoke-static {v1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetworkStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Carrier"

    invoke-static {p1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getCarrierInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "SystemEvent"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventID"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventObject"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AppVersion"

    sget-object v4, Lcom/mobisage/android/MobiSageAppInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "PublishID"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 186
    return-void
.end method

.method public trackStreamEvent(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "streamEvent"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 195
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 196
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "TrackData"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 199
    return-void
.end method

.method public trackSystemEvent(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "eventID"    # I

    .prologue
    const/4 v5, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageManager;->initMobiSageManager(Landroid/content/Context;)V

    .line 133
    if-eq p3, v5, :cond_0

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    .line 157
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 138
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    invoke-static {p1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetWorkState(Landroid/content/Context;)I

    move-result v1

    .line 139
    .local v1, "networkstate":I
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Network"

    invoke-static {v1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getNetworkStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Carrier"

    invoke-static {p1}, Lcom/mobisage/android/MobiSageDeviceInfo;->getCarrierInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "SystemEvent"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-ne p3, v5, :cond_1

    .line 145
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventID"

    const-string v4, "In"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_1
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventObject"

    sget-object v4, Lcom/mobisage/android/MobiSageAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AppVersion"

    sget-object v4, Lcom/mobisage/android/MobiSageAppInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "PublishID"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventID"

    const-string v4, "Out"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
