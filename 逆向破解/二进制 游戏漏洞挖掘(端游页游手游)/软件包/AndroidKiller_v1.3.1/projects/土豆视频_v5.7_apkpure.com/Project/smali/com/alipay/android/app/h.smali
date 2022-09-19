.class public Lcom/alipay/android/app/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    const-string v0, "alipay"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 34
    invoke-static {}, Lcom/alipay/android/mini/util/h;->a()V

    .line 35
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v5

    .line 37
    invoke-static {p0}, Lj/k;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-static {v8}, Lj/c;->a(Ljava/lang/String;)I

    move-result v9

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 46
    :try_start_0
    invoke-virtual {v5, v9}, Lb/b;->a(I)Z

    move-result v10

    .line 48
    if-eqz v10, :cond_10

    .line 50
    invoke-virtual {v5, v9}, Lb/b;->b(I)Lb/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 51
    if-eqz v4, :cond_f

    .line 52
    if-eqz v10, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lb/a;->k()I

    move-result v11

    if-eq v11, v0, :cond_3

    move v0, v1

    .line 54
    :goto_0
    if-nez v0, :cond_e

    .line 56
    invoke-virtual {v5, v9}, Lb/b;->c(I)Lb/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 57
    if-eqz v4, :cond_4

    :goto_1
    move v0, v1

    move-object v1, v4

    .line 60
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 61
    :try_start_2
    invoke-static {v5, v1}, Lb/b;->a(Lb/b;Lb/a;)V

    .line 64
    :cond_0
    invoke-virtual {v5, v9}, Lb/b;->b(I)Lb/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 65
    :try_start_3
    invoke-virtual {v2, v8}, Lb/a;->a(Ljava/lang/String;)V

    .line 67
    if-eqz v10, :cond_5

    if-nez v0, :cond_5

    .line 69
    invoke-virtual {v2}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0}, Lo/d;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4000"

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 97
    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v3, v2}, Lb/d;->b(Lb/a;)V

    .line 100
    :cond_1
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2}, Lb/a;->g()V

    .line 104
    :cond_2
    invoke-virtual {v5, v9}, Lb/b;->d(I)V

    .line 114
    :goto_3
    return-object v0

    :cond_3
    move v0, v2

    .line 52
    goto :goto_0

    :cond_4
    move v1, v2

    .line 57
    goto :goto_1

    .line 75
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0}, Lo/d;->a()V

    .line 77
    invoke-virtual {v5}, Lb/b;->b()V

    .line 80
    invoke-virtual {v2}, Lb/a;->c()Lb/g;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v8, v6, v7}, Lb/g;->a(Ljava/lang/String;J)V

    .line 83
    invoke-virtual {v2}, Lb/a;->n()Lb/d;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    .line 84
    if-eqz v1, :cond_6

    .line 85
    :try_start_5
    invoke-interface {v1, v2}, Lb/d;->a(Lb/a;)V

    .line 88
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lb/g;->f()Z

    move-result v4

    if-nez v4, :cond_9

    .line 89
    invoke-virtual {v2}, Lb/a;->d()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :goto_5
    :try_start_6
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v4

    const-string v8, "crash"

    invoke-virtual {v4, v0, v8}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 97
    if-eqz v1, :cond_7

    .line 98
    invoke-interface {v1, v2}, Lb/d;->b(Lb/a;)V

    .line 100
    :cond_7
    if-eqz v2, :cond_8

    .line 101
    invoke-virtual {v2}, Lb/a;->g()V

    .line 104
    :cond_8
    invoke-virtual {v5, v9}, Lb/b;->d(I)V

    move-object v0, v3

    .line 111
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 112
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v4, "pay time span"

    invoke-virtual {v1, v2, v3, v4}, Lf/c;->d(JLjava/lang/String;)V

    .line 113
    const-string v1, "alipay"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 92
    :cond_9
    :try_start_7
    invoke-virtual {v0}, Lb/g;->c()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v0

    .line 97
    if-eqz v1, :cond_a

    .line 98
    invoke-interface {v1, v2}, Lb/d;->b(Lb/a;)V

    .line 100
    :cond_a
    if-eqz v2, :cond_b

    .line 101
    invoke-virtual {v2}, Lb/a;->g()V

    .line 104
    :cond_b
    invoke-virtual {v5, v9}, Lb/b;->d(I)V

    goto :goto_6

    .line 97
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_7
    if-eqz v3, :cond_c

    .line 98
    invoke-interface {v3, v2}, Lb/d;->b(Lb/a;)V

    .line 100
    :cond_c
    if-eqz v2, :cond_d

    .line 101
    invoke-virtual {v2}, Lb/a;->g()V

    .line 104
    :cond_d
    invoke-virtual {v5, v9}, Lb/b;->d(I)V

    throw v0

    .line 97
    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto :goto_7

    .line 93
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :cond_e
    move-object v1, v4

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    move v0, v2

    move-object v4, v3

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string/jumbo v1, "resultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "memo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->c()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v1

    .line 135
    instance-of v1, v1, Lcom/alipay/android/app/pay/channel/AliChannelInfo;

    if-eqz v1, :cond_0

    const-string v1, "6002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "netError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lcom/alipay/android/mini/util/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-static {}, Lcom/alipay/android/mini/util/h;->c()J

    move-result-wide v2

    .line 144
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 145
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "openTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
