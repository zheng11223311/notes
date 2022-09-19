.class Lcom/tudou/adapter/SubscribeAdapter$10$2;
.super Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/SubscribeAdapter$10;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$10;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$10$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$10;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$10$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$10;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$10;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$600(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x4943e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$10$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$10;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$item:Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/vo/SubscribeBean$UserInfo$ItemInfos$Items$Data;->isFavourite:Z

    .line 682
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$10$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$10;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$10;->val$favour:Landroid/widget/ImageView;

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$10$2;->this$1:Lcom/tudou/adapter/SubscribeAdapter$10;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$10;->this$0:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/SubscribeAdapter;->access$600(Lcom/tudou/adapter/SubscribeAdapter;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x4943d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 684
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 685
    return-void
.end method
