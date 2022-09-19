.class public Lcom/youku/service/acc/AcceleraterServiceManager;
.super Ljava/lang/Object;
.source "AcceleraterServiceManager.java"


# static fields
.field public static ACC_PORT:Ljava/lang/String; = null

.field public static final ACTION_START_FAILURE:Ljava/lang/String; = "com.youku.acc.ACTION_START_FAILURE"

.field public static final ACTION_START_SUCCESS:Ljava/lang/String; = "com.youku.acc.ACTION_START_SUCCESS"

.field public static final FROM_ACC:Ljava/lang/String; = "from_acc"

.field public static final P2PVERSION:Ljava/lang/String; = "p2pVersion"

.field public static final RESTRICTBY:Ljava/lang/String; = "restrictby"

.field public static final SUCCSTARTP2P:Ljava/lang/String; = "succStartP2p"

.field private static final TAG:Ljava/lang/String; = "Accelerater_Service_Manager"

.field private static mInstance:Lcom/youku/service/acc/AcceleraterServiceManager;

.field public static sBlackList:Ljava/lang/String;

.field public static sFailReason:Ljava/lang/String;


# instance fields
.field private mCurrentStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const-string v1, ""

    sput-object v1, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    .line 38
    const-string v1, "asus_K012;intel_Bamboo"

    sput-object v1, Lcom/youku/service/acc/AcceleraterServiceManager;->sBlackList:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-direct {v1}, Lcom/youku/service/acc/AcceleraterServiceManager;-><init>()V

    sput-object v1, Lcom/youku/service/acc/AcceleraterServiceManager;->mInstance:Lcom/youku/service/acc/AcceleraterServiceManager;

    .line 437
    sget-object v1, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeStatics;->getAccSo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "accPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/libmanager/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "SoUpgradeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System.load("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v1, "SoUpgradeService"

    const-string v2, "System.loadLibrary(accstub)"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "accstub"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    .line 43
    return-void
.end method

.method public static canDownloadWithP2P()Z
    .locals 3

    .prologue
    .line 350
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "canDownloadWithP2P()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 354
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getDownloadSwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "can Download With P2P"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static canPlayWithP2P()Z
    .locals 3

    .prologue
    .line 363
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "canPlayWithP2P()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 366
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getPlaySwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "can play With P2P"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x1

    .line 371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccVersionCode()I
    .locals 2

    .prologue
    .line 256
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "getAccVersionCode()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public static getAccVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "getAccVersionName()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefauleSDCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "getDefauleSDCardPath()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDownloadSwitch()Z
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 340
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getDownloadSwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private native getHttpProxyPort()I
.end method

.method public static getInstance()Lcom/youku/service/acc/AcceleraterServiceManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/youku/service/acc/AcceleraterServiceManager;->mInstance:Lcom/youku/service/acc/AcceleraterServiceManager;

    return-object v0
.end method

.method public static getPlaySwitch()Z
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 346
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getPlaySwitch(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native getVersionCode()I
.end method

.method private static native getVersionName()Ljava/lang/String;
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 377
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "hasSDCard()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isACCEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 268
    const-string v2, "Accelerater_Service_Manager"

    const-string v3, "isACCEnable()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 270
    .local v0, "context":Landroid/content/Context;
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSwitch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getP2pSwitch(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Lcom/youku/service/acc/AccInitData;->getP2pSwitch(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 286
    invoke-static {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->isAccSupported(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    return v1

    .line 273
    :pswitch_0
    const-string v2, "Accelerater_Service_Manager"

    const-string v3, "2-P2P\u5f00\u5173\u83b7\u53d6\u6210\u529f\uff0c\u4f46\u5f00\u5173\u72b6\u6001\u4e3a\u5173\u95ed"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "2-P2P\u5f00\u5173\u83b7\u53d6\u6210\u529f\uff0c\u4f46\u5f00\u5173\u72b6\u6001\u4e3a\u5173\u95ed"

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v2, "Accelerater_Service_Manager"

    const-string v3, "5-P2P\u5f00\u5173\u83b7\u53d6\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "5-P2P\u5f00\u5173\u83b7\u53d6\u5931\u8d25"

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAccSupported(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 291
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.os.Build.MODEL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", android.os.Build.BRAND = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "brand":Ljava/lang/String;
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sBlackList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/service/acc/AcceleraterServiceManager;->sBlackList:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iscontain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/service/acc/AcceleraterServiceManager;->sBlackList:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "armeabi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sBlackList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    :cond_0
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11-\u4f53\u7cfb\u7ed3\u6784\u4e3a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";brand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11-\u4f53\u7cfb\u7ed3\u6784\u4e3a:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";brand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    .line 334
    :goto_0
    return v1

    .line 303
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getAndroidVersionRestrict(Landroid/content/Context;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 304
    const-string v2, "Accelerater_Service_Manager"

    const-string v3, "4-Andriod\u7248\u672c\u4f4e\u4e8e"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4-Andriod\u7248\u672c\u4f4e\u4e8e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getAndroidVersionRestrict(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_2
    invoke-static {p0}, Lcom/baseproject/image/Utils;->getMemoryClass(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getMemoryRestrict(Landroid/content/Context;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 310
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0-\u5185\u5b58<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getMemoryRestrict(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0-\u5185\u5b58<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getMemoryRestrict(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_3
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->hasSDCard()Z

    move-result v2

    if-nez v2, :cond_4

    .line 316
    const-string v2, "Accelerater_Service_Manager"

    const-string v3, "3-\u6ca1sd\u5361"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "3-\u6ca1sd\u5361"

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 321
    :cond_4
    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getCpuRestrict(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/youku/service/acc/AccInitData;->isUplayerSupported(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 322
    const-string v2, "Accelerater_Service_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1-CPU\u672a\u6ee1\u8db3\u8f6f\u89e3\u8981\u6c42, abi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasNeon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/youku/service/acc/AccInitData;->sHasNeon:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/youku/service/acc/AccInitData;->getCpuRestrict(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-CPU\u672a\u6ee1\u8db3\u8f6f\u89e3\u8981\u6c42, abi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasNeon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/youku/service/acc/AccInitData;->sHasNeon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/youku/service/acc/AccInitData;->sCpuFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    :cond_5
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "p2p\u542f\u52a8\u7684\u6761\u4ef6\u5168\u90e8\u6ee1\u8db3"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private native isAvailable()I
.end method

.method private native pause()I
.end method

.method public static postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 433
    const-string v0, "Accelerater_Service_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative : what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private native resume()I
.end method

.method private native start(Ljava/lang/String;)I
.end method

.method private native stop()V
.end method


# virtual methods
.method public getAccHttpProxyPort()I
    .locals 2

    .prologue
    .line 261
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "getAccHttpProxyPort()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->getHttpProxyPort()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    return v0
.end method

.method public isAccAvailable()I
    .locals 2

    .prologue
    .line 241
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "isAccAvailable()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->isAvailable()I

    move-result v0

    goto :goto_0
.end method

.method public pauseAcc()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 191
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "pauseAcc()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v1, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 193
    const-string v1, "Accelerater_Service_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseAcc() error : mCurrentStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return v0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->pause()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 198
    const-string v1, "Accelerater_Service_Manager"

    const-string v2, "pause() == -1"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    .line 203
    const-string v0, "Accelerater_Service_Manager"

    const-string v1, "pauseAcc() success!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeAcc()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 209
    const-string v1, "Accelerater_Service_Manager"

    const-string/jumbo v2, "resumeAcc()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget v1, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 212
    const-string v1, "Accelerater_Service_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeAcc() error : mCurrentStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->resume()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 217
    const-string v1, "Accelerater_Service_Manager"

    const-string/jumbo v2, "resume() == -1"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    .line 222
    const-string v0, "Accelerater_Service_Manager"

    const-string/jumbo v1, "resumeAcc() success!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAcc(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 57
    const-string v8, "Accelerater_Service_Manager"

    const-string/jumbo v9, "startAcc()"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, "flag":I
    iget v8, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    if-eqz v8, :cond_0

    .line 62
    const-string v8, "Accelerater_Service_Manager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startAcc() error : mCurrentStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return v7

    .line 66
    :cond_0
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "cachePath":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v8

    if-lez v8, :cond_5

    .line 69
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/youku/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "f":Ljava/io/File;
    const/4 v6, 0x1

    .line 71
    .local v6, "success":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 75
    :cond_1
    if-eqz v6, :cond_4

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--mobile-data-path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --mobile-meta-path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/youku"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --android-version=android_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/youku/service/acc/AcceleraterServiceManager;->start(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "i":I
    if-nez v3, :cond_3

    .line 81
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->getHttpProxyPort()I

    move-result v5

    .line 82
    .local v5, "port":I
    if-eq v5, v7, :cond_2

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&myp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    .line 84
    const/4 v7, 0x1

    iput v7, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    .line 85
    const-string v7, "Accelerater_Service_Manager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACC\u542f\u52a8\u6210\u529f/PORT\u5730\u5740\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "port":I
    .end local v6    # "success":Z
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_TRACKER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "from"

    const-string v8, "from_acc"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    if-eqz v2, :cond_6

    .line 113
    const-string/jumbo v7, "restrictby"

    sget-object v8, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v7, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const-string v7, "Accelerater_Service_Manager"

    const-string/jumbo v8, "\u7edf\u8ba1\u5931\u8d25\u539f\u56e0"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v7, v2

    .line 124
    goto/16 :goto_0

    .line 87
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "port":I
    .restart local v6    # "success":Z
    :cond_2
    const-string v7, "Accelerater_Service_Manager"

    const-string v8, "ACC\u542f\u52a8\u5931\u8d25/Accstub.getHttpProxyPort()==-1"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, ""

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    .line 90
    const-string v7, "6-\u83b7\u53d6\u7aef\u53e3\u53f7\u5931\u8d25"

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    .line 91
    const/4 v2, -0x1

    goto :goto_1

    .line 94
    .end local v5    # "port":I
    :cond_3
    const-string v7, "Accelerater_Service_Manager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACC\u542f\u52a8\u5931\u8d25/Accstub.start()=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, ""

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    .line 96
    move v2, v3

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "11-\u5176\u4ed6\u56e0\u7d20\u5931\u8d25:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_1

    .line 100
    .end local v3    # "i":I
    :cond_4
    const/4 v2, -0x1

    .line 101
    const-string v7, "10-\u65e0youkudisk\u6587\u4ef6\u5939"

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    goto :goto_1

    .line 105
    .end local v1    # "f":Ljava/io/File;
    .end local v6    # "success":Z
    :cond_5
    const-string v7, "Accelerater_Service_Manager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACC\u542f\u52a8\u5931\u8d25 /cachePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7-\u83b7\u53d6\u7f13\u5b58\u8def\u5f84\u5931\u8d25:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/youku/service/acc/AcceleraterServiceManager;->sFailReason:Ljava/lang/String;

    .line 107
    const/4 v2, -0x1

    goto/16 :goto_1

    .line 118
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v7, "succStartP2p"

    const-string v8, "0-\u52a0\u901f\u5668\u542f\u52a8\u6210\u529f"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v7, "p2pVersion"

    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    const-string v7, "Accelerater_Service_Manager"

    const-string/jumbo v8, "\u7edf\u8ba1\u542f\u52a8\u6210\u529f"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public stopAcc()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "Accelerater_Service_Manager"

    const-string/jumbo v1, "stopAcc()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, ""

    sput-object v0, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/youku/service/acc/AcceleraterServiceManager;->stop()V

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/service/acc/AcceleraterServiceManager;->mCurrentStatus:I

    .line 234
    return-void
.end method
