.class Lcn/domob/android/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "pb[update]"

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String; = "ipb"

.field static final d:Ljava/lang/String; = "info_md5"

.field static final e:Ljava/lang/String; = "n"

.field static final f:Ljava/lang/String; = "nt"

.field static final g:Ljava/lang/String; = "vc"

.field static final h:Ljava/lang/String; = "vn"

.field static final i:Ljava/lang/String; = "u"

.field static final j:Ljava/lang/String; = "s"

.field static final k:Ljava/lang/String; = "md5"

.field static final l:Ljava/lang/String; = "ul"

.field static final m:Ljava/lang/String; = "f"

.field static final n:Ljava/lang/String; = "sk"

.field static final o:Ljava/lang/String; = "nrt"

.field static final p:Ljava/lang/String; = "nri"

.field static final q:Ljava/lang/String; = "next_time"

.field static final r:Ljava/lang/String; = "skip_vc"

.field private static s:Lcn/domob/android/ads/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_update_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lcn/domob/android/ads/q;

    invoke-direct {v1}, Lcn/domob/android/ads/q;-><init>()V

    .line 47
    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/q;->b(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v0, 0x1

    .line 54
    :goto_0
    sget-object v1, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraInfo parse and update/non-update result return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 55
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    sget-object v2, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/StringBuilder;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 148
    const-string v2, "info_md5"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/android/ads/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    if-eqz v2, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    :cond_0
    const-string v2, "info_md5"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v0, 0x1

    .line 161
    :cond_1
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 18

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 66
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONTokener;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    sget-object v3, Lcn/domob/android/ads/q;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 72
    monitor-enter v3

    .line 74
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 75
    const-string v5, "ipb"

    invoke-static {}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/c;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    const-string v5, "pb[update]"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    const-string v5, "n"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string v6, "nt"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 82
    const-string/jumbo v7, "vc"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    const-string/jumbo v8, "vn"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    const-string/jumbo v9, "u"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    const-string/jumbo v10, "s"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    const-string v11, "md5"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 87
    const-string/jumbo v12, "ul"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    const-string v13, "f"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 89
    const-string/jumbo v14, "sk"

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 90
    const-string v15, "nrt"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 92
    const-string v16, "nri"

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    .line 97
    const-string v16, "^(\\d)+$"

    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 99
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-nez v16, :cond_0

    .line 100
    sget-object v2, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version code\u5728\u5339\u914d\u6b63\u5219\u8868\u8fbe\u5f0f\u65f6\u5931\u8d25\uff0c\u4e0d\u7b26\u5408version code\u89c4\u5219\uff0cversion code\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    return v2

    .line 67
    :catch_0
    move-exception v2

    .line 68
    sget-object v4, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    invoke-virtual {v4, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move-object v2, v3

    goto/16 :goto_0

    .line 104
    :cond_0
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcn/domob/android/ads/q;->a(Landroid/content/SharedPreferences;Ljava/lang/StringBuilder;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 110
    sget-object v16, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    const-string/jumbo v17, "\u66f4\u65b0\u672c\u5730\u66f4\u65b0\u4fe1\u606f"

    invoke-virtual/range {v16 .. v17}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 112
    const-string v16, "n"

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v5, "nt"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string/jumbo v5, "vc"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string/jumbo v5, "vn"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string/jumbo v5, "u"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string/jumbo v5, "s"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v5, "md5"

    invoke-interface {v4, v5, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string/jumbo v5, "ul"

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v5, "f"

    invoke-interface {v4, v5, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string/jumbo v5, "sk"

    invoke-interface {v4, v5, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v5, "nrt"

    invoke-interface {v4, v5, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v5, "nri"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v2, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    :cond_1
    :goto_2
    monitor-exit v3

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 129
    :cond_2
    sget-object v2, Lcn/domob/android/ads/q;->s:Lcn/domob/android/ads/c/f;

    const-string/jumbo v4, "\u4e0d\u9700\u8981\u9700\u8981\u66f4\u65b0\u672c\u5730\u66f4\u65b0\u4fe1\u606f"

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
