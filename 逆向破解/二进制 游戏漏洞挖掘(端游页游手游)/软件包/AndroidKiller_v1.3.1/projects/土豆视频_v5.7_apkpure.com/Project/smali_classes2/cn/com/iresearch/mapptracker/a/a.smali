.class public final Lcn/com/iresearch/mapptracker/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcn/com/iresearch/mapptracker/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/iresearch/mapptracker/a/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcn/com/iresearch/mapptracker/a/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcn/com/iresearch/mapptracker/a/c;

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/b;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/com/iresearch/mapptracker/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/a/a;->c:Lcn/com/iresearch/mapptracker/a/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/a/a;
    .locals 1

    new-instance v0, Lcn/com/iresearch/mapptracker/a/b;

    invoke-direct {v0}, Lcn/com/iresearch/mapptracker/a/b;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/iresearch/mapptracker/a/b;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/com/iresearch/mapptracker/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/b;->e()V

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Lcn/com/iresearch/mapptracker/a/b;)Lcn/com/iresearch/mapptracker/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(Lcn/com/iresearch/mapptracker/a/b;)Lcn/com/iresearch/mapptracker/a/a;
    .locals 4

    const-class v1, Lcn/com/iresearch/mapptracker/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/iresearch/mapptracker/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/a/a;

    invoke-direct {v0, p0}, Lcn/com/iresearch/mapptracker/a/a;-><init>(Lcn/com/iresearch/mapptracker/a/b;)V

    sget-object v2, Lcn/com/iresearch/mapptracker/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/com/iresearch/mapptracker/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcn/com/iresearch/mapptracker/a/d/a;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/d/a;->b()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FinalDb"

    const-string v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/a;->c:Lcn/com/iresearch/mapptracker/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/a;->c:Lcn/com/iresearch/mapptracker/a/b;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Debug SQL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Lcn/com/iresearch/mapptracker/a/e/f;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private b(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    invoke-direct {p0, p2}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v2, p1}, Lcn/com/iresearch/mapptracker/dao/a;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private c(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Lcn/com/iresearch/mapptracker/a/e/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/com/iresearch/mapptracker/a/e/f;->a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->b()Lcn/com/iresearch/mapptracker/a/e/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcn/com/iresearch/mapptracker/a/e/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->e()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_2

    :cond_0
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\"    INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\"    TEXT PRIMARY KEY,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcn/com/iresearch/mapptracker/dao/a;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mapptracker/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/com/iresearch/mapptracker/dao/a;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/com/iresearch/mapptracker/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    invoke-static {p1}, Lcn/com/iresearch/mapptracker/dao/a;->buildInsertSql(Ljava/lang/Object;)Lcn/com/iresearch/mapptracker/a/d/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Lcn/com/iresearch/mapptracker/a/d/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcn/com/iresearch/mapptracker/dao/a;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcn/com/iresearch/mapptracker/a/d/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/iresearch/mapptracker/a/a;->a(Lcn/com/iresearch/mapptracker/a/d/a;)V

    return-void
.end method

.method public final b(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcn/com/iresearch/mapptracker/a/a;->c(Ljava/lang/Class;)V

    invoke-static {p1}, Lcn/com/iresearch/mapptracker/dao/a;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mapptracker/a/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
