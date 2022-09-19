.class Lcom/tudou/detail/DetailModel$LoaderTask$13;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindGoods(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$tGoods:Lcom/tudou/detail/vo/GoodsInfo;

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 760
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 761
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 762
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$13;->val$tGoods:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindGoodsInfo(ZLcom/tudou/detail/vo/GoodsInfo;)V

    .line 764
    :cond_0
    return-void
.end method
