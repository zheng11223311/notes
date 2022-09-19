.class Lcom/tudou/guide/GuideVideoActivity$2$1;
.super Ljava/lang/Object;
.source "GuideVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/GuideVideoActivity$2;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/guide/GuideVideoActivity$2;


# direct methods
.method constructor <init>(Lcom/tudou/guide/GuideVideoActivity$2;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tudou/guide/GuideVideoActivity$2$1;->this$1:Lcom/tudou/guide/GuideVideoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2$1;->this$1:Lcom/tudou/guide/GuideVideoActivity$2;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    invoke-virtual {v0}, Lcom/tudou/guide/GuideVideoActivity;->finish()V

    .line 79
    iget-object v0, p0, Lcom/tudou/guide/GuideVideoActivity$2$1;->this$1:Lcom/tudou/guide/GuideVideoActivity$2;

    iget-object v0, v0, Lcom/tudou/guide/GuideVideoActivity$2;->this$0:Lcom/tudou/guide/GuideVideoActivity;

    invoke-virtual {v0, v1, v1}, Lcom/tudou/guide/GuideVideoActivity;->overridePendingTransition(II)V

    .line 80
    return-void
.end method
