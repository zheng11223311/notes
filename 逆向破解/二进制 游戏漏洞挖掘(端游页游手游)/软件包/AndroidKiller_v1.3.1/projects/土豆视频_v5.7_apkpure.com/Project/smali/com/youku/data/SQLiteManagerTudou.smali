.class public Lcom/youku/data/SQLiteManagerTudou;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteManagerTudou.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "tudouDB"

.field public static final DATABASE_VERSION:I = 0x13

.field public static final TABLE_NAME_ATTENTION:Ljava/lang/String; = "myattention"

.field public static final TABLE_NAME_FAVORITE:Ljava/lang/String; = "myfavorite"

.field public static final TABLE_NAME_FAVORITE_PLAYLIST:Ljava/lang/String; = "myfavorite_playlist"

.field public static final TABLE_NAME_PLAY_HISTORY:Ljava/lang/String; = "play_history"

.field public static final TABLE_NAME_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field private static final TAG:Ljava/lang/String; = "SQLiteManagerTudou"

.field protected static db:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static favoritelist:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;"
        }
    .end annotation
.end field

.field private static favouritePlaylist:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/youku/data/SQLiteManagerTudou; = null

.field private static mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field protected static playHistory:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static searchHistory:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sql_create_play_history:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS play_history ( ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER, videoHome INTEGER, vcode VARCHAR, picUrl VARCHAR, playListCode VARCHAR, isTrailer INTEGER )"

.field private static final sql_create_table_attention:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS myattention ( uid INTEGER PRIMARY KEY, uname VARCHAR,  unic VARCHAR,  upic VARCHAR,  uploadcount\t VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER,  lastItemTitle VARCHAR )"

.field private static final sql_create_table_favorite:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS myfavorite ( itemId VARCHAR PRIMARY KEY, title VARCHAR,  picUrl VARCHAR,  stripe_bottom VARCHAR,  totalTime INTEGER,  videoHome INTEGER,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER)"

.field private static final sql_create_table_favorite_playlist:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS myfavorite_playlist ( itemId VARCHAR PRIMARY KEY, title VARCHAR,  picUrl VARCHAR,  stripe_bottom VARCHAR,  playTimes VARCHAR,  update_time VARCHAR,  last_item_code VARCHAR,  last_item_title VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER)"

