.class Lcom/tudou/ui/fragment/NewPodcastFragment$12;
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
    .line 1145
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->showCacelErrorToast(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->isatt:Z

    .line 1149
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$12;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/NewPodcastFragment$12$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/NewPodcastFragment$12$1;-><init>(Lcom/tudou/ui/fragment/NewPodcastFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    return-void
.end method
