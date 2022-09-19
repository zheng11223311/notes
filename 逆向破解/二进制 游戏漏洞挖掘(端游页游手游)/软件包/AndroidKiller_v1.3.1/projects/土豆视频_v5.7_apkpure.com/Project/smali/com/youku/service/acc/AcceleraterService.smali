.class public Lcom/youku/service/acc/AcceleraterService;
.super Landroid/app/Service;
.source "AcceleraterService.java"


# static fields
.field public static final ACTION_START_FAILURE:Ljava/lang/String; = "com.youku.acc.ACTION_START_FAILURE"

.field public static final ACTION_START_SERVER:Ljava/lang/String; = "com.youku.acc.ACTION_START_SERVER"

.field public static final ACTION_START_SUCCESS:Ljava/lang/String; = "com.youku.acc.ACTION_START_SUCCESS"

.field public static final ACTION_STOP_SERVER:Ljava/lang/String; = "com.youku.acc.ACTION_STOP_SERVER"

.field private static final TAG:Ljava/lang/String; = "Accelerater_Service"


# instance fields
.field mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

.field private mBinder:Lcom/youku/service/acc/IAcceleraterService$Stub;

.field private mInitLock:Z

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/service/acc/AcceleraterService;->mInitLock:Z

    .line 41
    new-instance v0, Lcom/youku/service/acc/AcceleraterService$1;

    invoke-direct {v0, p0}, Lcom/youku/service/acc/AcceleraterService$1;-><init>(Lcom/youku/service/acc/AcceleraterService;)V

    iput-object v0, p0, Lcom/youku/service/acc/AcceleraterService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance v0, Lcom/youku/service/acc/AcceleraterService$2;

    invoke-direct {v0, p0}, Lcom/youku/service/acc/AcceleraterService$2;-><init>(Lcom/youku/service/acc/AcceleraterService;)V

    iput-object v0, p0, Lcom/youku/service/acc/AcceleraterService;->mBinder:Lcom/youku/service/acc/IAcceleraterService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/service/acc/AcceleraterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/acc/AcceleraterService;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/youku/service/acc/AcceleraterService;->mInitLock:Z

    return v0
.end method

.method static synthetic access$002(Lcom/youku/service/acc/AcceleraterService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/acc/AcceleraterService;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/youku/service/acc/AcceleraterService;->mInitLock:Z

    return p1
.end method

.method private checkCacheDir(Landroid/content/Intent;)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 273
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "cachePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    .line 276
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/youku/youkudisk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 279
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    .line 281
    :cond_0
    const-string/jumbo v3, "restrictby"

    const-string v4, "10-\u65e0youkudisk\u6587\u4ef6\u5939"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v3, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, p1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    const-string v3, "Accelerater_Service"

    const-string/jumbo v4, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 289
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    .line 291
    :cond_2
    const-string/jumbo v3, "restrictby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7-\u83b7\u53d6\u7f13\u5b58\u8def\u5f84\u5931\u8d25:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v3, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, p1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    const-string v3, "Accelerater_Service"

    const-string/jumbo v4, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .restart local v1    # "f":Ljava/io/File;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    const-string v0, "Accelerater_Service"

    const-string v1, "AcceleraterService onBind()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService;->mBinder:Lcom/youku/service/acc/IAcceleraterService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 154
    const-string v1, "Accelerater_Service"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getInstance()Lcom/youku/service/acc/AcceleraterServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/service/acc/AcceleraterService;->mInitLock:Z

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/youku/service/acc/AcceleraterService;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/service/acc/AcceleraterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 163
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "Accelerater_Service"

    const-string v1, "AcceleraterService onDestroy()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 312
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 167
    const-string v4, "Accelerater_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand() intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->printAll(Landroid/content/Context;)V

    .line 170
    if-nez p1, :cond_4

    .line 171
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 176
    :cond_1
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    const-string v4, "Accelerater_Service"

    const-string v5, "ACC\u542f\u52a8\u5931\u8d25/\u624b\u673a\u4e0d\u6ee1\u8db3ACC\u8fd0\u884c\u6761\u4ef6"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v4}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    goto :goto_0

    .line 182
    :cond_2
    const-string v3, "Accelerater_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v5}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v3

    if-nez v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3, p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->startAcc(Landroid/content/Context;)I

    goto :goto_0

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 188
    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->resumeAcc()I

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    const-string v4, "com.youku.acc.ACTION_START_SERVER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_TRACKER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "from"

    const-string v5, "from_acc"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_5

    .line 205
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    .line 206
    const-string/jumbo v2, "restrictby"

    const-string v4, "9-\u7f51\u7edc\u73af\u5883\u4e0d\u6ee1\u8db3\u8981\u6c42"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    const-string v2, "Accelerater_Service"

    const-string/jumbo v4, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 210
    goto/16 :goto_0

    .line 236
    :cond_5
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v4

    if-nez v4, :cond_8

    .line 237
    const-string v2, "Accelerater_Service"

    const-string v4, "ACC\u542f\u52a8\u5931\u8d25/\u624b\u673a\u4e0d\u6ee1\u8db3ACC\u8fd0\u884c\u6761\u4ef6"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 239
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    .line 241
    :cond_6
    const-string/jumbo v2, "restrictby"

    sget-object v4, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    const-string v2, "Accelerater_Service"

    const-string/jumbo v4, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "i":Landroid/content/Intent;
    :cond_7
    :goto_1
    move v2, v3

    .line 269
    goto/16 :goto_0

    .line 246
    .restart local v1    # "i":Landroid/content/Intent;
    :cond_8
    const-string v4, "Accelerater_Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v6}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v4}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v4

    if-nez v4, :cond_9

    .line 248
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2, p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->startAcc(Landroid/content/Context;)I

    move v2, v3

    .line 249
    goto/16 :goto_0

    .line 252
    :cond_9
    invoke-direct {p0, v1}, Lcom/youku/service/acc/AcceleraterService;->checkCacheDir(Landroid/content/Intent;)I

    move-result v4

    if-ne v4, v7, :cond_a

    move v2, v3

    .line 253
    goto/16 :goto_0

    .line 256
    :cond_a
    iget-object v4, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v4}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 257
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2}, Lcom/youku/service/acc/AcceleraterServiceManager;->resumeAcc()I

    move-result v2

    if-ne v7, v2, :cond_7

    .line 258
    const-string/jumbo v2, "restrictby"

    const-string v4, "8-resumeAcc\u5931\u8d25"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    const-string v2, "Accelerater_Service"

    const-string/jumbo v4, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v1    # "i":Landroid/content/Intent;
    :cond_b
    const-string v2, "com.youku.acc.ACTION_STOP_SERVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v2}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    goto :goto_1
.end method
