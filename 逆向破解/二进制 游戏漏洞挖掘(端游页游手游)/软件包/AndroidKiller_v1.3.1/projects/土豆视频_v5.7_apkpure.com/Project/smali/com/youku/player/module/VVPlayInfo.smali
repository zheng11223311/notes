.class public Lcom/youku/player/module/VVPlayInfo;
.super Ljava/lang/Object;
.source "VVPlayInfo.java"


# instance fields
.field private albumID:Ljava/lang/String;

.field private albumItemLength:Ljava/lang/String;

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/player/module/VVPlayInfo;->albumID:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumItemLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/youku/player/module/VVPlayInfo;->albumItemLength:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/youku/player/module/VVPlayInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumID(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/player/module/VVPlayInfo;->albumID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setAlbumItemLength(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumItemLength"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/player/module/VVPlayInfo;->albumItemLength:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/player/module/VVPlayInfo;->itemId:Ljava/lang/String;

    .line 22
    return-void
.end method
