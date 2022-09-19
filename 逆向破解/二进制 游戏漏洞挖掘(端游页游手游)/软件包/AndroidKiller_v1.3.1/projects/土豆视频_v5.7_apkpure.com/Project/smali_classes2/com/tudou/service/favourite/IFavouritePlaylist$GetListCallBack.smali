.class public Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;
.super Ljava/lang/Object;
.source "IFavouritePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/favourite/IFavouritePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetListCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public onSucess(Lcom/youku/vo/FavouritePlaylistResult;I)V
    .locals 0
    .param p1, "favouritePlaylistResult"    # Lcom/youku/vo/FavouritePlaylistResult;
    .param p2, "dataType"    # I

    .prologue
    .line 65
    return-void
.end method
