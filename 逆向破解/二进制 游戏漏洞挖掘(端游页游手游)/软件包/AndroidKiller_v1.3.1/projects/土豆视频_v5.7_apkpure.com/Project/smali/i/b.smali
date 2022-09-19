.class public Li/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SharedPref"

.field private static final b:Ljava/lang/String; = "tid"

.field private static final c:Ljava/lang/String; = "key"

.field private static final d:Ljava/lang/String; = "tidTimeStamp"

.field private static final e:Ljava/lang/String; = "shared"

.field private static f:Li/b;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Li/b;
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 48
    :cond_1
    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    .line 49
    iput-object p0, v0, Li/b;->g:Ljava/lang/String;

    .line 50
    iput-object p1, v0, Li/b;->h:Ljava/lang/String;

    .line 51
    iput-wide p2, v0, Li/b;->i:J

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 240
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 242
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x46

    if-gt v2, v3, :cond_0

    .line 240
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized g()Li/b;
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 123
    const-class v8, Li/b;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v9

    .line 124
    new-instance v10, Li/a;

    invoke-direct {v10, v9}, Li/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    const-string v0, "SharedPref"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v0

    .line 134
    :try_start_2
    const-string/jumbo v1, "sharedtid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 135
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "sharedtid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    const-string/jumbo v1, "sharedkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v1

    .line 137
    :try_start_4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "sharedkey"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 139
    :try_start_5
    const-string/jumbo v2, "sharedtidTimeStamp"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-wide v2

    .line 144
    :goto_0
    :try_start_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v11, "sharedtidTimeStamp"

    invoke-interface {v0, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 149
    :try_start_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {v9}, Lh/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/app/encrypt/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    :cond_0
    invoke-static {v7}, Li/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    .line 161
    :cond_1
    :goto_1
    invoke-static {v9}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v0

    invoke-virtual {v0}, Lh/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v9}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v9

    invoke-virtual {v9}, Lh/a;->c()Ljava/lang/String;

    move-result-object v9

    .line 164
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 165
    :cond_2
    invoke-virtual {v10, v0, v9}, Li/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {v7}, Li/b;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 168
    invoke-virtual {v10, v0, v9}, Li/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v10, v0, v9}, Li/a;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v2

    .line 182
    :goto_2
    :try_start_8
    invoke-virtual {v10}, Li/a;->close()V

    .line 183
    invoke-static {}, Li/b;->k()V

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Li/b;->f:Li/b;

    iget-object v0, v0, Li/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    sget-object v0, Li/b;->f:Li/b;

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    .line 192
    :cond_3
    :goto_3
    sget-object v0, Li/b;->f:Li/b;

    iput-wide v2, v0, Li/b;->i:J

    .line 193
    sget-object v0, Li/b;->f:Li/b;

    iput-object v7, v0, Li/b;->g:Ljava/lang/String;

    .line 196
    :goto_4
    sget-object v0, Li/b;->f:Li/b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v8

    return-object v0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-wide v2

    goto/16 :goto_0

    .line 145
    :catch_1
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    .line 146
    :goto_5
    :try_start_a
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 149
    :try_start_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    invoke-static {v9}, Lh/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/app/encrypt/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    :cond_4
    invoke-static {v7}, Li/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    .line 156
    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    :goto_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 150
    invoke-static {v9}, Lh/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/android/app/encrypt/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    :cond_5
    invoke-static {v7}, Li/b;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    .line 156
    :cond_6
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 179
    :catch_2
    move-exception v0

    .line 180
    :goto_7
    :try_start_c
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v4

    const-string v5, "read tid fail"

    invoke-virtual {v4, v0, v5}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 182
    :try_start_d
    invoke-virtual {v10}, Li/a;->close()V

    .line 183
    invoke-static {}, Li/b;->k()V

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Li/b;->f:Li/b;

    iget-object v0, v0, Li/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    sget-object v0, Li/b;->f:Li/b;

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    .line 192
    :cond_7
    :goto_8
    sget-object v0, Li/b;->f:Li/b;

    iput-wide v2, v0, Li/b;->i:J

    .line 193
    sget-object v0, Li/b;->f:Li/b;

    iput-object v7, v0, Li/b;->g:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 123
    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    .line 171
    :cond_8
    :try_start_e
    invoke-virtual {v10, v0, v9}, Li/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    .line 174
    goto/16 :goto_2

    .line 177
    :cond_9
    invoke-virtual {v10, v0, v9, v7, v1}, Li/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_2

    .line 182
    :catchall_2
    move-exception v0

    :goto_9
    :try_start_f
    invoke-virtual {v10}, Li/a;->close()V

    .line 183
    invoke-static {}, Li/b;->k()V

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Li/b;->f:Li/b;

    iget-object v4, v4, Li/b;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 185
    sget-object v1, Li/b;->f:Li/b;

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Li/b;->h:Ljava/lang/String;

    .line 192
    :cond_a
    :goto_a
    sget-object v1, Li/b;->f:Li/b;

    iput-wide v2, v1, Li/b;->i:J

    .line 193
    sget-object v1, Li/b;->f:Li/b;

    iput-object v7, v1, Li/b;->g:Ljava/lang/String;

    throw v0

    .line 186
    :cond_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Li/b;->f:Li/b;

    iget-object v0, v0, Li/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_c
    sget-object v0, Li/b;->f:Li/b;

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    goto/16 :goto_3

    .line 186
    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Li/b;->f:Li/b;

    iget-object v0, v0, Li/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :cond_e
    sget-object v0, Li/b;->f:Li/b;

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    goto :goto_8

    .line 186
    :cond_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Li/b;->f:Li/b;

    iget-object v4, v4, Li/b;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    :cond_10
    sget-object v4, Li/b;->f:Li/b;

    iput-object v1, v4, Li/b;->h:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    .line 182
    :catchall_3
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    goto :goto_9

    .line 179
    :catch_3
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    move-object v7, v6

    goto/16 :goto_7

    .line 149
    :catchall_4
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    goto/16 :goto_6

    .line 145
    :catch_4
    move-exception v0

    move-wide v2, v4

    move-object v1, v6

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_5
.end method

