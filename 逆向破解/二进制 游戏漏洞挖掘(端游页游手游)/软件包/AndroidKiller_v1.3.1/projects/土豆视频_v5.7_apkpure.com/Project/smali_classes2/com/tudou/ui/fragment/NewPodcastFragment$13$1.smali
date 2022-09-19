.class Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment$13;->onSucess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$13;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment$13;)V
    .locals 0

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$13;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$13;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->subedProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    const v0, 0x7f0d01dd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1204
    iget-object v0, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$13$1;->this$1:Lcom/tudou/ui/fragment/NewPodcastFragment$13;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment$13;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/NewPodcastFragment;->user_atten:Landroid/widget/ImageView;

    const v1, 0x7f020851

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1206
    return-void
.end method
