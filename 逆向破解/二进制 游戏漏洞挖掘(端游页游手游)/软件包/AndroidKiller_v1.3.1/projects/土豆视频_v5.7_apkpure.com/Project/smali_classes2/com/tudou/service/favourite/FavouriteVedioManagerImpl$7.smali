.class Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;
.super Ljava/lang/Object;
.source "FavouriteVedioManagerImpl.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

.field final synthetic val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;


# direct methods
.method constructor <init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;->this$0:Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;

    invoke-virtual {v0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 270
    new-instance v0, Lcom/youku/vo/FavouriteVideoResult;

    invoke-direct {v0}, Lcom/youku/vo/FavouriteVideoResult;-><init>()V

    .line 271
    .local v0, "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    invoke-virtual {p1, v0}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    check-cast v0, Lcom/youku/vo/FavouriteVideoResult;

    .line 272
    .restart local v0    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    iget-object v1, p0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;->val$callBack:Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V

    .line 273
    return-void
.end method
