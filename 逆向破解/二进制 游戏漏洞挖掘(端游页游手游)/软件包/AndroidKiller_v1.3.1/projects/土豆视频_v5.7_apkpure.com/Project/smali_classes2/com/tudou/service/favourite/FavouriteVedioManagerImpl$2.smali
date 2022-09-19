.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;
.super Ljava/lang/Thread;
.source "FavouriteVedioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->addToFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

.field final synthetic val$itemCode:Ljava/lang/String;

.field final synthetic val$picurl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$totaltime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$itemCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$picurl:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$totaltime:Ljava/lang/String;

    iput-object p6, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    new-instance v1, Lcom/youku/vo/FavouriteVideo;

    invoke-direct {v1}, Lcom/youku/vo/FavouriteVideo;-><init>()V

    .line 107
    .local v1, "video":Lcom/youku/vo/FavouriteVideo;
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$itemCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$title:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->title:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$picurl:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/FavouriteVideo;->picUrl_16_9:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$totaltime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/FavouriteVideo;->totalTime:I

    .line 111
    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->addToFavoriteVedio(Lcom/youku/vo/FavouriteVideo;)Z

    move-result v0

    .line 112
    .local v0, "resu":Z
    if-eqz v0, :cond_0

    .line 113
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 114
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    iget-object v3, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    const-string v3, "\u60a8\u5df2\u6536\u85cf\u8be5\u89c6\u9891"

    invoke-virtual {v2, v3}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
