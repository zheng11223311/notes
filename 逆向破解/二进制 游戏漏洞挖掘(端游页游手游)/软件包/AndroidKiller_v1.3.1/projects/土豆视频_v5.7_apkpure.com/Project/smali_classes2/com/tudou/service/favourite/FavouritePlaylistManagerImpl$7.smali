.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$7;
.super Ljava/lang/Thread;
.source "FavouritePlaylistManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->deleteLocalFavrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$7;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->deleteAllFavoritePlaylist()V

    .line 308
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 309
    return-void
.end method
