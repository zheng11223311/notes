.class Lcom/tudou/detail/DetailModel$11;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getVideoListAsyn(Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

.field final synthetic val$tVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;Lcom/tudou/detail/vo/VideoList;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$11;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$11;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$11;->val$tVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$11;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$11;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$11;->val$tVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$OnVideoListGettedListener;->onVideoListGetted(ZLcom/tudou/detail/vo/VideoList;)V

    .line 1692
    :cond_0
    return-void
.end method
