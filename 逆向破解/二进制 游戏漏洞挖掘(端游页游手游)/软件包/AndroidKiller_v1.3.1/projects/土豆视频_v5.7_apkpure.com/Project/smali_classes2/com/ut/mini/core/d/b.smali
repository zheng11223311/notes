.class public Lcom/ut/mini/core/d/b;
.super Ljava/lang/Object;
.source "UTMCLogAssemble.java"


# static fields
.field private static s_default_session_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ut/mini/core/d/b;->s_default_session_timestamp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _checkField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pField"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string p0, "-"

    .line 23
    .end local p0    # "pField":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static assemble(Ljava/util/Map;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_18

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_18

    .line 39
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->i()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 41
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->USERNICK:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->i()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 47
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->LL_USERNICK:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->f()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->j()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 52
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->USERID:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->j()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->g()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 58
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->LL_USERID:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->g()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->SDKVERSION:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 63
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->SDKVERSION:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->c()Lcom/ut/mini/base/IUTMCBuildInfo;

    move-result-object v14

    invoke-interface {v14}, Lcom/ut/mini/base/IUTMCBuildInfo;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_4
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->APPKEY:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 69
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->APPKEY:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->l()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_5
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->h()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 75
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->CHANNEL:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->h()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_6
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 81
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->APPVERSION:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ut/mini/base/c;->b()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_7
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->RECORD_TIMESTAMP:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 88
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->RECORD_TIMESTAMP:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_8
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 96
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v16, Lcom/ut/mini/core/d/b;->s_default_session_timestamp:J

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_9
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->k()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/core/a;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 103
    .local v3, "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_18

    .line 105
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v5, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 111
    .local v7, "lOKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, "lKey":Ljava/lang/String;
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->BRAND:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->DEVICE_MODEL:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->RESOLUTION:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->OS:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->OSVERSION:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->UTDID:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 124
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 126
    .local v12, "lValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    if-eqz v12, :cond_a

    .line 127
    invoke-interface {v5, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v12    # "lValue":Ljava/lang/String;
    :cond_b
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->RESERVES:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 134
    .local v8, "lReserves":Ljava/lang/String;
    const-string v13, "_mac"

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .local v6, "lMacStr":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 136
    if-eqz v8, :cond_13

    .line 137
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",_mac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    :goto_1
    const-string v13, "_mac"

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_c
    sget-object v13, Lcom/ut/mini/base/b;->a:Lcom/ut/mini/base/b;

    invoke-virtual {v13}, Lcom/ut/mini/base/b;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, "lDeviceId":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 148
    if-eqz v8, :cond_14

    .line 149
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",_did="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    :goto_2
    sget-object v13, Lcom/ut/mini/base/b;->a:Lcom/ut/mini/base/b;

    invoke-virtual {v13}, Lcom/ut/mini/base/b;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_d
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->k()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/ut/mini/core/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "lUMID":Ljava/lang/String;
    if-eqz v11, :cond_f

    .line 161
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->UTDID:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 163
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->UTDID:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 165
    const-string v11, "utdid"

    .line 168
    :cond_e
    if-eqz v8, :cond_15

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",_umid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 175
    :cond_f
    :goto_3
    invoke-static {}, Lcom/ut/mini/base/c;->a()Lcom/ut/mini/base/c;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/base/c;->n()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 176
    if-eqz v8, :cond_16

    .line 177
    const-string v13, "%s,_io=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    const-string v16, "1"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 183
    :cond_10
    :goto_4
    invoke-static {}, Lcom/ut/mini/core/e;->a()Lcom/ut/mini/core/e;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/core/e;->b()Ljava/util/Map;

    move-result-object v9

    .line 184
    .local v9, "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_11

    .line 185
    invoke-static {v9}, Lcom/ut/mini/d/m;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "lSessionPropertiesStr":Ljava/lang/String;
    invoke-static {v10}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 187
    if-eqz v8, :cond_17

    .line 188
    const-string v13, "%s,%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .end local v10    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_11
    :goto_5
    if-eqz v8, :cond_12

    .line 197
    sget-object v13, Lcom/ut/mini/base/UTLogFieldsScheme;->RESERVES:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v13}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_12
    invoke-static {v5}, Lcom/ut/mini/core/d/b;->assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 204
    .end local v2    # "lDeviceId":Ljava/lang/String;
    .end local v3    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lMacStr":Ljava/lang/String;
    .end local v7    # "lOKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "lReserves":Ljava/lang/String;
    .end local v9    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "lUMID":Ljava/lang/String;
    :goto_6
    return-object v13

    .line 139
    .restart local v3    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "lMacStr":Ljava/lang/String;
    .restart local v7    # "lOKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "lReserves":Ljava/lang/String;
    :cond_13
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_mac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 151
    .restart local v2    # "lDeviceId":Ljava/lang/String;
    :cond_14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_did="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 171
    .restart local v11    # "lUMID":Ljava/lang/String;
    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_umid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 179
    :cond_16
    const-string v13, "_io=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "1"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 191
    .restart local v9    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_17
    move-object v8, v10

    goto :goto_5

    .line 204
    .end local v2    # "lDeviceId":Ljava/lang/String;
    .end local v3    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lMacStr":Ljava/lang/String;
    .end local v7    # "lOKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "lReserves":Ljava/lang/String;
    .end local v9    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "lSessionPropertiesStr":Ljava/lang/String;
    .end local v11    # "lUMID":Ljava/lang/String;
    :cond_18
    const/4 v13, 0x0

    goto :goto_6
