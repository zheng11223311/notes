.class public Lcom/tudou/alipay/util/AlipayUtils;
.super Ljava/lang/Object;
.source "AlipayUtils.java"


# static fields
.field public static currentCallTime:J

.field public static lastCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    sput-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->lastCallTime:J

    .line 32
    sput-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->currentCallTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallEvent()Z
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/tudou/alipay/util/AlipayUtils;->checkCallEvent(J)Z

    move-result v0

    return v0
.end method

.method public static checkCallEvent(J)Z
    .locals 4
    .param p0, "interval"    # J

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->currentCallTime:J

    .line 40
    sget-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->currentCallTime:J

    sget-wide v2, Lcom/tudou/alipay/util/AlipayUtils;->lastCallTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 41
    sget-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->currentCallTime:J

    sput-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->lastCallTime:J

    .line 42
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 44
    :cond_0
    sget-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->currentCallTime:J

    sput-wide v0, Lcom/tudou/alipay/util/AlipayUtils;->lastCallTime:J

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMobileSecurePayInstall(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/data/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "mspHelper":Lcom/tudou/alipay/data/MobileSecurePayHelper;
    invoke-virtual {v0}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result v1

    return v1
.end method

.method public static checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "installed":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 84
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 86
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 87
    .local v3, "pI":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    const/4 v1, 0x1

    .line 92
    .end local v3    # "pI":Landroid/content/pm/PackageInfo;
    :cond_0
    sget-object v5, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPackageInstalled...packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",installed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v1

    .line 85
    .restart local v3    # "pI":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkServicesIsExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 77
    .local v0, "isExist":Z
    :cond_0
    :goto_0
    sget-object v3, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkServicesIsExist...action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isExist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v0

    .line 76
    .end local v0    # "isExist":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkWXAppPayValid(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mIWXAPI"    # Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static getAliPayErrorMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "memo"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0d0018

    .line 114
    const-string v0, ""

    .line 115
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "4000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v1, "4001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    const-string v1, "4003"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "4004"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "4005"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_4
    const-string v1, "4006"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_5
    const-string v1, "4010"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_6
    const-string v1, "6000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v1, "6001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :cond_8
    const-string v1, "6002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_9
    const-string v1, "7001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_a
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public static getDefaultPayment(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v1, "pay"

    invoke-static {p0, v1}, Lcom/tudou/alipay/util/AlipayUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "payment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v0, "alipay"

    .line 216
    :cond_0
    return-object v0
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 227
    if-eqz p0, :cond_1

    .line 228
    const-string v2, "payment"

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-object v1

    .line 228
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 231
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 64
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v3, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersionCode...packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",versionCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWalletExist(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {p0, v1}, Lcom/tudou/alipay/util/AlipayUtils;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {p0, v1}, Lcom/tudou/alipay/util/AlipayUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x25

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, "isWalletExist":Z
    :goto_0
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWalletExist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v0

    .line 97
    .end local v0    # "isWalletExist":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 221
    const-string v2, "payment"

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 221
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static test(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "test"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v0, "MIICWwIBAAKBgQDC5076iBy3+XjJWAuaozEotXte8AP45P0YT5ZZXOvpIe/YE8CrWnx1oOod8Ssf2AdxIiO2EBHLSsBAKVJvVSPStM2tAH9YVbGFzsdwm5zjsPUMyLdWNX6oens5VJLdLVuW8qrHGSTRnimcPEGxVh29Cuy9/4oMGHmE7roWwJ6McwIDAQABAoGAKbNf3I6exmYkB8BEy1M7Q2CBAvELiIdF95ufqYMOHpVaQbsIMCFuG6TQMpPVDD0manhJd7y8ceiOdavhrVxkC2NKCJAR0Xw0HUST0DDVtyFbXrz2ZOPaEHLOAy9vUOuDpAizSJIe+sFLCYb3uc3sJfeVVjaQ2q2eG3bDjC10VPECQQDt0G+jhpEIVNR3qPGBw36/iJFD93OmUUDPY26KP+LpzvMm60iBVLXs4egC1mMl1bGAkFeHP3m2ZtOkkb2cGZ8fAkEA0c7VQn39amXnZ61AnRUYbTJ/F0J/mgqHT2XSpqQIRSVQNYFTCunVp1DH8Rk1LtJcwKuHqbY6oZfW63VNefPsLQJAZwplFMl9lcqLtL0yxzLZfEvEBVr2dR3HoxRGFQjRXNUabcaMR91YZicLzA7wLriEjFv+UM+kAPBUy32KVlSTqQJAHfO1JkTuRJ4/puFo9APq9MvcsOlhZhBSuNcEd527QIPPK5RG0qwHQFeb86NxoDmP3EGgoG3PePpASGT6popYEQJAHCsv8NRRe/qztdK0YRZbYFrmqJnBmvvKYXkmBcTmegH7CM7PvgGS51Wls9cx2tQXn/SYmScuRd12SKid7HC2ug=="

    .line 105
    .local v0, "key":Ljava/lang/String;
    const-string v3, "&total_fee=\"[\\d.]+\""

    const-string v4, "&total_fee=\"0.01\""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    const/4 v3, 0x0

    const-string v4, "&sign="

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&sign=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/alipay/android/app/encrypt/Rsa;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, "&sign_type=\"RSA\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
