.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;
.super Ljava/lang/Object;
.source "ClassifyHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$200(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Lcom/tudou/adapter/ClassifyHomeAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    .local v0, "addLauncherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/ChannelListInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 212
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->addShotCutChannel(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
