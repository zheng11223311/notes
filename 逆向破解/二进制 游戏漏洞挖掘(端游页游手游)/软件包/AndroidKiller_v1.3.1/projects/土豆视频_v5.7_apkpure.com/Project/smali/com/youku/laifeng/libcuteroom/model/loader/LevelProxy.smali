.class public Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
.super Ljava/lang/Object;
.source "LevelProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LevelProxy"


# instance fields
.field private final ANCHOR_SIGN_NAME:Ljava/lang/String;

.field private final USER_SIGN_NAME:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v1, "anchorSign"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->ANCHOR_SIGN_NAME:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "userSign"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->USER_SIGN_NAME:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 74
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$2;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 55
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent2":Landroid/content/Intent;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    return-void
.end method

.method private _getAnchorLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V
    .locals 4
    .param p1, "levelInfo"    # Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->checkLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$3;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;)V

    .line 192
    .local v0, "download":Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "anchor.zip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getAnchorlevelDirPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    .end local v0    # "download":Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;
    :cond_0
    return-void
.end method

.method private _getUserLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
    .locals 4
    .param p1, "levelInfo"    # Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->checkLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy$4;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;)V

    .line 234
    .local v0, "download":Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "user.zip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    .end local v0    # "download":Lcom/youku/laifeng/libcuteroom/model/download/LevelDownload;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->getAnchorLevel(Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->getUserLevel(Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->writeSign(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized checkLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;)Z
    .locals 9
    .param p1, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getType()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 241
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getAnchorlevelDirPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "anchorSign"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 244
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "sign":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 247
    const-string v3, "anchorSign"

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getSign()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 307
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "sign":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 252
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move v5, v6

    .line 272
    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 258
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v5, "anchor.zip"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getAnchorlevelDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->copy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 259
    .local v4, "zip":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 261
    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getAnchorlevelDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;

    invoke-direct {v7}, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;-><init>()V

    invoke-static {v4, v5, v7}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 262
    const-string v5, "anchorSign"

    invoke-direct {p0, v1, v5}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->writeSign(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 266
    :catch_2
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "zip":Ljava/io/File;
    :cond_4
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 274
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "userSign"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    .line 277
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 278
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3    # "sign":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 280
    const-string/jumbo v3, "userSign"

    .line 282
    :cond_5
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->getSign()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "sign":Ljava/lang/String;
    :cond_6
    :goto_2
    move v5, v6

    .line 305
    goto/16 :goto_0

    .line 285
    :catch_3
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    const-string/jumbo v5, "user.zip"

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->copy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    .line 293
    .restart local v4    # "zip":Ljava/io/File;
    if-eqz v4, :cond_6

    .line 294
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;

    invoke-direct {v7}, Lcom/youku/laifeng/libcuteroom/utils/LFZipNameMapper;-><init>()V

    invoke-static {v4, v5, v7}, Lcom/corncop/capricornus/zip/ZipUtil;->unpack(Ljava/io/File;Ljava/io/File;Lcom/corncop/capricornus/zip/NameMapper;)V

    .line 295
    const-string/jumbo v5, "userSign"

    invoke-direct {p0, v1, v5}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->writeSign(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 300
    :catch_5
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "zip":Ljava/io/File;
    :cond_8
    move v5, v6

    .line 307
    goto/16 :goto_0
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1, "asset"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 313
    .local v5, "source":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, "destinationFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 317
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 318
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 319
    .local v1, "destination":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 321
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "nread":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 322
    if-nez v4, :cond_4

    .line 323
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 324
    if-gez v4, :cond_2

    .line 331
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 336
    .end local v0    # "buffer":[B
    .end local v1    # "destination":Ljava/io/OutputStream;
    .end local v2    # "destinationFile":Ljava/io/File;
    .end local v4    # "nread":I
    .end local v5    # "source":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 326
    .restart local v0    # "buffer":[B
    .restart local v1    # "destination":Ljava/io/OutputStream;
    .restart local v2    # "destinationFile":Ljava/io/File;
    .restart local v4    # "nread":I
    .restart local v5    # "source":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0    # "buffer":[B
    .end local v1    # "destination":Ljava/io/OutputStream;
    .end local v2    # "destinationFile":Ljava/io/File;
    .end local v4    # "nread":I
    .end local v5    # "source":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 336
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "destination":Ljava/io/OutputStream;
    .restart local v2    # "destinationFile":Ljava/io/File;
    .restart local v4    # "nread":I
    .restart local v5    # "source":Ljava/io/InputStream;
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getAnchorLevel(Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V
    .locals 12
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;

    .prologue
    .line 88
    const-string v7, "anchorSign"

    .line 89
    .local v7, "sign":Ljava/lang/String;
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    const/4 v8, 0x1

    invoke-direct {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;-><init>(I)V

    .line 91
    .local v3, "levelInfo":Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getAnchorlevelDirPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "anchorSign"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 93
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 96
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v8, "sign"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v9

    iget-object v9, v9, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_LEVEL_ANCHOR:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-interface {v8, v9, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getResponse(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v5

    .line 99
    .local v5, "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v8

    const-string v9, "C304"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_1
    :goto_0
    return-void

    .line 102
    .restart local v0    # "args":Lorg/json/JSONObject;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_2
    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 103
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "result":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 105
    const-string/jumbo v8, "sign"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->setSign(Ljava/lang/String;)V

    .line 106
    const-string v8, "link"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v3, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->_getAnchorLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetAnchorLevelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 111
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .end local v6    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserLevel(Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
    .locals 12
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;

    .prologue
    .line 124
    const-string/jumbo v7, "userSign"

    .line 125
    .local v7, "sign":Ljava/lang/String;
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;-><init>(I)V

    .line 127
    .local v3, "levelInfo":Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getUserlevelDirPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userSign"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 132
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v8, "sign"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v9

    iget-object v9, v9, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_LEVEL_USER:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-interface {v8, v9, v10, v11}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getResponse(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v5

    .line 135
    .local v5, "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v8

    const-string v9, "C304"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_1
    :goto_0
    return-void

    .line 138
    .restart local v0    # "args":Lorg/json/JSONObject;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_2
    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 139
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getParserData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v6, "result":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 141
    const-string/jumbo v8, "sign"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->setSign(Ljava/lang/String;)V

    .line 142
    const-string v8, "link"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v3, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/LevelProxy;->_getUserLevel(Lcom/youku/laifeng/libcuteroom/model/data/LevelInfo;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetUserLevelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 147
    .end local v0    # "args":Lorg/json/JSONObject;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "response":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .end local v6    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeSign(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 341
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 342
    .local v2, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 343
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 344
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "bytes":[B
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