.field private static final sql_create_table_search_history:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS search_history ( ID INTEGER PRIMARY KEY, title VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/youku/data/SQLiteManagerTudou;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string/jumbo v0, "tudouDB"

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 164
    invoke-virtual {p0}, Lcom/youku/data/SQLiteManagerTudou;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    return-void
.end method

.method public static declared-synchronized addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 9
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "upic"    # Ljava/lang/String;
    .param p2, "uploadcount"    # Ljava/lang/String;
    .param p3, "isVuser"    # Z
    .param p4, "uname"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 1028
    const-class v8, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v8

    const/4 v6, -0x1

    :try_start_0
    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/youku/data/SQLiteManagerTudou;->addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;II)Z
    .locals 9
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "upic"    # Ljava/lang/String;
    .param p2, "uploadcount"    # Ljava/lang/String;
    .param p3, "isVuser"    # Z
    .param p4, "uname"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "isCard"    # I

    .prologue
    .line 1035
    const-class v8, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v8

    :try_start_0
    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/youku/data/SQLiteManagerTudou;->addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;)Z
    .locals 12
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "upic"    # Ljava/lang/String;
    .param p2, "uploadcount"    # Ljava/lang/String;
    .param p3, "isVuser"    # Z
    .param p4, "uname"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "isCard"    # I
    .param p7, "lastItemTitle"    # Ljava/lang/String;

    .prologue
    .line 1053
    const-class v9, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v9

    const/4 v6, 0x1

    .line 1054
    .local v6, "retu":Z
    :try_start_0
    invoke-static {p0}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    move v7, v6

    .line 1088
    .end local v6    # "retu":Z
    .local v7, "retu":I
    :goto_0
    monitor-exit v9

    return v7

    .line 1057
    .end local v7    # "retu":I
    .restart local v6    # "retu":Z
    :cond_0
    :try_start_1
    sget-object v8, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1058
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1059
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1060
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "uid"

    invoke-virtual {v2, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v8, "uname"

    const-string v10, ""

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string/jumbo v8, "unic"

    const-string v10, ""

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v8, "upic"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v8, "uploadcount"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    if-eqz p3, :cond_2

    .line 1066
    const-string/jumbo v8, "redundancy_1"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    :goto_1
    const-string/jumbo v8, "redundancy_2"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    const-string/jumbo v8, "redundancy_3"

    move-object/from16 v0, p4

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v8, "redundancy_4"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1073
    const-string/jumbo v8, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1074
    const-string v8, "lastItemTitle"

    move-object/from16 v0, p7

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "myattention"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1077
    .local v4, "result":J
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gez v8, :cond_1

    .line 1079
    const/4 v6, 0x0

    .line 1085
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "result":J
    :cond_1
    :goto_2
    :try_start_2
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1086
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1087
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v6

    .line 1088
    .restart local v7    # "retu":I
    goto/16 :goto_0

    .line 1068
    .end local v7    # "retu":I
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    const-string/jumbo v8, "redundancy_1"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1081
    .end local v2    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 1082
    .local v3, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v8, "SQLiteManagerTudou.addToAttention()"

    invoke-static {v8, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1083
    const/4 v6, 0x0

    goto :goto_2

    .line 1053
    .end local v3    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static declared-synchronized addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "upic"    # Ljava/lang/String;
    .param p2, "uploadcount"    # Ljava/lang/String;
    .param p3, "isVuser"    # Z
    .param p4, "uname"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "lastItemTitle"    # Ljava/lang/String;

    .prologue
    .line 1044
    const-class v8, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v8

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/youku/data/SQLiteManagerTudou;->addToAttention(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized addToFavoritePlaylist(Lcom/youku/vo/FavouritePlaylist;)Z
    .locals 10
    .param p0, "favoriteinfo"    # Lcom/youku/vo/FavouritePlaylist;

    .prologue
    .line 729
    const-class v6, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v6

    const/4 v4, 0x1

    .line 731
    .local v4, "retu":Z
    :try_start_0
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 732
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "itemId"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string/jumbo v5, "title"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v5, "picUrl"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->coverPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string/jumbo v5, "stripe_bottom"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->itemsCount:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string/jumbo v5, "update_time"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->updateDate:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v5, "playTimes"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->playTimes:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v5, "last_item_code"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    iget-object v7, v7, Lcom/youku/vo/FavouritePlaylist$FirstItem;->icode:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v5, "last_item_title"

    iget-object v7, p0, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    iget-object v7, v7, Lcom/youku/vo/FavouritePlaylist$FirstItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string/jumbo v5, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "myfavorite_playlist"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 745
    .local v2, "result":J
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gez v5, :cond_0

    .line 747
    const/4 v4, 0x0

    .line 755
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "result":J
    :cond_0
    :goto_0
    :try_start_1
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 756
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 757
    :cond_1
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 758
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 759
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 760
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    monitor-exit v6

    return v4

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v5, "SQLiteManagerTudou.addToFavoritePlaylist()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    const/4 v4, 0x0

    goto :goto_0

    .line 729
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized addToFavoriteVedio(Lcom/youku/vo/FavouriteVideo;)Z
    .locals 10
    .param p0, "favoriteinfo"    # Lcom/youku/vo/FavouriteVideo;

    .prologue
    .line 683
    const-class v6, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v6

    const/4 v4, 0x1

    .line 685
    .local v4, "retu":Z
    :try_start_0
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 686
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 687
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "itemId"

    iget-object v7, p0, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string/jumbo v5, "title"

    iget-object v7, p0, Lcom/youku/vo/FavouriteVideo;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v5, "picUrl"

    iget-object v7, p0, Lcom/youku/vo/FavouriteVideo;->picUrl_16_9:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string/jumbo v5, "totalTime"

    iget v7, p0, Lcom/youku/vo/FavouriteVideo;->totalTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string/jumbo v5, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "myfavorite"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 700
    .local v2, "result":J
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gez v5, :cond_0

    .line 702
    const/4 v4, 0x0

    .line 710
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "result":J
    :cond_0
    :goto_0
    :try_start_1
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 711
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 712
    :cond_1
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 713
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 714
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 715
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    monitor-exit v6

    return v4

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v5, "SQLiteManagerTudou.addToFavoriteVedio()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    const/4 v4, 0x0

    goto :goto_0

    .line 683
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static addToPlayHistory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 12
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "playTime"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "duration"    # I
    .param p6, "isStage"    # I
    .param p7, "stage"    # I
    .param p8, "isTrailer"    # Z
    .param p9, "playListCode"    # Ljava/lang/String;

    .prologue
    .line 321
    :try_start_0
    sget-object v7, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 322
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 325
    if-eqz p8, :cond_2

    const-string v6, "0"

    .line 327
    .local v6, "trailer":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    invoke-static {v0, v6}, Lcom/youku/data/SQLiteManagerTudou;->clearAncientHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "vid"

    invoke-virtual {v2, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v7, "playTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string/jumbo v7, "title"

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v7, "picUrl"

    invoke-virtual {v2, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    :cond_0
    const/16 p6, 0x0

    .line 336
    move-object/from16 p4, p0

    .line 340
    :goto_1
    const-string/jumbo v7, "showid"

    move-object/from16 v0, p4

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v7, "duration"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v7, "lastPlayTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    const-string v7, "isStage"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string/jumbo v7, "stage"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v7, "playListCode"

    move-object/from16 v0, p9

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v7, "isTrailer"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "play_history"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 351
    .local v4, "result":J
    const/4 v7, 0x1

    sput-boolean v7, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 352
    const-string v7, "---------"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 355
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readPlayHistory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 361
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 362
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 366
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "result":J
    .end local v6    # "trailer":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 325
    :cond_2
    :try_start_1
    const-string v6, "1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 338
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "trailer":Ljava/lang/String;
    :cond_3
    const/16 p6, 0x1

    goto/16 :goto_1

    .line 357
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "trailer":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 358
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "SQLiteManager.addToPlayHistory()"

    invoke-static {v7, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 361
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 362
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    goto :goto_2

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 361
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 362
    sget-object v8, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    :cond_4
    throw v7
.end method

.method public static declared-synchronized addToSearchHistory(Ljava/lang/String;I)V
    .locals 6
    .param p0, "history"    # Ljava/lang/String;
    .param p1, "tab"    # I

    .prologue
    .line 504
    const-class v3, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1}, Lcom/youku/data/SQLiteManagerTudou;->deleteSearchHistoryByVid(Ljava/lang/String;I)Z

    .line 505
    const-string/jumbo v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v2, "redundancy_1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v2, "createContentValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "search_history"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 513
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 515
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 517
    :cond_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readSearchHistory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    monitor-exit v3

    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SQLiteManagerTudou.addToSearchHistory()"

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static clearAncientHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "showid"    # Ljava/lang/String;
    .param p1, "isTrailer"    # Ljava/lang/String;

    .prologue
    .line 369
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "play_history"

    const-string/jumbo v3, "showid = ? AND isTrailer = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "updataSize":I
    const-string v1, "PlayHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v0    # "updataSize":I
    :cond_0
    return-void
.end method

.method public static closeSQLite()V
    .locals 3

    .prologue
    .line 268
    :try_start_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->instance:Lcom/youku/data/SQLiteManagerTudou;

    invoke-virtual {v1}, Lcom/youku/data/SQLiteManagerTudou;->close()V

    .line 270
    const-string v1, "Youku"

    const-string v2, "closeSQLite"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "closeSQLite"

    invoke-static {v1}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManager"

    const-string v2, "SQLiteManager.closeSQLite()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table_name"    # Ljava/lang/String;

    .prologue
    .line 285
    :try_start_0
    invoke-static {p1}, Lcom/youku/data/SQLiteManagerTudou;->getTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized deleteAllAttention()V
    .locals 6

    .prologue
    .line 1155
    const-class v2, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1156
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1157
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "myattention"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    .local v0, "e":Landroid/database/SQLException;
    :goto_0
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1162
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    monitor-exit v2

    return-void

    .line 1158
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_0
    move-exception v0

    .line 1159
    .restart local v0    # "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.deleteAllAttention()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1155
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteAllFavoritePlaylist()V
    .locals 6

    .prologue
    .line 871
    const-class v2, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 872
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 873
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "myfavorite_playlist"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 875
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    .local v0, "e":Landroid/database/SQLException;
    :goto_0
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 882
    :cond_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 883
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    monitor-exit v2

    return-void

    .line 876
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_0
    move-exception v0

    .line 877
    .restart local v0    # "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.deleteAllFavoritePlaylist()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteAllFavoriteVedio()V
    .locals 6

    .prologue
    .line 851
    const-class v2, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 852
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 853
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "myfavorite"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 854
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 855
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    :goto_0
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 864
    :cond_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 865
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    monitor-exit v2

    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.deleteAllFavoriteVedio()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 851
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 858
    :catch_1
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SQLiteManagerTudou.deleteAllFavoriteVedio()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized deleteAttention(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 1092
    const-class v3, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v3

    const/4 v1, 0x1

    .line 1094
    .local v1, "resu":Z
    :try_start_0
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1095
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myattention where uid=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :goto_0
    :try_start_1
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1104
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1113
    monitor-exit v3

    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "SQLiteManagerTudou.deleteAttention()"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1100
    const/4 v1, 0x0

    goto :goto_0

    .line 1105
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 1106
    .restart local v0    # "e":Landroid/database/SQLException;
    const-string v2, "SQLiteManagerTudou.deleteAttention()"

    invoke-static {v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1107
    const/4 v1, 0x0

    .line 1111
    goto :goto_1

    .line 1108
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1110
    const/4 v1, 0x0

    goto :goto_1

    .line 1092
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized deleteAttention(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1117
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v6, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v6

    const/4 v2, 0x1

    .line 1118
    .local v2, "result":Z
    :try_start_0
    const-string v3, "myattention where "

    .line 1119
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 1120
    const/4 v5, 0x1

    .line 1150
    :goto_0
    monitor-exit v6

    return v5

    .line 1123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1124
    .local v4, "uid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "uid = \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    goto :goto_1

    .line 1128
    .end local v4    # "uid":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1130
    const-string v5, "myattention"

    invoke-static {v5, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    :try_start_2
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1133
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1134
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1140
    :goto_2
    :try_start_3
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1141
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1149
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    move v5, v2

    .line 1150
    goto :goto_0

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/database/SQLException;
    const-string v5, "SQLiteManagerTudou.deleteAttention()"

    invoke-static {v5, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1137
    const/4 v2, 0x0

    goto :goto_2

    .line 1142
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 1143
    .restart local v0    # "e":Landroid/database/SQLException;
    const-string v5, "SQLiteManagerTudou.deleteAttention()"

    invoke-static {v5, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1144
    const/4 v2, 0x0

    .line 1148
    goto :goto_3

    .line 1145
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1147
    const/4 v2, 0x0

    goto :goto_3

    .line 1117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized deleteFavoritePlaylist(Ljava/lang/String;)V
    .locals 6
    .param p0, "itemid"    # Ljava/lang/String;

    .prologue
    .line 785
    const-class v2, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 786
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 787
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myfavorite_playlist where itemId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :goto_0
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 795
    :cond_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 796
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 797
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 798
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    monitor-exit v2

    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.deleteFavoritePlaylist()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 785
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteFavoritePlaylist(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v5, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 829
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 830
    const-string v2, "myfavorite_playlist where "

    .line 831
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 832
    .local v3, "tmp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "itemId = \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    goto :goto_0

    .line 835
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 836
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    :try_start_1
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 842
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 843
    :cond_1
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 844
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 845
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 846
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    monitor-exit v5

    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SQLiteManagerTudou.deleteFavoritePlaylist()"

    invoke-static {v4, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 828
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized deleteFavoriteVedio(Ljava/lang/String;)V
    .locals 6
    .param p0, "itemid"    # Ljava/lang/String;

    .prologue
    .line 766
    const-class v2, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 767
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 768
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myfavorite where itemId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    :goto_0
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 776
    :cond_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 777
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 778
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 779
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    monitor-exit v2

    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.deleteFavoriteVedio()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 766
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized deleteFavoriteVedio(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v5, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 804
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 805
    const-string v2, "myfavorite where "

    .line 806
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 807
    .local v3, "tmp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "itemId = \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    goto :goto_0

    .line 810
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 811
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    :try_start_1
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 817
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 818
    :cond_1
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 819
    sget-object v4, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 820
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 821
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    monitor-exit v5

    return-void

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SQLiteManagerTudou.deleteFavoriteVedio()"

    invoke-static {v4, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 803
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static deletePlayHistoryByVids(Ljava/lang/String;)V
    .locals 4
    .param p0, "vids"    # Ljava/lang/String;

    .prologue
    .line 382
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 384
    :try_start_0
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_history where vid in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readPlayHistory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V

    .line 389
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized deleteSearchHistoryByVid(Ljava/lang/String;I)Z
    .locals 11
    .param p0, "history"    # Ljava/lang/String;
    .param p1, "tab"    # I

    .prologue
    const/4 v5, 0x1

    .line 536
    const-class v6, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    const/4 v3, 0x0

    .line 539
    .local v3, "success":Z
    :try_start_1
    const-string/jumbo v7, "utf-8"

    invoke-static {p0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 540
    if-ne p1, v5, :cond_1

    const-string v4, "1 or redundancy_1 is null)"

    .line 541
    .local v4, "where":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "search_history where title=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and (redundancy_1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v3, v5

    .line 547
    :goto_1
    if-eqz v3, :cond_3

    .line 548
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 549
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 550
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 540
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v4    # "where":Ljava/lang/String;
    :cond_1
    const-string v4, "2)"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    .restart local v4    # "where":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 555
    .end local v4    # "where":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "tudou_e"

    invoke-static {v5, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    monitor-exit v6

    return v3

    .line 536
    .end local v3    # "success":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized dropSearchHistory()V
    .locals 5

    .prologue
    .line 563
    const-class v1, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 564
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "search_history"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit v1

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAllSearchHistory()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 597
    const-class v5, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :try_start_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getSearchHistory()Ljava/util/ArrayList;

    .line 601
    sget-object v6, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 602
    sget-object v6, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "select * from search_history order by id desc"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 610
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "count":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    .line 613
    new-instance v3, Lcom/youku/vo/SearchOfHistory;

    invoke-direct {v3}, Lcom/youku/vo/SearchOfHistory;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    .local v3, "word":Lcom/youku/vo/SearchOfHistory;
    const/4 v6, 0x1

    :try_start_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    :goto_1
    const/4 v6, 0x2

    :try_start_3
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/SearchOfHistory;->type:I

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 621
    sget-object v6, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 627
    .end local v1    # "count":I
    .end local v3    # "word":Lcom/youku/vo/SearchOfHistory;
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "SQLiteManagerTudou.readSearchHistory()"

    invoke-static {v4, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    const/4 v0, 0x0

    .line 630
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v5

    return v4

    .line 616
    .restart local v1    # "count":I
    .restart local v3    # "word":Lcom/youku/vo/SearchOfHistory;
    :catch_1
    move-exception v2

    .line 617
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 597
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "word":Lcom/youku/vo/SearchOfHistory;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 624
    .restart local v1    # "count":I
    :cond_0
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 625
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized getAttentionList()Lcom/youku/vo/Podcast;
    .locals 6

    .prologue
    .line 1255
    const-class v4, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v4

    :try_start_0
    const-string v2, ""

    .line 1256
    .local v2, "sql":Ljava/lang/String;
    new-instance v1, Lcom/youku/vo/Podcast;

    invoke-direct {v1}, Lcom/youku/vo/Podcast;-><init>()V

    .line 1257
    .local v1, "podcast":Lcom/youku/vo/Podcast;
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1259
    const-string/jumbo v2, "select * from myattention order by time desc"

    .line 1261
    sget-object v3, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1264
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1265
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1266
    invoke-static {v1, v0}, Lcom/youku/data/SQLiteManagerTudou;->readContentAttentionValue(Lcom/youku/vo/Podcast;Landroid/database/Cursor;)V

    .line 1267
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1255
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "podcast":Lcom/youku/vo/Podcast;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1269
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "podcast":Lcom/youku/vo/Podcast;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1270
    iget-object v3, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v5, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v5, v5, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v3, Lcom/youku/vo/Podcast$Users;->total:I

    .line 1271
    iget-object v3, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    const/4 v5, 0x1

    iput v5, v3, Lcom/youku/vo/Podcast$Users;->page:I

    .line 1276
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    monitor-exit v4

    return-object v1
.end method

.method public static getFavouritePlaylistInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    :try_start_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    return-object v1

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 664
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManagerTudou.getFavouritePlaylistInfo()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFavouriteVedioInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    return-object v1

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 652
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManagerTudou.getFavouriteVedioInfo()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/youku/data/SQLiteManagerTudou;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->instance:Lcom/youku/data/SQLiteManagerTudou;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/youku/data/SQLiteManagerTudou;

    invoke-direct {v0, p0}, Lcom/youku/data/SQLiteManagerTudou;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/data/SQLiteManagerTudou;->instance:Lcom/youku/data/SQLiteManagerTudou;

    .line 159
    :cond_0
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->instance:Lcom/youku/data/SQLiteManagerTudou;

    return-object v0
.end method

.method public static getLocalPlayHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    return-object v1

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 461
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManager.getPlayHistory()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized getLocalSubCount()J
    .locals 8

    .prologue
    .line 1292
    const-class v4, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "select count(*) from myattention"

    .line 1293
    .local v2, "sql":Ljava/lang/String;
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1295
    sget-object v3, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1296
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1297
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1298
    .local v1, "count":Ljava/lang/Long;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1299
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v4

    return-wide v6

    .line 1292
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getLocalSubString(Lcom/youku/vo/Podcast;)[Ljava/lang/String;
    .locals 9
    .param p0, "podcast"    # Lcom/youku/vo/Podcast;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1303
    const-class v3, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v3

    const/4 v2, 0x2

    :try_start_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, ""

    aput-object v4, v1, v2

    .line 1305
    .local v1, "result":[Ljava/lang/String;
    if-eqz p0, :cond_4

    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1307
    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    if-ne v7, v2, :cond_0

    .line 1308
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1309
    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1318
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    if-ne v8, v2, :cond_1

    .line 1319
    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1320
    iget-object v2, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1306
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1312
    :cond_2
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1313
    const/4 v2, 0x1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1303
    .end local v0    # "i":I
    .end local v1    # "result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1323
    .restart local v0    # "i":I
    .restart local v1    # "result":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1324
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1332
    .end local v0    # "i":I
    :cond_4
    monitor-exit v3

    return-object v1
.end method

.method public static getSearchHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 638
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    return-object v1

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 641
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManagerTudou.getSearchHistory()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "table_name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "play_history"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "CREATE TABLE IF NOT EXISTS play_history ( ID INTEGER PRIMARY KEY, title VARCHAR, vid VARCHAR UNIQUE, showid VARCHAR, playTime INTEGER, duration INTEGER, lastPlayTime INTEGER, isStage INTEGER, stage INTEGER, videoHome INTEGER, vcode VARCHAR, picUrl VARCHAR, playListCode VARCHAR, isTrailer INTEGER )"

    .line 303
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const-string/jumbo v0, "search_history"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, " CREATE TABLE IF NOT EXISTS search_history ( ID INTEGER PRIMARY KEY, title VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR)"

    goto :goto_0

    .line 296
    :cond_1
    const-string v0, "myfavorite"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const-string v0, " CREATE TABLE IF NOT EXISTS myfavorite ( itemId VARCHAR PRIMARY KEY, title VARCHAR,  picUrl VARCHAR,  stripe_bottom VARCHAR,  totalTime INTEGER,  videoHome INTEGER,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER)"

    goto :goto_0

    .line 298
    :cond_2
    const-string v0, "myfavorite_playlist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    const-string v0, " CREATE TABLE IF NOT EXISTS myfavorite_playlist ( itemId VARCHAR PRIMARY KEY, title VARCHAR,  picUrl VARCHAR,  stripe_bottom VARCHAR,  playTimes VARCHAR,  update_time VARCHAR,  last_item_code VARCHAR,  last_item_title VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER)"

    goto :goto_0

    .line 300
    :cond_3
    const-string v0, "myattention"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    const-string v0, " CREATE TABLE IF NOT EXISTS myattention ( uid INTEGER PRIMARY KEY, uname VARCHAR,  unic VARCHAR,  upic VARCHAR,  uploadcount\t VARCHAR,  redundancy_1 INTEGER, redundancy_2 INTEGER, redundancy_3 VARCHAR, redundancy_4 VARCHAR, time INTEGER,  lastItemTitle VARCHAR )"

    goto :goto_0

    .line 303
    :cond_4
    const-string v0, "error"

    goto :goto_0
.end method

.method public static getVideoInfoUseID(Ljava/lang/String;)Lcom/youku/vo/VideoInfo;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 399
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 400
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/VideoInfo;

    iget-object v2, v2, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/VideoInfo;

    iget-object v2, v2, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v3, "1"

    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/VideoInfo;

    iget-object v2, v2, Lcom/youku/vo/VideoInfo;->isTrailer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/VideoInfo;

    .line 404
    :goto_1
    return-object v2

    .line 399
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized isAttention(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/attention/IAttention$Results;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "uid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v17, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v17

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const-string v4, ""

    .line 1197
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1198
    .local v5, "values":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 1200
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_0

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uid=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v12

    .line 1198
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uid=? or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1208
    :cond_1
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    :try_start_1
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "myattention"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1212
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1213
    new-instance v16, Lcom/youku/vo/Podcast;

    invoke-direct/range {v16 .. v16}, Lcom/youku/vo/Podcast;-><init>()V

    .line 1214
    .local v16, "podcast":Lcom/youku/vo/Podcast;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1215
    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/youku/data/SQLiteManagerTudou;->readContentAttentionValue(Lcom/youku/vo/Podcast;Landroid/database/Cursor;)V

    .line 1216
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1235
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v16    # "podcast":Lcom/youku/vo/Podcast;
    :catch_0
    move-exception v11

    .line 1236
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SQLiteManagerTudou.isAttention()"

    invoke-static {v1, v11}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1238
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1239
    monitor-exit v17

    return-object v15

    .line 1218
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v16    # "podcast":Lcom/youku/vo/Podcast;
    :cond_3
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1219
    const/4 v12, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 1220
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1221
    .local v13, "id":Ljava/lang/String;
    new-instance v10, Lcom/tudou/service/attention/IAttention$Results;

    invoke-direct {v10}, Lcom/tudou/service/attention/IAttention$Results;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1223
    .local v10, "data":Lcom/tudou/service/attention/IAttention$Results;
    :try_start_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/tudou/service/attention/IAttention$Results;->id:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1227
    :goto_4
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    :try_start_5
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_5

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Podcast$Users$Subs;

    iget v1, v1, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1229
    const/4 v1, 0x1

    iput v1, v10, Lcom/tudou/service/attention/IAttention$Results;->code:I

    .line 1230
    const-string/jumbo v1, "success"

    iput-object v1, v10, Lcom/tudou/service/attention/IAttention$Results;->desc:Ljava/lang/String;

    .line 1227
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1233
    :cond_5
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1219
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1195
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "data":Lcom/tudou/service/attention/IAttention$Results;
    .end local v12    # "i":I
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    .end local v16    # "podcast":Lcom/youku/vo/Podcast;
    :catchall_0
    move-exception v1

    monitor-exit v17

    throw v1

    .line 1224
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "data":Lcom/tudou/service/attention/IAttention$Results;
    .restart local v12    # "i":I
    .restart local v13    # "id":Ljava/lang/String;
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    .restart local v16    # "podcast":Lcom/youku/vo/Podcast;
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method public static declared-synchronized isAttention(Ljava/lang/String;)Z
    .locals 13
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-class v12, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v12

    const/4 v11, 0x0

    .line 1169
    .local v11, "retu":Z
    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :try_start_1
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "myattention"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1173
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1174
    new-instance v10, Lcom/youku/vo/Podcast;

    invoke-direct {v10}, Lcom/youku/vo/Podcast;-><init>()V

    .line 1175
    .local v10, "podcast":Lcom/youku/vo/Podcast;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    invoke-static {v10, v8}, Lcom/youku/data/SQLiteManagerTudou;->readContentAttentionValue(Lcom/youku/vo/Podcast;Landroid/database/Cursor;)V

    .line 1177
    iget-object v0, v10, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    const/4 v11, 0x1

    .line 1183
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    .end local v10    # "podcast":Lcom/youku/vo/Podcast;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1189
    monitor-exit v12

    return v11

    .line 1181
    .restart local v10    # "podcast":Lcom/youku/vo/Podcast;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1184
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "podcast":Lcom/youku/vo/Podcast;
    :catch_0
    move-exception v9

    .line 1185
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SQLiteManagerTudou.isAttention()"

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1186
    const/4 v8, 0x0

    .restart local v8    # "c":Landroid/database/Cursor;
    goto :goto_1

    .line 1168
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static declared-synchronized isContainAttention(J)Z
    .locals 10
    .param p0, "uid"    # J

    .prologue
    const/4 v3, 0x0

    .line 1243
    const-class v4, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select count(*) from myattention where uid=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, "sql":Ljava/lang/String;
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1246
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1247
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1248
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1249
    .local v1, "count":Ljava/lang/Long;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1250
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :goto_0
    monitor-exit v4

    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 1243
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":Ljava/lang/Long;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isFavoritePlaylist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 903
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 904
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V

    .line 906
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 907
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    iget-object v1, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 906
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_2
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    iget-object v1, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    const/4 v1, 0x1

    .line 914
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isFavoriteVedio(Ljava/lang/String;)Z
    .locals 2
    .param p0, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 887
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 888
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V

    .line 890
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 891
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    iget-object v1, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 890
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_2
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    iget-object v1, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const/4 v1, 0x1

    .line 898
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized isHasLocalSub()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1281
    const-class v4, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "select count(*) from myattention"

    .line 1282
    .local v2, "sql":Ljava/lang/String;
    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V

    .line 1284
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1285
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1286
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1287
    .local v1, "count":Ljava/lang/Long;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1288
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :goto_0
    monitor-exit v4

    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 1281
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static openSQLite(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    :try_start_0
    invoke-static {p0}, Lcom/youku/data/SQLiteManagerTudou;->getInstance(Landroid/content/Context;)Lcom/youku/data/SQLiteManagerTudou;

    .line 253
    const/4 v1, 0x1

    sget-object v2, Lcom/youku/data/SQLiteManagerTudou;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 254
    sget-object v1, Lcom/youku/data/SQLiteManagerTudou;->instance:Lcom/youku/data/SQLiteManagerTudou;

    invoke-virtual {v1}, Lcom/youku/data/SQLiteManagerTudou;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 255
    const-string v1, "Youku"

    const-string v2, "openSQLite"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "openSQLite"

    invoke-static {v1}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SQLiteManager.openSQLite()"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readAllData()V
    .locals 0

    .prologue
    .line 491
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readPlayHistory()Z

    .line 492
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoriteVedio()V

    .line 493
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->readFavoritePlaylist()V

    .line 494
    return-void
.end method

.method private static readContentAttentionValue(Lcom/youku/vo/Podcast;Landroid/database/Cursor;)V
    .locals 5
    .param p0, "podcast"    # Lcom/youku/vo/Podcast;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 1342
    new-instance v1, Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v3, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v3}, Lcom/youku/vo/Podcast$Users$Subs;-><init>(Lcom/youku/vo/Podcast$Users;)V

    .line 1344
    .local v1, "subs":Lcom/youku/vo/Podcast$Users$Subs;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    .line 1345
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->uname:Ljava/lang/String;

    .line 1346
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->unic:Ljava/lang/String;

    .line 1347
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->upic:Ljava/lang/String;

    .line 1348
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->uploadcount:I

    .line 1349
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1350
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1351
    .local v2, "tmp":I
    if-ne v2, v4, :cond_2

    .line 1352
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->isVuser:Z

    .line 1359
    .end local v2    # "tmp":I
    :goto_0
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    .line 1360
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    .line 1361
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->updateTime_str:Ljava/lang/String;

    .line 1362
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->updateInfo:Ljava/lang/String;

    .line 1363
    iget v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    if-nez v3, :cond_0

    .line 1364
    const/4 v3, 0x2

    iput v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    .line 1366
    :cond_0
    iget-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    iget-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->unic:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    .line 1369
    :cond_1
    iget-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->upic:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->smallPic:Ljava/lang/String;

    .line 1370
    iget-object v3, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v3, v3, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :goto_1
    return-void

    .line 1354
    .restart local v2    # "tmp":I
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->isVuser:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    .end local v2    # "tmp":I
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "readContentValue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->isVuser:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static readContentPlaylistValue(Landroid/database/Cursor;)Lcom/youku/vo/FavouritePlaylist;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 998
    new-instance v1, Lcom/youku/vo/FavouritePlaylist;

    invoke-direct {v1}, Lcom/youku/vo/FavouritePlaylist;-><init>()V

    .line 1000
    .local v1, "vi":Lcom/youku/vo/FavouritePlaylist;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    .line 1001
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->title:Ljava/lang/String;

    .line 1002
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->coverPicUrl:Ljava/lang/String;

    .line 1004
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->itemsCount:Ljava/lang/String;

    .line 1005
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->playTimes:Ljava/lang/String;

    .line 1006
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->updateDate:Ljava/lang/String;

    .line 1007
    new-instance v2, Lcom/youku/vo/FavouritePlaylist$FirstItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/youku/vo/FavouritePlaylist$FirstItem;-><init>(Lcom/youku/vo/FavouritePlaylist;)V

    iput-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    .line 1008
    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    const/4 v3, 0x6

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/vo/FavouritePlaylist$FirstItem;->icode:Ljava/lang/String;

    .line 1009
    iget-object v2, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    const/4 v3, 0x7

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/vo/FavouritePlaylist$FirstItem;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v1    # "vi":Lcom/youku/vo/FavouritePlaylist;
    :goto_0
    return-object v1

    .line 1012
    .restart local v1    # "vi":Lcom/youku/vo/FavouritePlaylist;
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "readContentVedioValue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/VideoInfo;
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 427
    new-instance v1, Lcom/youku/vo/VideoInfo;

    invoke-direct {v1}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 429
    .local v1, "vi":Lcom/youku/vo/VideoInfo;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 430
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 431
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    .line 432
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/VideoInfo;->playTime:I

    .line 433
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 434
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/youku/vo/VideoInfo;->lastPlayTime:J

    .line 435
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/VideoInfo;->isStage:I

    .line 436
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/VideoInfo;->stage:I

    .line 437
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/VideoInfo;->videoHome:I

    .line 438
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->vcode:Ljava/lang/String;

    .line 439
    const-string v2, "picUrl"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 440
    const/16 v2, 0xc

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->playlist_code:Ljava/lang/String;

    .line 441
    const/16 v2, 0xd

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->isTrailer:Ljava/lang/String;

    .line 442
    iget v2, v1, Lcom/youku/vo/VideoInfo;->videoHome:I

    if-nez v2, :cond_0

    .line 443
    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->videotype:Lcom/tudou/android/Youku$Type;

    .line 447
    :goto_0
    const-string v2, "readContentValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/youku/vo/VideoInfo;->playTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_1
    return-object v1

    .line 445
    :cond_0
    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iput-object v2, v1, Lcom/youku/vo/VideoInfo;->videotype:Lcom/tudou/android/Youku$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "readContentValue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static readContentVedioValue(Landroid/database/Cursor;)Lcom/youku/vo/FavouriteVideo;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 972
    new-instance v1, Lcom/youku/vo/FavouriteVideo;

    invoke-direct {v1}, Lcom/youku/vo/FavouriteVideo;-><init>()V

    .line 974
    .local v1, "vi":Lcom/youku/vo/FavouriteVideo;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    .line 975
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->title:Ljava/lang/String;

    .line 976
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->picUrl_16_9:Ljava/lang/String;

    .line 978
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/FavouriteVideo;->totalTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v1    # "vi":Lcom/youku/vo/FavouriteVideo;
    :goto_0
    return-object v1

    .line 981
    .restart local v1    # "vi":Lcom/youku/vo/FavouriteVideo;
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "readContentVedioValue"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readDatabase(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1383
    :try_start_0
    new-instance v0, Lcom/youku/data/SQLiteManagerTudou$1;

    invoke-direct {v0, p0}, Lcom/youku/data/SQLiteManagerTudou$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/youku/data/SQLiteManagerTudou$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized readFavoritePlaylist()V
    .locals 12

    .prologue
    .line 943
    const-class v11, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v11

    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    :try_start_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouritePlaylistInfo()Ljava/util/ArrayList;

    .line 946
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "myfavorite_playlist"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 948
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 949
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 951
    invoke-static {v8}, Lcom/youku/data/SQLiteManagerTudou;->readContentPlaylistValue(Landroid/database/Cursor;)Lcom/youku/vo/FavouritePlaylist;

    move-result-object v10

    .line 952
    .local v10, "vi":Lcom/youku/vo/FavouritePlaylist;
    if-eqz v10, :cond_0

    .line 953
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->favouritePlaylist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 954
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 957
    .end local v10    # "vi":Lcom/youku/vo/FavouritePlaylist;
    :catch_0
    move-exception v9

    .line 958
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SQLiteManagerTudou.readFavoritePlaylist()"

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 959
    const/4 v8, 0x0

    .line 961
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    monitor-exit v11

    return-void

    .line 956
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized readFavoriteVedio()V
    .locals 12

    .prologue
    .line 919
    const-class v11, Lcom/youku/data/SQLiteManagerTudou;

    monitor-enter v11

    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/data/SQLiteManagerTudou;->openSQLite(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouriteVedioInfo()Ljava/util/ArrayList;

    .line 922
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "myfavorite"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 924
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 925
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 926
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    invoke-static {v8}, Lcom/youku/data/SQLiteManagerTudou;->readContentVedioValue(Landroid/database/Cursor;)Lcom/youku/vo/FavouriteVideo;

    move-result-object v10

    .line 928
    .local v10, "vi":Lcom/youku/vo/FavouriteVideo;
    if-eqz v10, :cond_0

    .line 929
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->favoritelist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 930
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 933
    .end local v10    # "vi":Lcom/youku/vo/FavouriteVideo;
    :catch_0
    move-exception v9

    .line 934
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SQLiteManagerTudou.readFavoriteVedio()"

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    const/4 v8, 0x0

    .line 937
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->closeSQLite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    monitor-exit v11

    return-void

    .line 932
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static readPlayHistory()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 469
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    .line 470
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 473
    :cond_0
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "play_history"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 476
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    invoke-static {v8}, Lcom/youku/data/SQLiteManagerTudou;->readContentValue(Landroid/database/Cursor;)Lcom/youku/vo/VideoInfo;

    move-result-object v9

    .line 478
    .local v9, "dp":Lcom/youku/vo/VideoInfo;
    sget-object v0, Lcom/youku/data/SQLiteManagerTudou;->playHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 479
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    .end local v9    # "dp":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v10

    .line 484
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SQLiteManager.readPlayHistory()"

    invoke-static {v0, v10}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    const/4 v8, 0x0

    move v0, v11

    .line 486
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 481
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 482
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static readSearchHistory()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 573
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getSearchHistory()Ljava/util/ArrayList;

    .line 576
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "select * from search_history order by id desc"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 578
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, "count":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x1e

    if-ge v1, v5, :cond_0

    .line 581
    new-instance v3, Lcom/youku/vo/SearchOfHistory;

    invoke-direct {v3}, Lcom/youku/vo/SearchOfHistory;-><init>()V

    .line 582
    .local v3, "word":Lcom/youku/vo/SearchOfHistory;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    .line 583
    add-int/lit8 v1, v1, 0x1

    .line 584
    sget-object v5, Lcom/youku/data/SQLiteManagerTudou;->searchHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1    # "count":I
    .end local v3    # "word":Lcom/youku/vo/SearchOfHistory;
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SQLiteManagerTudou.readSearchHistory()"

    invoke-static {v4, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    const/4 v0, 0x0

    .line 592
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 587
    .restart local v1    # "count":I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 169
    const-string v1, "SQLiteManagerTudou"

    const-string v2, "Tudou....SQLManager.....oncreate"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    const-string v1, "play_history"

    invoke-static {p1, v1}, Lcom/youku/data/SQLiteManagerTudou;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "search_history"

    invoke-static {p1, v1}, Lcom/youku/data/SQLiteManagerTudou;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 173
    const-string v1, "myfavorite"

    invoke-static {p1, v1}, Lcom/youku/data/SQLiteManagerTudou;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 174
    const-string v1, "myfavorite_playlist"

    invoke-static {p1, v1}, Lcom/youku/data/SQLiteManagerTudou;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 175
    const-string v1, "myattention"

    invoke-static {p1, v1}, Lcom/youku/data/SQLiteManagerTudou;->createTableList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "SQLiteManagerTudou"

    const-string v2, "SQLiteManagerTudou.onCreate()...searchHistoryManarger"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/youku/data/SQLiteManagerTudou;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    const/16 v6, 0xb

    if-ne p2, v6, :cond_0

    .line 187
    :try_start_0
    const-string v1, "ALTER TABLE play_history ADD COLUMN picUrl VARCHAR"

    .line 189
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 198
    :try_start_1
    const-string v1, "ALTER TABLE myattention ADD COLUMN time INTEGER"

    .line 200
    .restart local v1    # "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v1    # "sql":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v2, "ALTER TABLE myfavorite ADD COLUMN time INTEGER"

    .line 208
    .local v2, "sql1":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 214
    .end local v2    # "sql1":Ljava/lang/String;
    :goto_2
    :try_start_3
    const-string v3, "ALTER TABLE myattention ADD COLUMN lastItemTitle VARCHAR"

    .line 215
    .local v3, "sql2":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 221
    .end local v3    # "sql2":Ljava/lang/String;
    :goto_3
    :try_start_4
    const-string v4, "ALTER TABLE play_history ADD COLUMN playListCode VARCHAR"

    .line 222
    .local v4, "sql3":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v6, "SQLiteManagerTudou"

    const-string v7, "history add playListCode"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    .end local v4    # "sql3":Ljava/lang/String;
    :goto_4
    :try_start_5
    const-string v5, "ALTER TABLE play_history ADD COLUMN isTrailer INTEGER"

    .line 231
    .local v5, "sql4":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v6, "SQLiteManagerTudou"

    const-string v7, "history add isTrailer"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 245
    .end local v5    # "sql4":Ljava/lang/String;
    :goto_5
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SQLiteManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SQLiteManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SQLiteManagerTudou"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "history error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "SQLiteManagerTudou"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "history error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "onUpgrade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v6, "dropTableList"

    const-string v7, "play_history"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 216
    :catch_4
    move-exception v6

    goto/16 :goto_3

    .line 209
    :catch_5
    move-exception v6

    goto/16 :goto_2
.end method
