.class Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;
.super Ljava/lang/Thread;
.source "FavouritePlaylistManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->addToLocalFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

.field final synthetic val$coverPicUrl:Ljava/lang/String;

.field final synthetic val$itemCode:Ljava/lang/String;

.field final synthetic val$lastItemCode:Ljava/lang/String;

.field final synthetic val$lastItemTitle:Ljava/lang/String;

.field final synthetic val$playTimes:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$update_time:Ljava/lang/String;

.field final synthetic val$vediocount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->this$0:Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$itemCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$playTimes:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$coverPicUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$update_time:Ljava/lang/String;

    iput-object p7, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$vediocount:Ljava/lang/String;

    iput-object p8, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$lastItemCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$lastItemTitle:Ljava/lang/String;

    iput-object p10, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 184
    new-instance v1, Lcom/youku/vo/FavouritePlaylist;

    invoke-direct {v1}, Lcom/youku/vo/FavouritePlaylist;-><init>()V

    .line 185
    .local v1, "fp":Lcom/youku/vo/FavouritePlaylist;
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$itemCode:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$title:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->title:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$playTimes:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->playTimes:Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$coverPicUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->coverPicUrl:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$update_time:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->updateDate:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$vediocount:Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/FavouritePlaylist;->itemsCount:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/youku/vo/FavouritePlaylist$FirstItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/youku/vo/FavouritePlaylist$FirstItem;-><init>(Lcom/youku/vo/FavouritePlaylist;)V

    .line 192
    .local v0, "fi":Lcom/youku/vo/FavouritePlaylist$FirstItem;
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$lastItemCode:Ljava/lang/String;

    iput-object v3, v0, Lcom/youku/vo/FavouritePlaylist$FirstItem;->icode:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$lastItemTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/youku/vo/FavouritePlaylist$FirstItem;->title:Ljava/lang/String;

    .line 194
    iput-object v0, v1, Lcom/youku/vo/FavouritePlaylist;->firstItem:Lcom/youku/vo/FavouritePlaylist$FirstItem;

    .line 195
    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->addToFavoritePlaylist(Lcom/youku/vo/FavouritePlaylist;)Z

    move-result v2

    .line 196
    .local v2, "resu":Z
    if-eqz v2, :cond_0

    .line 197
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 198
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    iget-object v4, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->val$callBack:Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    const-string v4, "\u60a8\u5df2\u6536\u85cf\u8be5\u8c46\u5355"

    invoke-virtual {v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
