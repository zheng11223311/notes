.class Lcom/tudou/detail/DetailModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindHD(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$annos:Ljava/util/ArrayList;

.field final synthetic val$bottoms:Ljava/util/ArrayList;

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

.field final synthetic val$tops:Ljava/util/ArrayList;

.field final synthetic val$vid:Ljava/lang/String;

.field final synthetic val$votes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$vid:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$tops:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$bottoms:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$votes:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$annos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 727
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 728
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 729
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$vid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$tops:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$bottoms:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$votes:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask$12;->val$annos:Ljava/util/ArrayList;

    invoke-interface/range {v0 .. v6}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindHD(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 731
    :cond_0
    return-void
.end method
