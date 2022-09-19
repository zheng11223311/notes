.class Lcom/youku/gamecenter/player/GameVideoTopView$2;
.super Ljava/lang/Object;
.source "GameVideoTopView.java"

# interfaces
.implements Lcom/youku/gamecenter/player/GameVideoTopView$AnimationActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/player/GameVideoTopView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/player/GameVideoTopView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/player/GameVideoTopView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoTopView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoTopView$2;->this$0:Lcom/youku/gamecenter/player/GameVideoTopView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/player/GameVideoTopView;->setVisibility(I)V

    .line 76
    return-void
.end method
