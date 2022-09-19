.class Lcom/tudou/ui/fragment/CachingFragment$17;
.super Ljava/lang/Object;
.source "CachingFragment.java"

# interfaces
.implements Lcom/tudou/ui/fragment/CachingFragment$OnAllPauseOrStartFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CachingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/tudou/ui/fragment/CachingFragment$17;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$17;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$900(Lcom/tudou/ui/fragment/CachingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$17;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$000(Lcom/tudou/ui/fragment/CachingFragment;)V

    .line 637
    iget-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$17;->this$0:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CachingFragment;->access$100(Lcom/tudou/ui/fragment/CachingFragment;)Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->sendEmptyMessage(I)Z

    .line 638
    return-void
.end method
