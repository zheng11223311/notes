.class public Lcom/youku/gamecenter/outer/GamePlayersProvider;
.super Landroid/content/ContentProvider;
.source "GamePlayersProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;
    }
.end annotation


# static fields
.field public static final COL_NAME_ADDRESS:Ljava/lang/String; = "address"

.field public static final COL_NAME_IS_NEW_USER:Ljava/lang/String; = "isNewUser"

.field public static final COL_NAME_IS_YOUKU_ACCOUNT:Ljava/lang/String; = "isYoukuAccount"

.field public static final COL_NAME_NICK:Ljava/lang/String; = "nick"

.field public static final COL_NAME_PASSWORD:Ljava/lang/String; = "password"

.field public static final COL_NAME_SESSION:Ljava/lang/String; = "session"

.field public static final COL_NAME_SEX:Ljava/lang/String; = "sex"

.field public static final COL_NAME_STATE:Ljava/lang/String; = "state"

.field public static final COL_NAME_UID:Ljava/lang/String; = "uid"

.field public static final COL_NAME_USERNAME:Ljava/lang/String; = "userName"

.field public static final COL_NAME_VERIFY_NO:Ljava/lang/String; = "verifyNo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.youku.gamecenter.outer.GamePlayersProvider"

.field private static final DATABASE_NAME:Ljava/lang/String; = "game_players.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final PLAYERS:I = 0x1

.field public static final PROPERTIES:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "players"

.field public static final TABLE_PLAYERS_NAME:Ljava/lang/String; = "players"

.field public static final TABLE_PROPERTIES_NAME:Ljava/lang/String; = "properties"

.field private static final TAG:Ljava/lang/String; = "PlayersProvider"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mMatcher:Landroid/content/UriMatcher;

.field private mOpenHelper:Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 47
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 205
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 97
    const-string v2, "PlayersProvider"

    const-string v3, "delete value "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 102
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
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

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PlayersProvider"

    const-string v3, "delete error!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 104
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "players"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/GamePlayersProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "properties"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 109
    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 188
    const-string v1, "PlayersProvider"

    const-string v2, "getType "

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 196
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

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayersProvider"

    const-string v2, "getType error!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 194
    :pswitch_0
    :try_start_1
    const-string/jumbo v1, "vnd.android.cursor.dir/com.youku.gamecenter.outer.GamePlayersProvider"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    const-string v1, "PlayersProvider"

    const-string v4, "insert value "

    invoke-static {v1, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-wide/16 v2, 0x0

    .line 74
    .local v2, "id":J
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 82
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

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlayersProvider"

    const-string v4, "insert error!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 76
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "players"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/GamePlayersProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "properties"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 80
    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 52
    const-string v0, "PlayersProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;

    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/GamePlayersProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mOpenHelper:Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;

    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mOpenHelper:Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/outer/GamePlayersProvider$DataBaseHeper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.youku.gamecenter.outer.GamePlayersProvider"

    const-string v2, "players"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.youku.gamecenter.outer.GamePlayersProvider"

    const-string v2, "properties"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "PlayersProvider"

    const-string v1, "query value "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v8, 0x0

    .line 164
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
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

    .line 177
    :catch_0
    move-exception v9

    .line 178
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "PlayersProvider"

    const-string v1, "query error!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 166
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "players"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "properties"

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

    .line 172
    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 128
    const-string v2, "PlayersProvider"

    const-string/jumbo v3, "update value "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 142
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

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PlayersProvider"

    const-string/jumbo v3, "update error!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 135
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "players"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/outer/GamePlayersProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, p0, Lcom/youku/gamecenter/outer/GamePlayersProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "properties"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 140
    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
