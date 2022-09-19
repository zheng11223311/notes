.class Lcom/tudou/adapter/SubscribeAdapter$14$1;
.super Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$14;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$14;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$14$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$14;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$14$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$14;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$14;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$600(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x4943c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 843
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$14$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$14;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$14;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$AlbumInfo;->isFavourite:Z

    .line 832
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$14$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$14;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$14;->val$favour:Landroid/widget/ImageView;

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$14$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$14;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$14;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$600(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x4943b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 835
    return-void
.end method
