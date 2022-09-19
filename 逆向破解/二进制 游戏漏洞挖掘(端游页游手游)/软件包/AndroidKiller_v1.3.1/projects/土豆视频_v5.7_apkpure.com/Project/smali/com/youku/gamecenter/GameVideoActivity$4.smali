.class Lcom/youku/gamecenter/GameVideoActivity$4;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/util/UIUtils$AnimationActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameVideoActivity;->hideGameLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$4;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$4;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$000(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void
.end method
