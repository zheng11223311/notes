.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;
.super Ljava/lang/Thread;
.source "FavouriteVedioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->val$list:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteFavoriteVedio(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 379
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
