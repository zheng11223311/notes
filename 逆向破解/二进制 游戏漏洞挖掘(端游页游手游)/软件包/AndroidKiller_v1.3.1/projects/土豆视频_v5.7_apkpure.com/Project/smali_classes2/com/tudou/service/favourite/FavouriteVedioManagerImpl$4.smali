.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;
.super Ljava/lang/Thread;
.source "FavouriteVedioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

.field final synthetic val$itemCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$itemCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$itemCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteFavoriteVedio(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 159
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
