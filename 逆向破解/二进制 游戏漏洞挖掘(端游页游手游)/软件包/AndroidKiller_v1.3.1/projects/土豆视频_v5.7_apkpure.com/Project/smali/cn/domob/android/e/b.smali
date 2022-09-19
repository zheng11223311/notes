.class public Lcn/domob/android/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:I

.field private static c:Lcn/domob/android/e/b;


# instance fields
.field a:Lcn/domob/android/ads/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x14

    sput v0, Lcn/domob/android/e/b;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/e/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method protected static declared-synchronized a()Lcn/domob/android/e/b;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcn/domob/android/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/e/b;->c:Lcn/domob/android/e/b;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcn/domob/android/e/b;

    invoke-direct {v0}, Lcn/domob/android/e/b;-><init>()V

    sput-object v0, Lcn/domob/android/e/b;->c:Lcn/domob/android/e/b;

    .line 22
    :cond_0
    sget-object v0, Lcn/domob/android/e/b;->c:Lcn/domob/android/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > ? and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 66
    const-string/jumbo v4, "update_time DESC"

    .line 67
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "frequency_id"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7, v1, v2, v4}, Lcn/domob/android/e/a;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v4, "the lines of database query results is %d, and the max upload limited is %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lcn/domob/android/e/b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 75
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sget v4, Lcn/domob/android/e/b;->b:I

    if-le v1, v4, :cond_0

    .line 76
    sget v1, Lcn/domob/android/e/b;->b:I

    .line 80
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v3

    .line 81
    :goto_1
    if-ge v4, v1, :cond_2

    .line 82
    const-string v6, "frequency_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 92
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    mul-int/lit8 v5, v1, 0xa

    if-gt v4, v5, :cond_6

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_4
    :goto_2
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 89
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 92
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 101
    :cond_6
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the length of db query results exceeds the maximum limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 88
    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq maximum uploading number now is assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 27
    sput p1, Lcn/domob/android/e/b;->b:I

    .line 28
    return-void
.end method

.method protected a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 108
    if-nez p2, :cond_1

    .line 109
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "ad response contains array is null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void

    :cond_1
    move v6, v7

    .line 112
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 120
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 122
    aget-object v1, v0, v7

    .line 127
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 129
    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 134
    const-string v0, "frequency_id = ?"

    .line 135
    new-array v8, v11, [Ljava/lang/String;

    aput-object v1, v8, v7

    .line 136
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Lcn/domob/android/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database does not contain the freqid which from ad response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/e/a;->a(Ljava/lang/String;IIJ)Z

    .line 112
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    iget-object v2, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 140
    :cond_3
    if-lez v0, :cond_2

    .line 141
    if-le v0, v11, :cond_4

    .line 142
    iget-object v8, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string v9, "Database contains %d same freqid"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/android/e/a;->a(Ljava/lang/String;)Z

    .line 145
    :cond_4
    const-string v0, "frequency_id= ? and end_time = ?"

    .line 146
    new-array v8, v12, [Ljava/lang/String;

    aput-object v1, v8, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 147
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v9

    invoke-virtual {v9, v0, v8}, Lcn/domob/android/e/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 148
    if-ne v0, v11, :cond_5

    .line 149
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string v4, "ending timestamp is the same, so only update limit number "

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/e/a;->a(Ljava/lang/String;II)Z

    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string v8, "ending timestamp is not the same, so delete the old data, insert new data"

    invoke-virtual {v0, v8}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/android/e/a;->a(Ljava/lang/String;)Z

    .line 154
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/e/a;->a(Ljava/lang/String;IIJ)Z

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    sget v1, Lcn/domob/android/e/b;->b:I

    if-lez v1, :cond_0

    .line 54
    invoke-static {p1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)Lcn/domob/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/e/a;->b()V

    .line 55
    const-string v1, "imp_times"

    const-string v2, "imp_limit_times"

    invoke-direct {p0, p1, v1, v2}, Lcn/domob/android/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 56
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload imp list is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 57
    const-string v1, "click_times"

    const-string v2, "click_limit_times"

    invoke-direct {p0, p1, v1, v2}, Lcn/domob/android/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 58
    iget-object v1, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upload click list is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-object v0
.end method

.method protected b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    sget v0, Lcn/domob/android/e/b;->b:I

    if-lez v0, :cond_1

    move v0, v1

    .line 40
    :goto_0
    if-nez v0, :cond_0

    .line 41
    iget-object v3, p0, Lcn/domob/android/e/b;->a:Lcn/domob/android/ads/c/f;

    const-string v4, "because uploadMaxNum is %s Less than or equal 0, all freq control function is closed."

    new-array v1, v1, [Ljava/lang/Object;

    sget v5, Lcn/domob/android/e/b;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 43
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 39
    goto :goto_0
.end method