.end method

.method public static assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v7, p0

    .line 215
    .local v7, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v9, "lSb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/ut/mini/base/UTLogFieldsScheme;->values()[Lcom/ut/mini/base/UTLogFieldsScheme;

    move-result-object v0

    .local v0, "arr$":[Lcom/ut/mini/base/UTLogFieldsScheme;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v11, :cond_0

    aget-object v3, v0, v1

    .line 219
    .local v3, "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    sget-object v12, Lcom/ut/mini/base/UTLogFieldsScheme;->ARGS:Lcom/ut/mini/base/UTLogFieldsScheme;

    if-ne v3, v12, :cond_3

    .line 232
    .end local v3    # "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    :cond_0
    const/4 v4, 0x1

    .line 235
    .local v4, "lIsFirstArgFlag":Z
    sget-object v12, Lcom/ut/mini/base/UTLogFieldsScheme;->ARGS:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v12}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 236
    sget-object v12, Lcom/ut/mini/base/UTLogFieldsScheme;->ARGS:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v12}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/ut/mini/d/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "lArgs":Ljava/lang/String;
    invoke-static {v2}, Lcom/ut/mini/core/d/b;->_checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v12, Lcom/ut/mini/base/UTLogFieldsScheme;->ARGS:Lcom/ut/mini/base/UTLogFieldsScheme;

    invoke-virtual {v12}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v4, 0x0

    .line 244
    .end local v2    # "lArgs":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 245
    .local v5, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 246
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 247
    .local v6, "lKey":Ljava/lang/String;
    const/4 v10, 0x0

    .line 248
    .local v10, "lV":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 249
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/ut/mini/d/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 253
    :cond_2
    if-eqz v4, :cond_6

    .line 255
    const-string v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 256
    const-string v12, "StackTrace=====>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 223
    .end local v4    # "lIsFirstArgFlag":Z
    .end local v5    # "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lKey":Ljava/lang/String;
    .end local v10    # "lV":Ljava/lang/String;
    .restart local v3    # "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    :cond_3
    const/4 v10, 0x0

    .line 224
    .restart local v10    # "lV":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 225
    invoke-virtual {v3}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/ut/mini/d/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 227
    invoke-virtual {v3}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_4
    invoke-static {v10}, Lcom/ut/mini/core/d/b;->_checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 258
    .end local v3    # "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    .restart local v4    # "lIsFirstArgFlag":Z
    .restart local v5    # "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "lKey":Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Lcom/ut/mini/core/d/b;->_checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 264
    :cond_6
    const-string v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 265
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "StackTrace=====>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 267
    :cond_7
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v6}, Lcom/ut/mini/core/d/b;->_checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 274
    .end local v6    # "lKey":Ljava/lang/String;
    .end local v10    # "lV":Ljava/lang/String;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "lLogResult":Ljava/lang/String;
    invoke-static {v8}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 276
    const-string v12, "||"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    :cond_9
    return-object v8
.end method

.method public static disassemble(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "pLogContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p0}, Lcom/ut/mini/d/m;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 292
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v2, "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "\\|\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "lSplitResult":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v7, v5

    if-lez v7, :cond_2

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "lLIndex":I
    invoke-static {}, Lcom/ut/mini/base/UTLogFieldsScheme;->values()[Lcom/ut/mini/base/UTLogFieldsScheme;

    move-result-object v0

    .local v0, "arr$":[Lcom/ut/mini/base/UTLogFieldsScheme;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    .line 298
    .local v3, "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    array-length v7, v5

    if-ge v4, v7, :cond_0

    aget-object v7, v5, v4

    if-eqz v7, :cond_0

    .line 300
    invoke-virtual {v3}, Lcom/ut/mini/base/UTLogFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v4

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "arr$":[Lcom/ut/mini/base/UTLogFieldsScheme;
    .end local v1    # "i$":I
    .end local v2    # "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "lEnumKey":Lcom/ut/mini/base/UTLogFieldsScheme;
    .end local v4    # "lLIndex":I
    .end local v5    # "lSplitResult":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method
