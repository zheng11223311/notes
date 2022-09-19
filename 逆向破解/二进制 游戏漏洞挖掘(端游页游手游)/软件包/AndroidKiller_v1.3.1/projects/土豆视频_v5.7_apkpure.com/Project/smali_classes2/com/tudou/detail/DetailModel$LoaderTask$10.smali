.class Lcom/tudou/detail/DetailModel$LoaderTask$10;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindComments(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$tHots:Lcom/tudou/detail/vo/CommentsInfo;

.field final synthetic val$tNews:Lcom/tudou/detail/vo/CommentsInfo;

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$vid:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tNews:Lcom/tudou/detail/vo/CommentsInfo;

    iput-object p5, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 631
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 632
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$vid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$10;->val$tHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindComments(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 635
    :cond_0
    return-void
.end method
