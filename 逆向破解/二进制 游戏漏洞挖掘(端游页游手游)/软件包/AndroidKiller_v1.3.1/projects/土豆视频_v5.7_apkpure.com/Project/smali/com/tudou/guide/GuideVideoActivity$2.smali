.class Lcom/tudou/guide/GuideVideoActivity$2;
.super Ljava/lang/Object;
.source "GuideVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/GuideVideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/GuideVideoActivity;

.field final synthetic val$enterin:Landroid/view/animation/Animation;

.field final synthetic val$replayin:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/tudou/guide/GuideVideoActivity;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iput-object p2, p0, Lcom/tudou/guide/GuideVideoActivity$2;->val$enterin:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/tudou/guide/GuideVideoActivity$2;->val$replayin:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity;->root:Landroid/view/View;

    new-instance v1, Lcom/tudou/guide/GuideVideoActivity$2$1;

    invoke-direct {v1, p0}, Lcom/tudou/guide/GuideVideoActivity$2$1;-><init>(Lcom/tudou/guide/GuideVideoActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity;->enter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity;->enter:Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/guide/GuideVideoActivity$2;->val$enterin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity;->replay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity;->replay:Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/guide/GuideVideoActivity$2;->val$replayin:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void
.end method
