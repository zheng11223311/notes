.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$6;
.super Ljava/lang/Thread;
.source "FavouriteVedioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->deleteLocalFavrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$6;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->deleteAllFavoriteVedio()V

    .line 235
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 236
    return-void
.end method
