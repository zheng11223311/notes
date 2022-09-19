.class Lcom/tudou/ui/fragment/NewPodcastFragment$2;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->updateTabNodataByTabclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$2;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    const-string v0, "onClick"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$2;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$000(Lcom/tudou/ui/fragment/NewPodcastFragment;)V

    .line 388
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$2;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$100(Lcom/tudou/ui/fragment/NewPodcastFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0
.end method
