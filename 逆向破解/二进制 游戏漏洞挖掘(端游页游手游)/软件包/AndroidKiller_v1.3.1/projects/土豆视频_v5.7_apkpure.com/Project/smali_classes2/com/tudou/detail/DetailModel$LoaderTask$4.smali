.class Lcom/tudou/detail/DetailModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 362
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$400(Lcom/tudou/detail/DetailModel$LoaderTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$4;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$500(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindSelectnessBar(Ljava/lang/String;Lcom/tudou/detail/vo/Interactive;)V

    .line 369
    :cond_0
    return-void
.end method
