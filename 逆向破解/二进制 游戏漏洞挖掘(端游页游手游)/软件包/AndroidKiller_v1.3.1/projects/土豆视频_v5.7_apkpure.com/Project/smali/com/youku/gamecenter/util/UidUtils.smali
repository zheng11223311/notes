.class public Lcom/youku/gamecenter/util/UidUtils;
.super Ljava/lang/Object;
.source "UidUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageNameByApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "com.youku.phone.Youku"

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.tudou.android.Youku"

    goto :goto_0
.end method

.method public static getUId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 38
    const-string v4, ""

    .line 41
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/util/UidUtils;->getYoukuClass()Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "getPreference"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "0"

    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 44
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "GameCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URLContainer->getUId() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUidPara()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    invoke-static {}, Lcom/youku/gamecenter/util/UidUtils;->isLogined()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    const-string v1, ""

    .line 20
    .local v0, "uid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 16
    .end local v0    # "uid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/util/UidUtils;->getUId()Ljava/lang/String;

    move-result-object v0

    .line 17
    .restart local v0    # "uid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    const-string v1, "&uid=0"

    goto :goto_0

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getYoukuClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/youku/gamecenter/util/UidUtils;->getPackageNameByApp()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "packagename":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "cls":Ljava/lang/Class;
    return-object v0
.end method

.method public static isLogined()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/util/UidUtils;->getYoukuClass()Ljava/lang/Class;

    move-result-object v0

    .line 27
    .local v0, "cls":Ljava/lang/Class;
    const-string v4, "getPreferenceBoolean"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 28
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "isLogined"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 33
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "GameCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URLContainer->isLogined() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
