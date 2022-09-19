.class Lcom/tudou/detail/DetailModel$LoaderTask$18;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->bindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$detail:Lcom/youku/vo/NewVideoDetail;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$success:Z

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-boolean p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$success:Z

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$id:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 1027
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1028
    iget-boolean v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$success:Z

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$18;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 1030
    :cond_0
    return-void
.end method
