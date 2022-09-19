.class Lcom/tudou/ui/fragment/MoreFragment$9;
.super Landroid/os/Handler;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1079
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1080
    .local v1, "what":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1081
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1082
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MoreFragment;->access$2600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MoreFragment;->access$2700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v2, v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$2800(Lcom/tudou/ui/fragment/MoreFragment;Ljava/util/ArrayList;)V

    .line 1091
    :goto_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 1093
    .end local v0    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1094
    return-void

    .line 1088
    .restart local v0    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MoreFragment;->access$2600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment$9;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MoreFragment;->access$2700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
