.class Lcom/tudou/detail/DetailModel$LoaderTask$15;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindVideoFeature(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->val$vid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 826
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 827
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 828
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$15;->val$vid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindVideoFeature(ZLjava/lang/String;Lcom/tudou/detail/vo/DetailFeature;)V

    .line 830
    :cond_0
    return-void
.end method
