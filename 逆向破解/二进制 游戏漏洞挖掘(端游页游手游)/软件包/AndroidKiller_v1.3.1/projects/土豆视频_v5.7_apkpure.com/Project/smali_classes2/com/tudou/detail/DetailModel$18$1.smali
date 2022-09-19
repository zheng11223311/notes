.class Lcom/tudou/detail/DetailModel$18$1;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$18;->onFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$18;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$18;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$18$1;->this$1:Lcom/tudou/detail/DetailModel$18;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$18$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$18$1;->this$1:Lcom/tudou/detail/DetailModel$18;

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$18;->val$r:Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$18$1;->this$1:Lcom/tudou/detail/DetailModel$18;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$18;->val$detail:Lcom/youku/vo/NewVideoDetail;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$18$1;->val$uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;->onSetAttentionComplete(Lcom/youku/vo/NewVideoDetail;ZZLjava/lang/String;)V

    .line 2074
    return-void
.end method