.method public static h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    sget-object v0, Li/b;->f:Li/b;

    iput-object v4, v0, Li/b;->g:Ljava/lang/String;

    .line 202
    sget-object v0, Li/b;->f:Li/b;

    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    .line 203
    sget-object v0, Li/b;->f:Li/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Li/b;->i:J

    .line 204
    sput-object v4, Li/b;->f:Li/b;

    .line 206
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v1

    invoke-virtual {v1}, Lh/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v2

    invoke-virtual {v2}, Lh/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Li/a;

    invoke-direct {v3, v0}, Li/a;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v3, v1, v2}, Li/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Li/a;->close()V

    .line 214
    return-void
.end method

.method public static i()Ljava/util/List;
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 218
    new-instance v1, Li/a;

    invoke-direct {v1, v0}, Li/a;-><init>(Landroid/content/Context;)V

    .line 220
    :try_start_0
    invoke-virtual {v1}, Li/a;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 224
    invoke-virtual {v1}, Li/a;->close()V

    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const/4 v0, 0x0

    .line 224
    invoke-virtual {v1}, Li/a;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Li/a;->close()V

    throw v0
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    return-object v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Li/b;->f:Li/b;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    sput-object v0, Li/b;->f:Li/b;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Li/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Li/b;->i:J

    .line 81
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li/b;->g:Ljava/lang/String;

    invoke-static {v0}, Li/b;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-static {}, Li/b;->k()V

    .line 98
    sget-object v0, Li/b;->f:Li/b;

    iget-object v1, p0, Li/b;->g:Ljava/lang/String;

    iput-object v1, v0, Li/b;->g:Ljava/lang/String;

    .line 99
    sget-object v0, Li/b;->f:Li/b;

    iget-object v1, p0, Li/b;->h:Ljava/lang/String;

    iput-object v1, v0, Li/b;->h:Ljava/lang/String;

    .line 100
    sget-object v0, Li/b;->f:Li/b;

    iget-wide v2, p0, Li/b;->i:J

    iput-wide v2, v0, Li/b;->i:J

    .line 101
    new-instance v1, Li/a;

    invoke-direct {v1, p1}, Li/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-static {p1}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v0

    invoke-virtual {v0}, Lh/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v2

    invoke-virtual {v2}, Lh/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 105
    sget-object v3, Li/b;->f:Li/b;

    iget-object v3, v3, Li/b;->g:Ljava/lang/String;

    sget-object v4, Li/b;->f:Li/b;

    iget-object v4, v4, Li/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Li/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :try_start_3
    invoke-virtual {v1}, Li/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string/jumbo v3, "save tid error"

    invoke-virtual {v2, v0, v3}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :try_start_5
    invoke-virtual {v1}, Li/a;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Li/a;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Li/b;->g:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Li/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Li/b;->h:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Li/b;->i:J

    return-wide v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Li/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/b;->h:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Li/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Li/b;->f:Li/b;

    iget-object v0, v0, Li/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
