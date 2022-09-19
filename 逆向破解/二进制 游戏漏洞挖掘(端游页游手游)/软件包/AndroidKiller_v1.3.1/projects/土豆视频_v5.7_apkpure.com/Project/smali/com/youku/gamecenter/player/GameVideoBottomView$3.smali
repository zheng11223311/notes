.class Lcom/youku/gamecenter/player/GameVideoBottomView$3;
.super Ljava/lang/Object;
.source "GameVideoBottomView.java"

# interfaces
.implements Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$3;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$3;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    invoke-static {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->access$600(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView$3;->this$0:Lcom/youku/gamecenter/player/GameVideoBottomView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mShowing:Z

    .line 240
    return-void
.end method
