.class public Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll/a;->a:Z

    .line 30
    return-void
.end method

.method private a([Ljava/lang/String;ILandroid/database/Cursor;Ljava/util/regex/Pattern;IIIIII)Ljava/lang/String;
    .locals 14

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 94
    :cond_0
    iget-boolean v3, p0, Ll/a;->a:Z

    if-eqz v3, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-object v2

    .line 97
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 106
    move-object/from16 v0, p3

    move/from16 v1, p10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 108
    iget-wide v12, p0, Ll/a;->b:J

    sub-long/2addr v8, v12

    .line 109
    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-gtz v3, :cond_4

    .line 129
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 113
    :cond_4
    const/4 v3, 0x0

    .line 114
    array-length v8, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_5

    aget-object v9, p1, v4

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 116
    const/4 v3, 0x1

    .line 121
    :cond_5
    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-ne v7, v3, :cond_3

    if-nez v10, :cond_3

    .line 122
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 114
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILb/m;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-virtual/range {p5 .. p5}, Lb/m;->i()J

    move-result-wide v0

    iput-wide v0, p0, Ll/a;->b:J

    .line 50
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 52
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "address"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "person"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "body"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "date_sent"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "protocol"

    aput-object v3, v2, v0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc limit 5"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 59
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "address"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 65
    const-string v0, "body"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 67
    const-string v0, "date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 68
    const-string v0, "date_sent"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 70
    const-string/jumbo v0, "type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 72
    const-string v0, "protocol"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p4

    move-object v4, v12

    .line 74
    invoke-direct/range {v0 .. v10}, Ll/a;->a([Ljava/lang/String;ILandroid/database/Cursor;Ljava/util/regex/Pattern;IIIIII)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 81
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_0
    :goto_1
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    move-object v3, v6

    .line 79
    :goto_2
    :try_start_2
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v1

    const-string v2, "can not read sms"

    invoke-virtual {v1, v0, v2}, Lf/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    .line 83
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_1
    throw v0

    .line 81
    :catchall_1
    move-exception v0

    move-object v6, v3

    goto :goto_3

    .line 78
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v11

    goto :goto_1

    :cond_3
    move-object v0, v11

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/a;->a:Z

    .line 34
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Ll/a;->a:Z

    .line 38
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Ll/a;->a:Z

    return v0
.end method
