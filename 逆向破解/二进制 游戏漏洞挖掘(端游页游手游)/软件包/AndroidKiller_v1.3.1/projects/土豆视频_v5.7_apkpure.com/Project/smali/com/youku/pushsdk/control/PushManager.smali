.class public Lcom/youku/pushsdk/control/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field public static final KEY_PUSH_SWITCH:Ljava/lang/String; = "video_notifi"

.field private static final TAG:Ljava/lang/String;

.field public static currentProcessName:Ljava/lang/String;

.field private static isFirstLaunch:Z

.field public static isTestHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/youku/pushsdk/control/PushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/pushsdk/control/PushManager;->isTestHost:Z

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/pushsdk/control/PushManager;->isFirstLaunch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 219
    .local v2, "pid":I
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    check-cast v1, Landroid/app/ActivityManager;

    .line 221
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 220
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 221
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 222
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 223
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPushServiceRecoverSwitch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public static getPushSwitch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string/jumbo v1, "video_notifi"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/youku/pushsdk/util/PushUtil;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 207
    .local v0, "state":Z
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get push swtich: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v0
.end method

.method public static getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getMqttTopic(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstLaunch(Z)V
    .locals 0
    .param p0, "firstLaunch"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/youku/pushsdk/control/PushManager;->isFirstLaunch:Z

    .line 179
    return-void
.end method

.method public static redirectUrlForUninstallYouku(Ljava/lang/String;)V
    .locals 2
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v0, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    .line 277
    .local v0, "guid":Ljava/lang/String;
    const-string v1, "2.1"

    .line 278
    .local v1, "ver":Ljava/lang/String;
    return-void
.end method

.method public static setDebugMode(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 188
    sget-object v2, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setDebugMode(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->getLogPreference(Landroid/content/Context;)Z

    move-result v1

    .line 190
    .local v1, "oldState":Z
    sput-boolean p1, Lcom/youku/pushsdk/constants/BuildConfig;->LOG_SWITCH:Z

    .line 191
    if-eq v1, p1, :cond_0

    .line 192
    invoke-static {p0, p1}, Lcom/youku/pushsdk/util/PushUtil;->setLogPreference(Landroid/content/Context;Z)V

    .line 193
    invoke-static {p0, p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForChangeLogSwitch(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 194
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 196
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setPushServiceRecoverSwitch(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "autoRecover"    # Z

    .prologue
    .line 246
    return-void
.end method

.method public static setPushSwitch(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 115
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 117
    const-string/jumbo v1, "video_notifi"

    invoke-static {p0, v1, p1}, Lcom/youku/pushsdk/util/PushUtil;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 118
    invoke-static {p0, p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForChangeSwitch(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setRedirectUrlForUninstallYouku(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {p0, p1}, Lcom/youku/pushsdk/util/PushUtil;->setRedirectUrlForUninstallApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static setTestHost(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isTest"    # Z

    .prologue
    .line 132
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    .line 135
    :cond_0
    const-string v1, "com.push.Youku_PushService"

    sget-object v2, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    :cond_1
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTestHost()"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1}, Lcom/youku/pushsdk/util/PushUtil;->setDebugPreference(Landroid/content/Context;Z)V

    .line 139
    sget-boolean v1, Lcom/youku/pushsdk/control/PushManager;->isFirstLaunch:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/youku/pushsdk/control/PushManager;->isTestHost:Z

    if-eq p1, v1, :cond_2

    .line 140
    invoke-static {p0, p1}, Lcom/youku/pushsdk/constants/CMD;->getIntentForChangeMqttServer(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    sput-boolean p1, Lcom/youku/pushsdk/control/PushManager;->isTestHost:Z

    .line 147
    :cond_3
    return-void
.end method

.method public static startWork(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 94
    invoke-static {p0}, Lcom/youku/pushsdk/control/PushManager;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "com.push.Youku_PushService"

    sget-object v2, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/pushsdk/control/PushManager;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    :cond_1
    invoke-static {p0}, Lcom/youku/pushsdk/util/PushUtil;->scheduleCheckServiceRunningTask(Landroid/content/Context;)V

    .line 101
    sget-object v1, Lcom/youku/pushsdk/control/PushManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startWork()"

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/youku/pushsdk/constants/CMD;->getIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    return-void
.end method
