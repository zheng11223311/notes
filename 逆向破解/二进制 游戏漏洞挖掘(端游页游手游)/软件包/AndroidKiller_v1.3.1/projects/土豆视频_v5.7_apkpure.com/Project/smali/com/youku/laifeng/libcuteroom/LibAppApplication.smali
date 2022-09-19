.class public Lcom/youku/laifeng/libcuteroom/LibAppApplication;
.super Landroid/app/Application;
.source "LibAppApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibAppApplication"

.field public static activitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static isVersionUpgrade:Z

.field private static mAppInstance:Landroid/app/Application;

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/LibAppApplication;


# instance fields
.field private mCPULevel:I

.field private mConnectionRestAPI:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

.field private userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    .line 35
    sput-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mInstance:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->isVersionUpgrade:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->activitys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5
    .param p1, "instance"    # Landroid/app/Application;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    .line 37
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mHandler:Landroid/os/Handler;

    .line 42
    iput v4, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    .line 88
    new-instance v1, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication$1;-><init>(Lcom/youku/laifeng/libcuteroom/LibAppApplication;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    .line 47
    sput-object p1, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    .line 48
    sput-object p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mInstance:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent2":Landroid/content/Intent;
    sget-object v1, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    sget-object v2, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v2, v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    .line 55
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->initData()V

    .line 57
    return-void
.end method

.method public static AddActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 141
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->activitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->activitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public static RemoveActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 147
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->activitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->activitys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/youku/laifeng/libcuteroom/LibAppApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/LibAppApplication;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/LibAppApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->startService()V

    return-void
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    return-object v0
.end method

.method public static getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mInstance:Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    return-object v0
.end method

.method private initData()V
    .locals 6

    .prologue
    const v5, 0x2625a0

    const v4, 0x1cfde0

    const v3, 0x16e360

    .line 159
    invoke-static {}, Lcom/corncop/virgo/VirgoCpuManager;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "maxCpuFreqStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "maxCpuFreq":I
    if-gt v0, v3, :cond_1

    .line 164
    const/4 v2, 0x0

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    .line 178
    :goto_0
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LibAppApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxCpuFreq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "maxCpuFreq":I
    :cond_0
    :goto_1
    return-void

    .line 165
    .restart local v0    # "maxCpuFreq":I
    :cond_1
    if-le v0, v3, :cond_2

    if-gt v0, v4, :cond_2

    .line 167
    const/4 v2, 0x1

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    goto :goto_0

    .line 179
    .end local v0    # "maxCpuFreq":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 168
    .restart local v0    # "maxCpuFreq":I
    :cond_2
    if-le v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    .line 170
    const/4 v2, 0x2

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    goto :goto_0

    .line 171
    :cond_3
    if-le v0, v5, :cond_4

    const v2, 0x3567e0

    if-gt v0, v2, :cond_4

    .line 173
    const/4 v2, 0x3

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    goto :goto_0

    .line 175
    :cond_4
    const/4 v2, 0x4

    iput v2, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private startService()V
    .locals 6

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.youku.laifeng.service.REMOTE_CORE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "intent1":Landroid/content/Intent;
    sget-object v3, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v3, v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "intent2":Landroid/content/Intent;
    sget-object v3, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v3, v2}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "intent2":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCpuLevel()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mCPULevel:I

    return v0
.end method

.method public getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 68
    sget-object v1, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mAppInstance:Landroid/app/Application;

    const-string v3, "drawable"

    const-string v4, "ic_launcher"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getRestAPIService()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    if-eqz v1, :cond_2

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->startService()V

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Lcom/youku/laifeng/libcuteroom/exception/ServiceException;

    const-string v2, "Data Service is null"

    invoke-direct {v1, v2}, Lcom/youku/laifeng/libcuteroom/exception/ServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    if-nez v1, :cond_0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->getUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :cond_1
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    invoke-direct {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;-><init>()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 155
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->mConnectionRestAPI:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    return-void
.end method

.method public setUserInfo(Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->userInfo:Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    .line 86
    return-void
.end method
