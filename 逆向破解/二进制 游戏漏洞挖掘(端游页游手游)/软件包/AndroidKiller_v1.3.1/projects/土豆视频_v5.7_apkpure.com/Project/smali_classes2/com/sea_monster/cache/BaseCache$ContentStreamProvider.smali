.class Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements Lcom/sea_monster/cache/BaseCache$InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/cache/BaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentStreamProvider"
.end annotation


# instance fields
.field final mContent:Landroid/net/Uri;

.field final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;->mContent:Landroid/net/Uri;

    .line 206
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;->mResolver:Landroid/content/ContentResolver;

    .line 207
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;->mContent:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "_data"

    aput-object v3, v2, v11

    const-string v3, "_id = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v8, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v5

    .line 223
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "path":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v10, "stream":Ljava/io/FileInputStream;
    move-object v5, v10

    .line 233
    goto :goto_0

    .line 234
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
