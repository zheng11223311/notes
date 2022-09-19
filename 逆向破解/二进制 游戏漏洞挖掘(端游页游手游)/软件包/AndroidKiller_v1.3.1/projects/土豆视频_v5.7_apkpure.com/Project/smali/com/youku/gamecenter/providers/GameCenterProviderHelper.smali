.class public Lcom/youku/gamecenter/providers/GameCenterProviderHelper;
.super Ljava/lang/Object;
.source "GameCenterProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    }
.end annotation


# static fields
.field public static final existgamesUri:Landroid/net/Uri;

.field public static final giftUri:Landroid/net/Uri;

.field public static final homerecomgamesUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/gift_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->giftUri:Landroid/net/Uri;

    .line 16
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/exist_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    .line 18
    const-string v0, "content://com.youku.gamecenter.providers.GameCenterProviderForTudou/home_recom_games"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->homerecomgamesUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->giftUri:Landroid/net/Uri;

    const-string v2, "gift_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static deleteExistDialogDownloadDonelist(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_status=?"

    .line 220
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "recom_install"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public static deleteExistDialogDownloadlist(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_status=?"

    .line 188
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "recom_download"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public static deleteExistDialogDownloadlistItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_package=? AND game_status=?"

    .line 234
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "recom_download"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static deleteExistDialogInstalledlistItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 245
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_package=? AND game_status=?"

    .line 249
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "recom_launch"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public static deleteHomeRecomDownloadItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_package=?"

    .line 209
    .local v1, "where":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->homerecomgamesUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public static deleteHomeRecomDownloadlist(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->homerecomgamesUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public static getExistDialogDownloadDoneListKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "list_key"

    aput-object v1, v2, v9

    .line 159
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "game_status=?"

    .line 161
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "recom_install"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 179
    :goto_0
    return-object v5

    .line 168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 179
    goto :goto_0
.end method

.method public static getExistDialogDownloadListItemShowedCount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "game_show_times"

    aput-object v1, v2, v8

    .line 262
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "game_package=? AND game_status=?"

    .line 266
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "recom_download"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 271
    const-string v7, "3"

    .line 286
    :goto_0
    return-object v7

    .line 274
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    const-string v7, "3"

    goto :goto_0

    .line 280
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getExistDialogDownloadListKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "list_key"

    aput-object v1, v2, v9

    .line 104
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "game_status=?"

    .line 106
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "recom_download"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 124
    :goto_0
    return-object v5

    .line 113
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 124
    goto :goto_0
.end method

.method public static getHomeDialogDownloadListKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "list_key"

    aput-object v1, v2, v8

    .line 133
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->homerecomgamesUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 150
    :goto_0
    return-object v3

    .line 139
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 150
    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "gift_id"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "gift_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "package_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_package:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "game_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v2, "icon_url"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "gift_code"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v2, "using_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#ff7500\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/present/PresentInfo;->use_start_time:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/youku/gamecenter/util/CommonUtils;->cutSubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5230"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<font color=\'#ff7500\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/present/PresentInfo;->use_end_time:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/youku/gamecenter/util/CommonUtils;->cutSubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "state"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {v3}, Lcom/youku/gamecenter/present/PresentStatus;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->giftUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 48
    return-void
.end method

.method public static insertExistDialogRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "game_id"    # Ljava/lang/String;
    .param p3, "game_package"    # Ljava/lang/String;
    .param p4, "game_showtimes"    # Ljava/lang/String;
    .param p5, "game_status"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "list_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v2, "game_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v2, "game_package"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "game_show_times"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "game_status"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 504
    return-void
.end method

.method public static insertHomeRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "game_id"    # Ljava/lang/String;
    .param p3, "game_package"    # Ljava/lang/String;
    .param p4, "game_showtimes"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "list_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v2, "game_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v2, "game_package"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "game_show_times"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_HOME_RECOM_GAMES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 521
    return-void
.end method

.method public static isPresentOccupied(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->giftUri:Landroid/net/Uri;

    const-string v3, "gift_id=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v1, v7

    .line 95
    :goto_0
    return v1

    .line 90
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v7

    .line 92
    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 95
    goto :goto_0
.end method

.method public static markExistDialogGameInstalledShowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "game_show_times"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public static markExistDialogGameShowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "game_show_times"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_EXIST_GAMES_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public static markHomeRecomGameShowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "game_show_times"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_HOME_RECOM_GAMES_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method public static queryExistDialogNextRecomLaunch(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "game_status=?"

    .line 413
    .local v3, "where":Ljava/lang/String;
    const-string v5, "_id DESC"

    .line 415
    .local v5, "orderby":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "recom_launch"

    aput-object v15, v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 417
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 418
    const/4 v9, 0x0

    .line 444
    :goto_0
    return-object v9

    .line 420
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    const/4 v9, 0x0

    goto :goto_0

    .line 424
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 427
    .local v10, "id_index":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 429
    .local v11, "id_value":Ljava/lang/String;
    const-string v1, "game_package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 431
    .local v7, "gamepackage_index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "gamepackage_value":Ljava/lang/String;
    const-string v1, "game_show_times"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 435
    .local v12, "showtimes_index":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, "showtimes_value":Ljava/lang/String;
    new-instance v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;

    invoke-direct {v9}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;-><init>()V

    .line 438
    .local v9, "ge":Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    iput-object v11, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->id:Ljava/lang/String;

    .line 439
    iput-object v13, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_showtimes:Ljava/lang/String;

    .line 440
    iput-object v8, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_packagename:Ljava/lang/String;

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static queryExistDialogNextShow(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "game_status=?"

    .line 335
    .local v3, "where":Ljava/lang/String;
    const-string v5, "game_show_times"

    .line 337
    .local v5, "orderby":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "recom_download"

    aput-object v15, v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 341
    const/4 v9, 0x0

    .line 368
    :goto_0
    return-object v9

    .line 343
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    const/4 v9, 0x0

    goto :goto_0

    .line 348
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 351
    .local v10, "id_index":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, "id_value":Ljava/lang/String;
    const-string v1, "game_package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 355
    .local v7, "gamepackage_index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "gamepackage_value":Ljava/lang/String;
    const-string v1, "game_show_times"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 359
    .local v12, "showtimes_index":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 361
    .local v13, "showtimes_value":Ljava/lang/String;
    new-instance v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;

    invoke-direct {v9}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;-><init>()V

    .line 362
    .local v9, "ge":Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    iput-object v11, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->id:Ljava/lang/String;

    .line 363
    iput-object v13, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_showtimes:Ljava/lang/String;

    .line 364
    iput-object v8, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_packagename:Ljava/lang/String;

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static queryExistDialogNextShowInstallDone(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "game_status=?"

    .line 293
    .local v3, "where":Ljava/lang/String;
    const-string v5, "game_show_times"

    .line 295
    .local v5, "orderby":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->existgamesUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "recom_install"

    aput-object v15, v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 299
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 300
    const/4 v9, 0x0

    .line 328
    :goto_0
    return-object v9

    .line 303
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    const/4 v9, 0x0

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 311
    .local v10, "id_index":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, "id_value":Ljava/lang/String;
    const-string v1, "game_package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 315
    .local v7, "gamepackage_index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "gamepackage_value":Ljava/lang/String;
    const-string v1, "game_show_times"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 319
    .local v12, "showtimes_index":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, "showtimes_value":Ljava/lang/String;
    new-instance v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;

    invoke-direct {v9}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;-><init>()V

    .line 322
    .local v9, "ge":Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    iput-object v11, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->id:Ljava/lang/String;

    .line 323
    iput-object v13, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_showtimes:Ljava/lang/String;

    .line 324
    iput-object v8, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_packagename:Ljava/lang/String;

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static queryHomeRecomNextShow(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "game_show_times"

    .line 376
    .local v5, "orderby":Ljava/lang/String;
    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->homerecomgamesUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 406
    :goto_0
    return-object v2

    .line 381
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 388
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 389
    .local v10, "id_index":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, "id_value":Ljava/lang/String;
    const-string v1, "game_package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 393
    .local v7, "gamepackage_index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "gamepackage_value":Ljava/lang/String;
    const-string v1, "game_show_times"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 397
    .local v12, "showtimes_index":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "showtimes_value":Ljava/lang/String;
    new-instance v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;

    invoke-direct {v9}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;-><init>()V

    .line 400
    .local v9, "ge":Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    iput-object v11, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->id:Ljava/lang/String;

    .line 401
    iput-object v13, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_showtimes:Ljava/lang/String;

    .line 402
    iput-object v8, v9, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_packagename:Ljava/lang/String;

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 406
    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "gift_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "package_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_package:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "game_name"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "icon_url"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "gift_code"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "using_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/youku/gamecenter/present/PresentInfo;->use_start_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5230"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/present/PresentInfo;->use_end_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "state"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {v3}, Lcom/youku/gamecenter/present/PresentStatus;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->giftUri:Landroid/net/Uri;

    const-string v3, "gift_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    return-void
.end method
