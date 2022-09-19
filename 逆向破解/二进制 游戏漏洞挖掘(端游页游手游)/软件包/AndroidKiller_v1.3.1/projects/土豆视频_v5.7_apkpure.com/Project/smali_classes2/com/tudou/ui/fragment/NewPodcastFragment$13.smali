.class Lcom/tudou/ui/fragment/NewPodcastFragment$13;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "NewPodcastFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->onAttenclick()V
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
    .line 1191
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    .line 1196
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    return-void
.end method
