.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;
.super Ljava/lang/Thread;
.source "FavouritePlaylistManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->val$list:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteFavoritePlaylist(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 462
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
