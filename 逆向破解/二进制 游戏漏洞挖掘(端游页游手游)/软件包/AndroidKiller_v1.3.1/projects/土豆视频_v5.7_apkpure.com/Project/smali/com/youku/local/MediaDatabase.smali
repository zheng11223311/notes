.class public Lcom/youku/local/MediaDatabase;
.super Ljava/lang/Object;
.source "MediaDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/local/MediaDatabase$1;,
        Lcom/youku/local/MediaDatabase$DatabaseHelper;,
        Lcom/youku/local/MediaDatabase$MediaColumn;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaDatabase"

.field private static instance:Lcom/youku/local/MediaDatabase;


# instance fields
.field private final CHUNK_SIZE:I

.field private final DB_NAME:Ljava/lang/String;

.field private final DB_VERSION:I

.field private final MEDIA_DURATION:Ljava/lang/String;

.field private final MEDIA_LOCATION:Ljava/lang/String;

.field private final MEDIA_PROGRESS:Ljava/lang/String;

.field private final MEDIA_TABLE_NAME:Ljava/lang/String;

.field private final MEDIA_THUMBNAIL:Ljava/lang/String;

.field private final MEDIA_TITLE:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, "local_media"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->DB_NAME:Ljava/lang/String;

    .line 25
    const/4 v1, 0x1

    iput v1, p0, Lcom/youku/local/MediaDatabase;->DB_VERSION:I

    .line 26
    const/16 v1, 0x32

    iput v1, p0, Lcom/youku/local/MediaDatabase;->CHUNK_SIZE:I

    .line 28
    const-string v1, "media_table"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_TABLE_NAME:Ljava/lang/String;

    .line 29
    const-string v1, "location"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_LOCATION:Ljava/lang/String;

    .line 30
    const-string v1, "duration"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_DURATION:Ljava/lang/String;

    .line 31
    const-string v1, "progress"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_PROGRESS:Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "title"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_TITLE:Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "thumbnail"

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->MEDIA_THUMBNAIL:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/youku/local/MediaDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/youku/local/MediaDatabase$DatabaseHelper;-><init>(Lcom/youku/local/MediaDatabase;Landroid/content/Context;)V

    .line 47
    .local v0, "helper":Lcom/youku/local/MediaDatabase$DatabaseHelper;
    invoke-virtual {v0}, Lcom/youku/local/MediaDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/youku/local/MediaDatabase;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/youku/local/MediaDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/local/MediaDatabase;->instance:Lcom/youku/local/MediaDatabase;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/youku/local/MediaDatabase;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/local/MediaDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/local/MediaDatabase;->instance:Lcom/youku/local/MediaDatabase;

    .line 54
    :cond_0
    sget-object v0, Lcom/youku/local/MediaDatabase;->instance:Lcom/youku/local/MediaDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getMediaFiles()Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v10, "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object v10

    .line 144
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addMedia(Lcom/youku/local/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/youku/local/Media;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "MediaDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add to database:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/local/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "location"

    invoke-virtual {p1}, Lcom/youku/local/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/youku/local/Media;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v1, "progress"

    invoke-virtual {p1}, Lcom/youku/local/Media;->getProgress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string/jumbo v1, "title"

    invoke-virtual {p1}, Lcom/youku/local/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {p1}, Lcom/youku/local/Media;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media_table"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 104
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized emptyDatabase()V
    .locals 4

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMedia(Landroid/content/Context;Ljava/lang/String;)Lcom/youku/local/Media;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 205
    monitor-enter p0

    const/4 v11, 0x0

    .line 207
    .local v11, "media":Lcom/youku/local/Media;
    :try_start_0
    iget-object v0, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "progress"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "thumbnail"

    aput-object v4, v2, v3

    const-string v3, "location=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 215
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/youku/local/Media;

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/youku/local/Media;-><init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v11    # "media":Lcom/youku/local/Media;
    .local v1, "media":Lcom/youku/local/Media;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    monitor-exit p0

    return-object v1

    .line 205
    .end local v1    # "media":Lcom/youku/local/Media;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "media":Lcom/youku/local/Media;
    :catchall_0
    move-exception v0

    move-object v1, v11

    .end local v11    # "media":Lcom/youku/local/Media;
    .restart local v1    # "media":Lcom/youku/local/Media;
    :goto_1
    monitor-exit p0

    throw v0

    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v1    # "media":Lcom/youku/local/Media;
    .restart local v11    # "media":Lcom/youku/local/Media;
    :cond_0
    move-object v1, v11

    .end local v11    # "media":Lcom/youku/local/Media;
    .restart local v1    # "media":Lcom/youku/local/Media;
    goto :goto_0
.end method

.method public declared-synchronized getMedias(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/local/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v12, "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/local/Media;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "chunk_count":I
    const/4 v10, 0x0

    .line 169
    .local v10, "count":I
    :cond_0
    const/4 v10, 0x0

    .line 170
    iget-object v2, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "SELECT %s,%s,%s,%s,%s FROM %s LIMIT %d OFFSET %d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "duration"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "progress"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "location"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "thumbnail"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "media_table"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    mul-int/lit8 v8, v0, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 180
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    :cond_1
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "location":Ljava/lang/String;
    new-instance v1, Lcom/youku/local/Media;

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/youku/local/Media;-><init>(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 189
    .local v1, "media":Lcom/youku/local/Media;
    invoke-virtual {v1}, Lcom/youku/local/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    add-int/lit8 v10, v10, 0x1

    .line 192
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    .end local v1    # "media":Lcom/youku/local/Media;
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 197
    const/16 v2, 0x32

    if-eq v10, v2, :cond_0

    .line 199
    monitor-exit p0

    return-object v12

    .line 164
    .end local v0    # "chunk_count":I
    .end local v10    # "count":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/local/Media;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized mediaItemExists(Ljava/lang/String;)Z
    .locals 12
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    const-string v3, "location=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 127
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 128
    .local v10, "exists":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "exists":Z
    :goto_0
    monitor-exit p0

    return v10

    .line 130
    :catch_0
    move-exception v9

    .line 131
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MediaDatabase"

    const-string v1, "Query failed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v10, v11

    .line 132
    goto :goto_0

    .line 124
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMedia(Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const-string v2, "location=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMedias(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 231
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "location":Ljava/lang/String;
    const-string v2, "MediaDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeMedia:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "media_table"

    const-string v4, "location=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 236
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    iget-object v2, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    return-void
.end method

.method public declared-synchronized updateMedia(Ljava/lang/String;Lcom/youku/local/MediaDatabase$MediaColumn;Ljava/lang/Object;)V
    .locals 6
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "col"    # Lcom/youku/local/MediaDatabase$MediaColumn;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_0

    .line 263
    .end local p3    # "object":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "values":Landroid/content/ContentValues;
    sget-object v1, Lcom/youku/local/MediaDatabase$1;->$SwitchMap$com$youku$local$MediaDatabase$MediaColumn:[I

    invoke-virtual {p2}, Lcom/youku/local/MediaDatabase$MediaColumn;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    if-eqz p3, :cond_1

    .line 252
    const-string v1, "duration"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/youku/local/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media_table"

    const-string v3, "location=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 255
    .restart local v0    # "values":Landroid/content/ContentValues;
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_1
    if-eqz p3, :cond_1

    .line 256
    :try_start_1
    const-string v1, "progress"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
