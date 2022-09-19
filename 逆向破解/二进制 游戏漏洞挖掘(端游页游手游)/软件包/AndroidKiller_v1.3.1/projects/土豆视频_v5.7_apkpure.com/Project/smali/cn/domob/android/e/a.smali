.class Lcn/domob/android/e/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/e/a$a;,
        Lcn/domob/android/e/a$b;
    }
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "Freq.db"

.field private static e:Lcn/domob/android/e/a; = null

.field private static final f:Ljava/lang/String; = " TEXT"

.field private static final g:Ljava/lang/String; = " LONG"

.field private static final h:Ljava/lang/String; = " INTEGER"

.field private static final i:Ljava/lang/String; = ","

.field private static final j:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );"

.field private static final k:Ljava/lang/String; = "DROP TABLE IF EXISTS freq"


# instance fields
.field a:Lcn/domob/android/ads/c/f;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Freq.db"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/e/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    .line 23
    iput-object v3, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcn/domob/android/e/a;
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcn/domob/android/e/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    invoke-direct {v0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Lcn/domob/android/e/a;

    invoke-direct {v0, p0}, Lcn/domob/android/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    .line 72
    :cond_1
    sget-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcn/domob/android/e/a$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert a new data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 207
    const-string v2, "frequency_id"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "imp_times"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v2, "imp_limit_times"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "click_times"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v2, "click_limit_times"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "end_time"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string/jumbo v2, "update_time"

    invoke-virtual {p1}, Lcn/domob/android/e/a$a;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    iget-object v2, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "freq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 215
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert: failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "insert successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private c(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 303
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 305
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 308
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 312
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 313
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 315
    aget-object v2, v2, v1

    .line 316
    const-string v4, "frequency_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 320
    const-string v2, " or "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v4

    .line 310
    iget-object v5, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v5, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 325
    :cond_1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "freq database is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 180
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "freq"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 186
    if-eqz v1, :cond_2

    .line 187
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 193
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v0, v8

    .line 197
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 191
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 193
    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 190
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-object v5

    .line 355
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 356
    const-string v1, "freq"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "empty database"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "freq"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "imp Times of current ad Add One"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "freqJSONArray is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 266
    const-string/jumbo v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "imp_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "imp_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " + 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcn/domob/android/e/a;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    :goto_0
    return v0

    .line 333
    :cond_0
    iget-object v2, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted from DB which freqId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 334
    const-string v2, "frequency_id= ?"

    .line 335
    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v0

    .line 336
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "freq"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    .line 337
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;II)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return v0

    .line 240
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 241
    const-string v3, "imp_limit_times"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v3, "click_limit_times"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    iget-object v3, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update DB, and the updated content is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 244
    const-string v3, "frequency_id = ? and end_time > ?"

    .line 245
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 246
    iget-object v5, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "freq"

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 247
    if-ne v2, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v2, "update BD successfully"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update DB failed and the affected row number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;IIJ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    new-instance v0, Lcn/domob/android/e/a$a;

    invoke-direct {v0, p0}, Lcn/domob/android/e/a$a;-><init>(Lcn/domob/android/e/a;)V

    .line 226
    invoke-virtual {v0, p1}, Lcn/domob/android/e/a$a;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v1}, Lcn/domob/android/e/a$a;->a(I)V

    .line 228
    invoke-virtual {v0, p2}, Lcn/domob/android/e/a$a;->b(I)V

    .line 229
    invoke-virtual {v0, v1}, Lcn/domob/android/e/a$a;->c(I)V

    .line 230
    invoke-virtual {v0, p3}, Lcn/domob/android/e/a$a;->d(I)V

    .line 231
    invoke-virtual {v0, p4, p5}, Lcn/domob/android/e/a$a;->a(J)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/e/a$a;->b(J)V

    .line 233
    invoke-direct {p0, v0}, Lcn/domob/android/e/a;->a(Lcn/domob/android/e/a$a;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 341
    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "delete expired data from DB"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 345
    const-string v0, "end_time < ?"

    .line 346
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 347
    iget-object v2, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "freq"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected b(Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "click Times of current ad Add One"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/domob/android/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "freqJSONArray is not available"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    const-string/jumbo v1, "update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "click_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "click_times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " + 1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lcn/domob/android/e/a;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "end_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcn/domob/android/e/a;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 369
    :cond_0
    sget-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    if-eqz v0, :cond_1

    .line 370
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/e/a;->e:Lcn/domob/android/e/a;

    .line 372
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 78
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS freq(_id INTEGER PRIMARY KEY,frequency_id TEXT,imp_times INTEGER,imp_limit_times INTEGER,click_times INTEGER,click_limit_times INTEGER,end_time LONG,update_time LONG );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 88
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS freq"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcn/domob/android/e/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lcn/domob/android/e/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
