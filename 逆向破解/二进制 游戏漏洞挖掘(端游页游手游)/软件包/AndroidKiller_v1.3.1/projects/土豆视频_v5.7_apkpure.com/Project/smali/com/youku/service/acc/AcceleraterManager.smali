.class public Lcom/youku/service/acc/AcceleraterManager;
.super Ljava/lang/Object;
.source "AcceleraterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Accelerater_Manager"

.field private static mInstance:Lcom/youku/service/acc/AcceleraterManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIAcc:Lcom/youku/service/acc/IAcceleraterService;

.field private mIntent:Landroid/content/Intent;

.field private sConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/youku/service/acc/AcceleraterManager$1;

    invoke-direct {v0, p0}, Lcom/youku/service/acc/AcceleraterManager$1;-><init>(Lcom/youku/service/acc/AcceleraterManager;)V

    iput-object v0, p0, Lcom/youku/service/acc/AcceleraterManager;->sConnection:Landroid/content/ServiceConnection;

    .line 55
    iput-object p1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/youku/service/acc/AcceleraterManager;Lcom/youku/service/acc/IAcceleraterService;)Lcom/youku/service/acc/IAcceleraterService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/acc/AcceleraterManager;
    .param p1, "x1"    # Lcom/youku/service/acc/IAcceleraterService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/youku/service/acc/AcceleraterManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v1, Lcom/youku/service/acc/AcceleraterManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/service/acc/AcceleraterManager;->mInstance:Lcom/youku/service/acc/AcceleraterManager;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "Accelerater_Manager"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/youku/service/acc/AcceleraterManager;

    invoke-direct {v0, p0}, Lcom/youku/service/acc/AcceleraterManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/service/acc/AcceleraterManager;->mInstance:Lcom/youku/service/acc/AcceleraterManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/youku/service/acc/AcceleraterManager;->mInstance:Lcom/youku/service/acc/AcceleraterManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "isRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 281
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 283
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 284
    const/4 v4, 0x0

    .line 292
    :goto_0
    return v4

    .line 286
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 287
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 288
    const/4 v2, 0x1

    :cond_1
    move v4, v2

    .line 292
    goto :goto_0

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 59
    const-string v1, "Accelerater_Manager"

    const-string v2, "bindService()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/service/acc/AcceleraterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->sConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 62
    return-void
.end method

.method public canPlayWithP2P()Z
    .locals 3

    .prologue
    .line 211
    const-string v1, "Accelerater_Manager"

    const-string v2, "canPlayWithP2P()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v1}, Lcom/youku/service/acc/IAcceleraterService;->canPlayWithP2P()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    const-string v2, "Accelerater_Manager"

    const-string v3, "getAccPort()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, ""

    .line 152
    .local v0, "accPort":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->getAccPort()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 160
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    const-string v2, ""

    goto :goto_0
.end method

.method public getAccVersionCode()I
    .locals 5

    .prologue
    .line 179
    const-string v3, "Accelerater_Manager"

    const-string v4, "getAccVersionCode()"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v1, -0x1

    .line 182
    .local v1, "versionCode":I
    :try_start_0
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v3}, Lcom/youku/service/acc/IAcceleraterService;->getVersionCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 190
    .end local v1    # "versionCode":I
    .local v2, "versionCode":I
    :goto_0
    return v2

    .line 185
    .end local v2    # "versionCode":I
    .restart local v1    # "versionCode":I
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v1

    .line 187
    .end local v1    # "versionCode":I
    .restart local v2    # "versionCode":I
    goto :goto_0
.end method

.method public getAccVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    const-string v2, "Accelerater_Manager"

    const-string v3, "getAccVersionName()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, ""

    .line 167
    .local v1, "versionName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->getVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v1, "0.0.0.0"

    .line 175
    :cond_1
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDownloadSwitch()Z
    .locals 4

    .prologue
    .line 223
    const-string v2, "Accelerater_Manager"

    const-string v3, "getDownloadSwitch()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .line 227
    .local v0, "downloadSwitch":Z
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->getDownloadSwitch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    move v2, v0

    .line 235
    :goto_0
    return v2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 232
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHttpProxyPort()I
    .locals 4

    .prologue
    .line 134
    const-string v2, "Accelerater_Manager"

    const-string v3, "getHttpProxyPort()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, -0x1

    .line 137
    .local v1, "port":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->getHttpProxyPort()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 145
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getPlaySwitch()Z
    .locals 4

    .prologue
    .line 239
    const-string v2, "Accelerater_Manager"

    const-string v3, "getDownloadSwitch()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    .line 243
    .local v1, "playSwitch":Z
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->getPlaySwitch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 251
    :goto_0
    return v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 248
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAvailable()I
    .locals 4

    .prologue
    .line 195
    const-string v2, "Accelerater_Manager"

    const-string v3, "isAvailable()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, -0x1

    .line 199
    .local v0, "available":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->isAvailable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    move v2, v0

    .line 207
    :goto_0
    return v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public pause()I
    .locals 4

    .prologue
    .line 104
    const-string v2, "Accelerater_Manager"

    const-string v3, "pause()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, -0x1

    .line 107
    .local v1, "flag":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->pause()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 115
    :goto_0
    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public resume()I
    .locals 4

    .prologue
    .line 119
    const-string v2, "Accelerater_Manager"

    const-string/jumbo v3, "resume()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v1, -0x1

    .line 122
    .local v1, "flag":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v2}, Lcom/youku/service/acc/IAcceleraterService;->resume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v2, v1

    .line 130
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "Accelerater_Manager"

    const-string/jumbo v1, "startService()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/service/acc/AcceleraterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/youku/service/acc/AcceleraterManager;->mIntent:Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterManager;->mIntent:Landroid/content/Intent;

    const-string v1, "com.youku.acc.ACTION_START_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 92
    const-string v1, "Accelerater_Manager"

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mIAcc:Lcom/youku/service/acc/IAcceleraterService;

    invoke-interface {v1}, Lcom/youku/service/acc/IAcceleraterService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 78
    const-string v1, "Accelerater_Manager"

    const-string/jumbo v2, "stopService()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    const-string v2, "com.youku.service.acc.AcceleraterService"

    invoke-static {v1, v2}, Lcom/youku/service/acc/AcceleraterManager;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "Accelerater_Manager"

    const-string v2, "AcceleraterService is running!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/service/acc/AcceleraterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.youku.acc.ACTION_STOP_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v1, "Accelerater_Manager"

    const-string v2, "AcceleraterService is not run!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "Accelerater_Manager"

    const-string/jumbo v1, "unbindService()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterManager;->sConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    return-void
.end method
