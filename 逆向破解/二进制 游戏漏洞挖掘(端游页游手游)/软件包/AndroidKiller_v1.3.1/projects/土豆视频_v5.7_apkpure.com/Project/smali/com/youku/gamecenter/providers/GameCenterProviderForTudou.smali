.class public Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;
.super Landroid/content/ContentProvider;
.source "GameCenterProviderForTudou.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;
    }
.end annotation


# static fields
.field public static final COL_NAME_EXISTGAME_GAME_ID:Ljava/lang/String; = "game_id"

.field public static final COL_NAME_EXISTGAME_GAME_PACKAGE:Ljava/lang/String; = "game_package"

.field public static final COL_NAME_EXISTGAME_GAME_SHOWTIMES:Ljava/lang/String; = "game_show_times"

.field public static final COL_NAME_EXISTGAME_GAME_STATUS:Ljava/lang/String; = "game_status"

.field public static final COL_NAME_EXISTGAME_ID:Ljava/lang/String; = "_id"

.field public static final COL_NAME_EXISTGAME_KEY:Ljava/lang/String; = "list_key"

.field public static final COL_NAME_GAME_NAME:Ljava/lang/String; = "game_name"

.field public static final COL_NAME_GIFT_CODE:Ljava/lang/String; = "gift_code"

.field public static final COL_NAME_GIFT_ID:Ljava/lang/String; = "gift_id"

.field public static final COL_NAME_GIFT_NAME:Ljava/lang/String; = "gift_name"

.field public static final COL_NAME_HOME_RECOM_GAME_ID:Ljava/lang/String; = "game_id"

.field public static final COL_NAME_HOME_RECOM_GAME_PACKAGE:Ljava/lang/String; = "game_package"

.field public static final COL_NAME_HOME_RECOM_GAME_SHOWTIMES:Ljava/lang/String; = "game_show_times"

.field public static final COL_NAME_HOME_RECOM_ID:Ljava/lang/String; = "_id"

.field public static final COL_NAME_HOME_RECOM_KEY:Ljava/lang/String; = "list_key"

.field public static final COL_NAME_ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final COL_NAME_ID:Ljava/lang/String; = "_id"

.field public static final COL_NAME_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COL_NAME_STATE:Ljava/lang/String; = "state"

.field public static final COL_NAME_USING_TIME:Ljava/lang/String; = "using_time"

.field public static final CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

.field public static final CONTENT_HOME_RECOM_GAMES_URI:Landroid/net/Uri;

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.youku.gamecenter.providers.GameCenterProviderForTudou"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_EXIST_GAMES_STRING:Ljava/lang/String; = "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/exist_games"

.field public static final CONTENT_URI_HOME_RECOM_GAMES_STRING:Ljava/lang/String; = "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/home_recom_games"

.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/gift_package"

.field private static final DATABASE_NAME:Ljava/lang/String; = "game_center.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final EXIST_GAMES:I = 0x2

.field private static final FULL_CLASS_NAME:Ljava/lang/String; = "com.youku.gamecenter.providers.GameCenterProviderForTudou"

.field private static final GIFT_PACKAGE:I = 0x1

.field private static final HOME_RECOM_GAMES:I = 0x3

.field private static final TABLE_EXIST_GAMES_NAME:Ljava/lang/String; = "exist_games"

.field private static final TABLE_GIFT_PACKAGE_NAME:Ljava/lang/String; = "gift_package"

.field private static final TABLE_HOME_RECOM_GAMES_NAME:Ljava/lang/String; = "home_recom_games"

.field private static final TAG:Ljava/lang/String; = "GameCenterProvider"

.field public static final TYPE_RECOM_DOWNLOAD:Ljava/lang/String; = "recom_download"

.field public static final TYPE_RECOM_INSTALL:Ljava/lang/String; = "recom_install"

.field public static final TYPE_RECOM_LAUNCH:Ljava/lang/String; = "recom_launch"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/gift_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/exist_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/home_recom_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_HOME_RECOM_GAMES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    .line 247
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 129
    const-string v2, "GameCenterProvider"

    const-string v3, "delete value "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 134
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GameCenterProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete - error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 136
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "gift_package"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "exist_games"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 142
    goto :goto_1

    .line 144
    :pswitch_2
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "home_recom_games"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 146
    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 229
    const-string v1, "GameCenterProvider"

    const-string v2, "getType "

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameCenterProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType - error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "vnd.android.cursor.dir/com.youku.gamecenter.providers.GameCenterProviderForTudou"

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 236
    :pswitch_0
    :try_start_1
    const-string/jumbo v1, "vnd.android.cursor.dir/com.youku.gamecenter.providers.GameCenterProviderForTudou"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 99
    const-string v1, "GameCenterProvider"

    const-string v4, "insert value "

    invoke-static {v1, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "id":J
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameCenterProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert - error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 106
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "gift_package"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "exist_games"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 110
    goto :goto_1

    .line 112
    :pswitch_2
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "home_recom_games"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 113
    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 82
    const-string v1, "GameCenterProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->getInstace(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou$DataBaseHeper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.youku.gamecenter.providers.GameCenterProviderForTudou"

    const-string v3, "gift_package"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.youku.gamecenter.providers.GameCenterProviderForTudou"

    const-string v3, "exist_games"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v1, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.youku.gamecenter.providers.GameCenterProviderForTudou"

    const-string v3, "home_recom_games"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return v5

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameCenterProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate - error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "GameCenterProvider"

    const-string v1, "query value "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v8, 0x0

    .line 203
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    move-exception v9

    .line 220
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "GameCenterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query - error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 205
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "gift_package"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 207
    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "exist_games"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "home_recom_games"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 215
    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 163
    const-string v2, "GameCenterProvider"

    const-string/jumbo v3, "update value "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GameCenterProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update - error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 170
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "gift_package"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 185
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "exist_games"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 176
    goto :goto_1

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "home_recom_games"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 180
    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
